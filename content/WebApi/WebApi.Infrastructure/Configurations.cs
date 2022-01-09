using System;
using System.Net.Http;
using System.Threading.Tasks;

using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

using Polly;
using Polly.Contrib.WaitAndRetry;
using Polly.Extensions.Http;

#if (!nodatabase)
using Herald.EntityFramework;
using Microsoft.EntityFrameworkCore;
using WebApi.Infrastructure.Persistance;
using WebApi.Infrastructure.Repositories;
using WebApi.Application.Infrastructure.Repositories;
#endif
#if (!noqueue)
using Herald.MessageQueue.RabbitMq;
#endif
#if (!noexternalapi)
using Refit;
using WebApi.Application.Infrastructure.WebServices;
#endif

namespace WebApi.Infrastructure
{
    public static class Configurations
    {
#if (!nodatabase)
        public static IHost DoEFMigration(this IHost host)
        {
            using (var scope = host.Services.CreateScope())
            {
                var database = scope.ServiceProvider.GetRequiredService<DbContext>().Database;

                if (database.IsRelational())
                {
                    database.Migrate();
                }

                return host;
            }
        }

        public static IServiceCollection AddRepositories(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddDbContext<EntityContext>(options =>
            {
                options.UseLazyLoadingProxies();
                options.UseNpgsql(configuration.GetConnectionString("DefaultConnection")).UseSnakeCaseNamingConvention();
            });

            services.AddHeraldEntityFramework<EntityContext>();

            services.AddTransient<ISomethingRepository, SomethingRepository>();

            return services;
        }
#endif

#if (!noqueue)
        public static IServiceCollection AddQueues(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddMessageQueueRabbitMq(setup => configuration.GetSection("MessageQueueOptions").Bind(setup));

            return services;
        }
#endif

#if (!noexternalapi)
        public static IServiceCollection AddWebServices(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddRefitClient<ICepService>(configuration);

            return services;
        }

        public static IHttpClientBuilder AddRefitClient<T>(this IServiceCollection services, IConfiguration configuration, RefitSettings settings = null) where T : class
        {
            var typeName = typeof(T).Name;

            RequiredConfiguration<T>(configuration, $"WebServices:{typeName}:InitialDelay");
            RequiredConfiguration<T>(configuration, $"WebServices:{typeName}:RetryCount");
            RequiredConfiguration<T>(configuration, $"WebServices:{typeName}:Url");

            int.TryParse(configuration[$"WebServices:{typeName}:InitialDelay"], out int initialDelay);
            int.TryParse(configuration[$"WebServices:{typeName}:RetryCount"], out int retryCount);

            var retryDelay = Backoff.ExponentialBackoff(TimeSpan.FromSeconds(initialDelay), retryCount);

            return services.AddRefitClient<T>(settings)
                    .ConfigureHttpClient(c => c.BaseAddress = new Uri(configuration[$"WebServices:{typeName}:Url"]))
                    .ConfigurePrimaryHttpMessageHandler(h => new HttpClientHandler
                    {
                        ServerCertificateCustomValidationCallback = HttpClientHandler.DangerousAcceptAnyServerCertificateValidator
                    })
                    .AddPolicyHandler((services, request) => HttpPolicyExtensions.HandleTransientHttpError().OrResult(r => !r.IsSuccessStatusCode)
                    .WaitAndRetryAsync(retryDelay, onRetry: (response, timespan, retryAttempt, context) =>
                    {
                        var logger = services.GetRequiredService<ILogger<ICepService>>();
                        var content = request?.Content?.ReadAsStringAsync()?.Result;
                        logger.LogWarning($"Delaying request {request?.Method?.Method} {request?.RequestUri?.OriginalString} for {timespan.TotalSeconds} seconds then making retry {retryAttempt} - statuscode {response?.Result?.StatusCode} - content {content}");
                    }))
                    .AddPolicyHandler((services, request) => HttpPolicyExtensions.HandleTransientHttpError()
                    .FallbackAsync(
                        (response, context, cancellationToken) => Task.FromResult(response.Result),
                        (context, cancellationToken) =>
                        {
                            var logger = services.GetRequiredService<ILogger<ICepService>>();
                            logger.LogError(context.Exception, $"Error while processing request {request?.Method?.Method} {request?.RequestUri?.OriginalString}");
                            if (context.Exception != null) throw context.Exception;
                            return Task.CompletedTask;
                        }
                    ));
        }

        private static void RequiredConfiguration<T>(IConfiguration configuration, string configurationPath) where T : class
        {
            var _initialDelay = configuration[configurationPath];

            if (string.IsNullOrEmpty(_initialDelay))
            {
                throw new ArgumentNullException(configurationPath);
            }
        }
#endif

    }
}
