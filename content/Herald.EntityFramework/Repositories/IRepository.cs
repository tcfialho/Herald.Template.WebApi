using System.Threading.Tasks;

namespace Herald.EntityFramework.Repositories
{
    public interface IRepository<TEntity> : IReadonlyRepository<TEntity> where TEntity : class
    {
        Task Insert(TEntity entity);
        void Update(TEntity entity);
        void Delete(TEntity entity);
    }
}
