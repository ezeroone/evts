using GPSTracking.Domain;
using GPSTracking.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;

namespace GPSTracking.Service
{
    public interface ICommonService
    {
        IEnumerable<Country> GetCountries();
        IEnumerable<VehicleType> GetVehicleTypes();
        IEnumerable<VehicleCategory> GetVehicleCategories();
        IEnumerable<Location> GetLocations();
        IEnumerable<VehicleBrand> GetVehicleBrands();
        IEnumerable<VehicleModel> GetVehicleModels();
        IEnumerable<VechicleColor> GetVechicleColors();
        IEnumerable<VehicleTransmision> GetVehicleTransmisions();
        IEnumerable<VehicleFuelType> GetVehicleFuelTypes();
        IEnumerable<VehicleDriveType> GetVehicleDriveTypes();

        ApplicationUserManager UserManager();
        //UserManager<Profile> UserManager { get; }
    }
}
