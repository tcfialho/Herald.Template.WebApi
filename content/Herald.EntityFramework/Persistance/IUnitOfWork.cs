using System.Threading.Tasks;

namespace Herald.EntityFramework.Persistance
{
    public interface IUnitOfWork
    {
        public Task Commit();
    }
}
