
using System.Threading.Tasks;

using Microsoft.EntityFrameworkCore;

namespace Herald.EntityFramework.Persistance
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly DbContext _context;

        public UnitOfWork(DbContext context)
        {
            _context = context;
        }

        public async Task Commit()
        {
            await _context.SaveChangesAsync();
        }
    }
}
