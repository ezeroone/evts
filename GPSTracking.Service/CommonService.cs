using GPSTracking.Domain.Entities;
using GPSTracking.Domain.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GPSTracking.Service
{
    public class CommonService : BaseService, ICommonService
    {

        public CommonService(ICatalog catalog)
            :base(catalog)
        { }

        public IEnumerable<Country> GetCountries()
        {
           return _catalog.CountryRepo.All().ToList();
        }

        public IEnumerable<Domain.Entities.VehicleType> GetVehicleTypes()
        {
            return _catalog.VehicleTypeRepo.All().ToList();
        }

        public IEnumerable<Domain.Entities.VehicleCategory> GetVehicleCategories()
        {
            return _catalog.VehicleCategoryRepo.All().ToList();
        }

        public IEnumerable<Domain.Entities.Location> GetLocations()
        {
            return _catalog.LocationRepo.All().ToList();
        }

        public IEnumerable<Domain.Entities.VehicleBrand> GetVehicleBrands()
        {
            return _catalog.VehicleBrandRepo.All().ToList();
        }

        public IEnumerable<Domain.Entities.VehicleModel> GetVehicleModels()
        {
            return _catalog.VehicleModelRepo.All().ToList();
        }

        public IEnumerable<Domain.Entities.VechicleColor> GetVechicleColors()
        {
            return _catalog.VechicleColorRepo.All().ToList();
        }

        public IEnumerable<Domain.Entities.VehicleTransmision> GetVehicleTransmisions()
        {
            return _catalog.VehicleTransmisionRepo.All().ToList();
        }

        public IEnumerable<Domain.Entities.VehicleFuelType> GetVehicleFuelTypes()
        {
            return _catalog.VehicleFuelTypeRepo.All().ToList();
        }

        public IEnumerable<Domain.Entities.VehicleDriveType> GetVehicleDriveTypes()
        {
            return _catalog.VehicleDriveTypeRepo.All().ToList();
        }
    }
}
