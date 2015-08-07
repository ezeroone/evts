using System.Data.Entity;
using GPSTracking.Domain;
using GPSTracking.Domain.Entities;
using GPSTracking.Domain.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace GPSTracking.Service
{
    public class CommonService : ICommonService
    {

        private readonly IRepository _repository;
        private readonly IUnitOfWork _unitOfWork;
        private readonly DbContext _context;
       // protected UserManager<Profile> _userManager;
        public CommonService(IRepository repository, IUnitOfWork unitOfWork)
        {
            _context = new GpsTrackingContext();
            _repository = repository;
            _unitOfWork = unitOfWork;
        }


        public IEnumerable<Country> GetCountries()
        {
            return _repository.All<Country>().AsEnumerable();
        }

        public IEnumerable<Domain.Entities.VehicleType> GetVehicleTypes()
        {
            return _repository.All<VehicleType>().AsEnumerable();
        }

        public IEnumerable<Domain.Entities.VehicleCategory> GetVehicleCategories()
        {
            return _repository.All<VehicleCategory>().AsEnumerable();
        }

        public IEnumerable<Domain.Entities.Location> GetLocations()
        {
            return _repository.All<Location>().AsEnumerable();
        }

        public IEnumerable<Domain.Entities.VehicleBrand> GetVehicleBrands()
        {
            return _repository.All<VehicleBrand>().AsEnumerable();
        }

        public IEnumerable<Domain.Entities.VehicleModel> GetVehicleModels()
        {
            return _repository.All <VehicleModel>().AsEnumerable();
        }

        public IEnumerable<Domain.Entities.VechicleColor> GetVechicleColors()
        {
            return _repository.All<VechicleColor>().AsEnumerable();
        }

        public IEnumerable<Domain.Entities.VehicleTransmision> GetVehicleTransmisions()
        {
            return _repository.All<VehicleTransmision>().AsEnumerable();
        }

        public IEnumerable<Domain.Entities.VehicleFuelType> GetVehicleFuelTypes()
        {
            return _repository.All<VehicleFuelType>().AsEnumerable();
        }

        public IEnumerable<Domain.Entities.VehicleDriveType> GetVehicleDriveTypes()
        {
            return _repository.All<VehicleDriveType>().AsEnumerable();
        }

        public ApplicationUserManager UserManager()
        {
            return new ApplicationUserManager(new IdentityExtention.UserStoreIntPk((GpsTrackingContext)_context));
        }
        //public UserManager<Profile> UserManager
        //{
        //    get
        //    {
        //        if (_userManager == null) { _userManager = new UserManager<Profile>(new UserStore<Profile>(_context)); }
        //        return _userManager;
        //    }
        //}

    }
}
