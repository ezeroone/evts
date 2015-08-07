using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GPSTracking.Domain.Repository
{
    public interface IUnitOfWork1
    {
        /// <summary>
        /// Commit the In-memory changes of the DbContext to the backend database.
        /// </summary>
        void Save();
    }
}
