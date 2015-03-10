using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace GPSTracking.Domain.Repository
{
    public interface IRepository<TEntity> : IDisposable 
        where TEntity : class, new()
    {
        void Add(TEntity item);
        void Add(IEnumerable<TEntity> items);
        void Update(TEntity item);
        void Delete(Expression<Func<TEntity, bool>> expression);
        void Delete(TEntity item);
        void DeleteAll();
        TEntity Single(Expression<Func<TEntity, bool>> expression);
        System.Linq.IQueryable<TEntity> All();
    }
}
