using GPSTracking.Domain.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GPSTracking.Service
{
    public abstract class BaseService
    {
        protected readonly ICatalog _catalog;

        public BaseService(ICatalog catalog)
        {
            _catalog = catalog;
        }
    }
}
