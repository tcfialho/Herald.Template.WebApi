#if (postgre || mysql || sqlserver)
using Herald.EntityFramework.Repositories;

using WebApi.Application.Entities;

namespace WebApi.Application.Infrastructure.Repositories
{
    public interface ISomethingRepository : IRepository<Something>
    {
    }
}
#endif