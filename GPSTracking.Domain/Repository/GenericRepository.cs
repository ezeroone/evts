using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace GPSTracking.Domain.Repository
{
    public interface IRepository : IDisposable
    {
        void Add<T>(T item) where T : class, new();
        void Add<T>(IEnumerable<T> items) where T : class, new();
        void Update<T>(T item) where T : class, new();
        void Delete<T>(Expression<Func<T, bool>> expression) where T : class, new();
        void Delete<T>(T item) where T : class, new();
        void DeleteAll<T>() where T : class, new();
        T Single<T>(Expression<Func<T, bool>> expression) where T : class, new();
        System.Linq.IQueryable<T> All<T>() where T : class, new();
    }

    public class Repository : IRepository
    {
        public GpsTrackingContext Context { get; set; }

        public Repository(GpsTrackingContext context)
        {
            Context = context;
        }

        public void Delete<T>(System.Linq.Expressions.Expression<Func<T, bool>> expression) where T : class, new()
        {
            var query = All<T>().Where(expression);
            foreach (var item in query)
            {
                Delete(item);
            }
        }

        public void Delete<T>(T item) where T : class, new()
        {
            Context.Set<T>().Remove(item);
        }

        public void DeleteAll<T>() where T : class, new()
        {
            var query = All<T>();
            foreach (var item in query)
            {
                Delete(item);
            }
        }

        public T Single<T>(System.Linq.Expressions.Expression<Func<T, bool>> expression) where T : class, new()
        {
            //return All<T>().FirstOrDefault(expression);
            return All<T>().SingleOrDefault(expression);
        }

        public IQueryable<T> All<T>() where T : class, new()
        {
            return Context.Set<T>().AsQueryable();
        }

        public void Add<T>(T item) where T : class, new()
        {
            Context.Set<T>().Add(item);
        }

        public void Add<T>(IEnumerable<T> items) where T : class, new()
        {
            foreach (var item in items)
            {
                Add(item);
            }
        }

        public void Update<T>(T item) where T : class, new()
        {
            //nothing needed here
        }

        public void Dispose()
        {
            Context.Dispose();
        }

    }
    //public class GenericRepository<TObject> where TObject : class
    //{
    //    protected DbContext _context;
    //    internal DbSet<T> _dbSet;

    //    public GenericRepository(DbContext context)
    //    {
    //        _context = context;
    //        this._dbSet = context.Set<TObject>();
    //    }

    //    public ICollection<TObject> GetAll()
    //    {
    //        return _context.Set<TObject>().ToList();
    //    }

    //    public async Task<ICollection<TObject>> GetAllAsync()
    //    {
    //        return await _context.Set<TObject>().ToListAsync();
    //    }

    //    public TObject Get(int id)
    //    {
    //        return _context.Set<TObject>().Find(id);
    //    }

    //    public async Task<TObject> GetAsync(int id)
    //    {
    //        return await _context.Set<TObject>().FindAsync(id);
    //    }

    //    public TObject Find(Expression<Func<TObject, bool>> match)
    //    {
    //        return _context.Set<TObject>().SingleOrDefault(match);
    //    }

    //    public async Task<TObject> FindAsync(Expression<Func<TObject, bool>> match)
    //    {
    //        return await _context.Set<TObject>().SingleOrDefaultAsync(match);
    //    }

    //    public ICollection<TObject> FindAll(Expression<Func<TObject, bool>> match)
    //    {
    //        return _context.Set<TObject>().Where(match).ToList();
    //    }

    //    public async Task<ICollection<TObject>> FindAllAsync(Expression<Func<TObject, bool>> match)
    //    {
    //        return await _context.Set<TObject>().Where(match).ToListAsync();
    //    }

    //    public TObject Add(TObject t)
    //    {
    //        _context.Set<TObject>().Add(t);
    //        _context.SaveChanges();
    //        return t;
    //    }

    //    public async Task<TObject> AddAsync(TObject t)
    //    {
    //        _context.Set<TObject>().Add(t);
    //        await _context.SaveChangesAsync();
    //        return t;
    //    }

    //    public TObject Update(TObject updated, int key)
    //    {
    //        if (updated == null)
    //            return null;

    //        TObject existing = _context.Set<TObject>().Find(key);
    //        if (existing != null)
    //        {
    //            _context.Entry(existing).CurrentValues.SetValues(updated);
    //            _context.SaveChanges();
    //        }
    //        return existing;
    //    }

    //    public async Task<TObject> UpdateAsync(TObject updated, int key)
    //    {
    //        if (updated == null)
    //            return null;

    //        TObject existing = await _context.Set<TObject>().FindAsync(key);
    //        if (existing != null)
    //        {
    //            _context.Entry(existing).CurrentValues.SetValues(updated);
    //            await _context.SaveChangesAsync();
    //        }
    //        return existing;
    //    }

    //    public void Delete(TObject t)
    //    {
    //        _context.Set<TObject>().Remove(t);
    //        _context.SaveChanges();
    //    }

    //    public async Task<int> DeleteAsync(TObject t)
    //    {
    //        _context.Set<TObject>().Remove(t);
    //        return await _context.SaveChangesAsync();
    //    }

    //    public int Count()
    //    {
    //        return _context.Set<TObject>().Count();
    //    }

    //    public async Task<int> CountAsync()
    //    {
    //        return await _context.Set<TObject>().CountAsync();
    //    }
    //}

    //public class GenericRepository<T> : IDisposable where T : class
    //{
    //    internal GpsTrackingContext _context;
    //    internal DbSet<T> _dbSet;

    //    public GenericRepository(GpsTrackingContext context)
    //    {
    //        this._context = context;
    //        this._dbSet = context.Set<T>();
    //    }

    //    private IQueryable<T> GetQuery(Expression<Func<T, bool>> filter = null, string includeProperties = "")
    //    {
    //        IQueryable<T> query = _dbSet;
    //        Type[] entityTypes = typeof(T).GetInterfaces();

    //        //// Filtering flaged as deleted items
    //        //if (entityTypes.Contains(typeof(IFlagDeleted)))
    //        //{
    //        //    query = (query as IQueryable<IFlagDeleted>)
    //        //        .Where(e => !e.IsDeleted).Cast<T>();
    //        //}

    //        query = filter != null ? query.Where(filter)
    //            : query;

    //        foreach (var includeProperty in includeProperties.Split
    //            (new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries))
    //        {
    //            query = query.Include(includeProperty);
    //        }

    //        return query;
    //    }

    //    public int GetCount(Expression<Func<T, bool>> filter = null)
    //    {
    //        return GetQuery(filter).Count();
    //    }

    //    public bool Any(Expression<Func<T, bool>> filter)
    //    {
    //        return _dbSet.Any(filter);
    //    }

    //    //Async
    //    public virtual Task<List<T>> GetAsync(Expression<Func<T, bool>> filter = null, Func<IQueryable<T>, IOrderedQueryable<T>> orderBy = null, string includeProperties = "")
    //    {
    //        var query = GetQuery(filter, includeProperties);

    //        return orderBy != null ? orderBy(query).ToListAsync()
    //            : query.ToListAsync();
    //    }

    //    public virtual Task<T> GetByIdAsync(object id)
    //    {
    //        return _dbSet.FindAsync(id);
    //    }

    //    // Non Async
    //    public virtual List<T> Get(Expression<Func<T, bool>> filter = null, Func<IQueryable<T>, IOrderedQueryable<T>> orderBy = null, string includeProperties = "")
    //    {
    //        return GetAsync(filter, orderBy, includeProperties).Result;
    //    }

    //    public virtual T GetById(object id)
    //    {
    //        return _dbSet.Find(id);
    //    }

    //    public virtual void Insert(T entity)
    //    {
    //        _dbSet.Add(entity);
    //    }

    //    public virtual void Delete(object id)
    //    {
    //        T entity = GetById(id);
    //        Delete(entity);
    //    }

    //    public virtual void Delete(T entity)
    //    {
    //        if (_context.Entry(entity).State == EntityState.Detached)
    //            _dbSet.Attach(entity);

    //        _dbSet.Remove(entity);
    //    }

    //    public virtual void Delete(Expression<Func<T, bool>> where)
    //    {
    //        IEnumerable<T> objects = _dbSet.Where<T>(where).AsEnumerable();
    //        foreach (T obj in objects)
    //            _dbSet.Remove(obj);
    //    }

    //    public virtual void Update(T entity)
    //    {
    //        if (_context.Entry(entity).State == EntityState.Detached)
    //            _dbSet.Attach(entity);

    //        _context.Entry(entity).State = EntityState.Modified;
    //    }

    //    public void Dispose()
    //    {
    //        if (_context != null)
    //        {
    //            _context.Dispose();
    //        }
    //    }
    //}
}
