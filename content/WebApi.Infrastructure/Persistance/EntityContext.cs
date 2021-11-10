
using Microsoft.EntityFrameworkCore;

using WebApi.Application.Entities;

namespace WebApi.Infrastructure.Persistance
{
    public class EntityContext : DbContext
    {
        public DbSet<Something> Somethings { get; set; }

        public EntityContext()
        {
        }

        public EntityContext(DbContextOptions<EntityContext> options) : base(options)
        {
        }
    }
}
