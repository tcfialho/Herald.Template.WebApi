
using Microsoft.EntityFrameworkCore;

using WebApi.Application.Entities;

namespace WebApi.Infrastructure.Persistance
{
    public class EntityContext : DbContext
    {
        public DbSet<Something> Somethings { get; set; }
        public DbSet<OtherThing> OtherThings { get; set; }

        public EntityContext()
        {
            //dotnet ef migrations add MyMigration --project ..\WebApi.Infrastructure

            this.Database.EnsureCreated();
        }

        public EntityContext(DbContextOptions<EntityContext> options) : base(options)
        {            
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }
    }
}
