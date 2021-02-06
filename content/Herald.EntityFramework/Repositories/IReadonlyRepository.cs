using System.Collections.Generic;
using System.Threading.Tasks;

namespace Herald.EntityFramework.Repositories
{
    public interface IReadonlyRepository<TEntity> where TEntity : class
    {
        Task<TEntity> GetById(object id);
        Task<IList<TEntity>> GetAll();
    }
}
