using Herald.ModelBinder;
using Herald.ModelBinder.Swagger;
using Herald.Observability.Jaeger.Configurations;
using Herald.Web.Swagger;

using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;

using WebApi.Application;
using WebApi.Infrastructure;

namespace WebApi.Api
{
    public class Startup
    {
        public IConfiguration Configuration { get; }
        public IWebHostEnvironment Env { get; }

        public Startup(IConfiguration configuration, IWebHostEnvironment env)
        {
            Configuration = configuration;
            Env = env;
        }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddFeatures(Configuration);
#if (sqs || kafka || rabbitmq || azure)
            services.AddQueues(Configuration);
#endif
#if (!noexternalapi)
            services.AddWebServices(Configuration);
#endif
#if (postgre || mysql || sqlserver)
            services.AddRepositories(Configuration);
#endif
            services.AddControllers(options =>
            {
                options.ModelBinderProviders.InsertRouteAndQueryBinding();
                options.ModelBinderProviders.InsertRouteAndBodyBinding();
            });
            services.AddSwagger(o => 
            {
                o.OperationFilter<FromRouteAndBodyModelOperationFilter>();
                o.OperationFilter<FromRouteAndQueryModelOperationFilter>();
            });

            services.AddJaegerTracing(setup => Configuration.GetSection("JaegerOptions").Bind(setup));
            services.AddHealthChecks();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
            }

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
