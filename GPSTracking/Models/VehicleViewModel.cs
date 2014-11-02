
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




    public class VehicleListItem
    {
        private const string IMAGE_ROOT = "/Images";
        private const string VEHICLE_IMAGE = IMAGE_ROOT + "/Vehicle{0}";

        public Vehicle Data { get; set; }
        public List<VehicleImage> Images { get; set; }


        public VehicleListItem(Vehicle data, List<VehicleImage> images)
        {
            Data = data;
            Images = images;
            foreach (var img in Images)
            {
                var path = string.Format(VEHICLE_IMAGE, Data.Id);
                img.ImagePath = string.Format("{0}/{1}", path, img.ImagePath);
            }
        }


    }



    public class UploadingFile
    {
        public int VehicleId { get; set; }
        public HttpPostedFileBase File { get; set; }


        public UploadingFile(int vehicleId)
        {
            this.VehicleId = vehicleId;
        }

        public UploadingFile()
        :this(0)
        { }
    }



    public class VehicleImagesViewModel
    {
        public int VechileId { get; set; }

        public UploadingFile UploadingImage { get; set; }

        public IEnumerable<VehicleImage> UploadedImages { get; set; }



        public VehicleImagesViewModel(int vehicleId, List<VehicleImage> images)
        {
            this.VechileId = vehicleId;
            this.UploadingImage = new UploadingFile(vehicleId);
            this.UploadedImages = images;
        }


        public VehicleImagesViewModel()
            : this(0, new List<VehicleImage>())
        { }

    }



    public class VehicleDocumentsViewModel
    {
        public int VechileId { get; set; }

        public UploadingFile UploadingDocument { get; set; }

        public IEnumerable<VehicleDocument> UploadedDocuments { get; set; }



        public VehicleDocumentsViewModel(int vehicleId, List<VehicleDocument> documents)
        {
            this.VechileId = vehicleId;
            this.UploadingDocument = new UploadingFile(vehicleId);
            this.UploadedDocuments = documents;
        }


        public VehicleDocumentsViewModel()
            : this(0, new List<VehicleDocument>())
        { }

    }
}