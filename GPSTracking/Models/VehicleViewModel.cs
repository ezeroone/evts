
using GPSTracking.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GPSTracking.Models
{
    public class VehicleViewModel
    {

        public VehicleViewModel()
        {
            AvailableLocations = new List<Location>();
            AvailableVehicleTypes = new List<VehicleType>();
            AvailableVehicleCategories = new List<VehicleCategory>();
            AvailableVehicleBrands = new List<VehicleBrand>();
            AvailableVehicleModels = new List<VehicleModel>();
            AvailableVechicleColors = new List<VechicleColor>();
            AvailableVehicleTransmisions = new List<VehicleTransmision>();
            AvailableVehicleFuelTypes = new List<VehicleFuelType>();
            AvailableVehicleDriveTypes = new List<VehicleDriveType>();
        }


        public List<Location> AvailableLocations { get; set; }
        public List<VehicleType> AvailableVehicleTypes { get; set; }
        public List<VehicleCategory> AvailableVehicleCategories { get; set; }
        public List<VehicleBrand> AvailableVehicleBrands { get; set; }
        public List<VehicleModel> AvailableVehicleModels { get; set; }
        public List<VechicleColor> AvailableVechicleColors { get; set; }
        public List<VehicleTransmision> AvailableVehicleTransmisions { get; set; }
        public List<VehicleFuelType> AvailableVehicleFuelTypes { get; set; }
        public List<VehicleDriveType> AvailableVehicleDriveTypes { get; set; }
    }
}