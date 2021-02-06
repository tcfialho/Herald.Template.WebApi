
using Herald.EntityFramework.Repositories;

using Microsoft.EntityFrameworkCore;

using WebApi.Application.Entities;
using WebApi.Application.Infrastructure.Repositories;

namespace WebApi.Infrastructure.Repositories
{
    public class UserRepository : Repository<User>, IUserRepository
    {
        public UserRepository(DbContext context) : base(context)
        {
        }
    }
}
