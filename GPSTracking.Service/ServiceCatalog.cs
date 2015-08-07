using GPSTracking.Domain;
using GPSTracking.Domain.Entities;
using GPSTracking.Domain.Repository;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GPSTracking.Service
{
    public class ServiceCatalog : IServiceCatalog
    {
        private DbContext _context;
        protected UserManager<Profile> _userManager;
        protected ICommonService _commonSvc;
        protected IOwnerService _ownerSvc;

        private readonly IRepository _repository;
        private readonly IUnitOfWork _unitOfWork;

        public ServiceCatalog(IRepository repository, IUnitOfWork unitOfWork)
        {
            _context = new GpsTrackingContext();
            _repository = repository;
            _unitOfWork = unitOfWork;
        }

        public UserManager<Profile> UserManager
        {
            get
            {
                if (_userManager == null) { _userManager = new UserManager<Profile>(new UserStore<Profile>(_context)); }
                return _userManager;
            }
        }

        public IOwnerService OwnerService
        {
            get 
            {
                if (_ownerSvc == null) { _ownerSvc = new OwnerService(_repository, _unitOfWork); }
                return _ownerSvc;
            }
        }


        public ICommonService CommonService
        {
            get
            {
                if (_commonSvc == null) { _commonSvc = new CommonService(_repository, _unitOfWork); }
                return _commonSvc;
            }
        }

        

        public void Dispose()
        {
            _commonSvc = null;
            _ownerSvc = null;
            if (_userManager != null) { _userManager.Dispose(); }
            if (_context != null) { _context.Dispose(); }
        }
    }
}
