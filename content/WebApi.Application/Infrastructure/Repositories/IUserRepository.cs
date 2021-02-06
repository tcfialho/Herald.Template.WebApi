using Herald.EntityFramework.Repositories;

using WebApi.Application.Entities;

namespace WebApi.Application.Infrastructure.Repositories
{
    public interface IUserRepository : IRepository<User>
    {
    }
}
