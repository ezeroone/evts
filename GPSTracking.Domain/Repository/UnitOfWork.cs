using System;

namespace GPSTracking.Domain.Repository
{
    public interface IUnitOfWork
    {
        /// <summary>
        /// Commit the In-memory changes of the DbContext to the backend database.
        /// </summary>
        void Save();
    }
    public class UnitOfWork : IUnitOfWork
    {
        private readonly GpsTrackingContext _context;
        private bool _disposed = false;

        public UnitOfWork(GpsTrackingContext context)
        {
            this._context = context;
        }
        

        public void Save()
        {
            _context.SaveChanges();
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!this._disposed)
            {
                if (disposing)
                    _context.Dispose();
            }

            this._disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
