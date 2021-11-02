
using Herald.EntityFramework.Repositories;

using Microsoft.EntityFrameworkCore;

using WebApi.Application.Entities;
using WebApi.Application.Infrastructure.Repositories;

namespace WebApi.Infrastructure.Repositories
{
    public class SomethingRepository : Repository<Something>, ISomethingRepository
    {
        public SomethingRepository(DbContext context) : base(context)
        {
        }
    }
}
