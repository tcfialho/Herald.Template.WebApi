
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using Herald.EntityFramework.Repositories;

using Microsoft.EntityFrameworkCore;

using Polly;

using WebApi.Application.Entities;
using WebApi.Application.Infrastructure.Repositories;

namespace WebApi.Infrastructure.Repositories
{
    public class SomethingRepository : Repository<Something>, ISomethingRepository
    {
        protected override IQueryable<Something> _query { get; set; }

        public SomethingRepository(DbContext context) : base(context)
        {
        }
    }
}
