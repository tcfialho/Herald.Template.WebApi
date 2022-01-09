using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;

using WebApi.Infrastructure;

namespace WebApi.Api
{
    public class Program
    {
        public static void Main(string[] args) 
            => CreateHostBuilder(args)
                .Build()
#if (!nodatabase)
                .DoEFMigration()
#endif
                .Run();

        public static IHostBuilder CreateHostBuilder(string[] args)
        {
            return Host.CreateDefaultBuilder(args)
                        .ConfigureWebHostDefaults(webBuilder =>
                        {
                            webBuilder.UseStartup<Startup>();
                        });
        }
    }
}