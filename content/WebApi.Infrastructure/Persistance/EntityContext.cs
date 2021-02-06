
using Microsoft.EntityFrameworkCore;

using WebApi.Application.Entities;

namespace WebApi.Infrastructure.Persistance
{
    public class EntityContext : DbContext
    {
        public DbSet<User> Users { get; set; }

        public EntityContext()
        {
        }

        public EntityContext(DbContextOptions<EntityContext> options) : base(options)
        {
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseLazyLoadingProxies();
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }
    }
}
