using System;
using System.Data.Entity;

namespace GPSTracking.Domain.Repository
{

    public class UnitOfWork1 : IUnitOfWork1
    {
        private readonly DbContext _context;
        private bool _disposed;

        public UnitOfWork1(DbContext context)
        {
            _context = context;
            _disposed = false;
        }
        

        public void Save()
        {
            _context.SaveChanges();
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!this._disposed && disposing) { _context.Dispose(); }
            this._disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
