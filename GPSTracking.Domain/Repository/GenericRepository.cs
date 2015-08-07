using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace GPSTracking.Domain.Repository
{
    public class GenericRepository<TEntity> : IRepository1<TEntity>
        where TEntity : class, new()
    {
        public DbContext _context;

        public GenericRepository(DbContext context)
        {
            _context = context;
        }

        public void Add(TEntity item)
        {
            _context.Set<TEntity>().Add(item);
        }

        public void Add(IEnumerable<TEntity> items)
        {
            _context.Set<TEntity>().AddRange(items);
        }

        public void Update(TEntity item)
        {
            _context.Set<TEntity>().Attach(item);
            _context.Entry<TEntity>(item).State = EntityState.Modified;
        }

        public void Delete(Expression<Func<TEntity, bool>> expression)
        {
            foreach (var item in All().Where(expression))
            {
                Delete(item);
            }
        }

        public void Delete(TEntity item)
        {
            _context.Set<TEntity>().Attach(item);
            _context.Entry<TEntity>(item).State = EntityState.Deleted;
        }

        public void DeleteAll()
        {
            foreach (var item in All())
            {
                Delete(item);
            }
        }

        public TEntity Single(Expression<Func<TEntity, bool>> expression)
        {
            return All().SingleOrDefault(expression);
        }

        public IQueryable<TEntity> All()
        {
            return _context.Set<TEntity>().AsQueryable();
        }

        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
