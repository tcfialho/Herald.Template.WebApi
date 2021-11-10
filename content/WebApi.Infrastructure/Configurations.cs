﻿using System;
using System.Net.Http;

using Herald.MessageQueue.RabbitMq;

using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Diagnostics;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;

using Newtonsoft.Json;

using Refit;

using WebApi.Application.Infrastructure.Repositories;
using WebApi.Application.Infrastructure.WebServices;
using WebApi.Infrastructure.Persistance;
using WebApi.Infrastructure.Repositories;
namespace WebApi.Infrastructure
{
    public static class Configurations
    {
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
                options.UseChangeTrackingProxies();
                options.UseNpgsql(configuration.GetConnectionString("DefaultConnection")).UseSnakeCaseNamingConvention();
            });

            services.AddHeraldEntityFramework<EntityContext>();

            services.AddTransient<ISomethingRepository, SomethingRepository>();

            return services;
        }

        public static IServiceCollection AddWebServices(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddRefitService<ICepService>(configuration["WebServices:ICepService"]);

            return services;
        }

        public static IServiceCollection AddQueues(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddMessageQueueRabbitMq(setup => configuration.GetSection("MessageQueueOptions").Bind(setup));

            return services;
        }

        private static IServiceCollection AddRefitService<TService>(this IServiceCollection services, string baseAddress, bool disableServerCertificateValidator = false, DelegatingHandler delegatingHandler = null, JsonSerializerSettings jsonSerializerSettings = null) where TService : class
        {
            RefitSettings refitSettings = null;

            if (jsonSerializerSettings != null)
            {
                refitSettings = new RefitSettings
                {
                    ContentSerializer = new NewtonsoftJsonContentSerializer(jsonSerializerSettings)
                };
            }

            var clientBuilder = jsonSerializerSettings == null ? services.AddRefitClient<TService>() : services.AddRefitClient<TService>(refitSettings);

            clientBuilder.ConfigureHttpClient(c => c.BaseAddress = new Uri(baseAddress));

            if (delegatingHandler != null)
            {
                clientBuilder.AddHttpMessageHandler(h => delegatingHandler);
            };

            if (disableServerCertificateValidator)
            {
                clientBuilder.ConfigurePrimaryHttpMessageHandler(() => new HttpClientHandler
                {
                    ServerCertificateCustomValidationCallback = HttpClientHandler.DangerousAcceptAnyServerCertificateValidator
                });
            }

            return services;
        }
    }
}
