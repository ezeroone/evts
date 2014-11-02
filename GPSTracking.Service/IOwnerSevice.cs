using System.Collections.Generic;
using System.Linq;
using GPSTracking.Domain.Entities;
using GPSTracking.Domain.Repository;
using System;


namespace GPSTracking.Service
{
    public interface IOwnerService
    {
        IEnumerable<Country> AllCountries();
        IEnumerable<VehicleType> AllVehicleTypes();
        IEnumerable<VehicleCategory> AllVehicleCategorys();
        IEnumerable<Location> AllLocations();
        IEnumerable<VehicleBrand> AllVehicleBrands();
        IEnumerable<VehicleModel> AllVehicleModels();
        IEnumerable<VechicleColor> AllVechicleColors();
        IEnumerable<VehicleTransmision> AllVehicleTransmisions();
        IEnumerable<VehicleFuelType> AllVehicleFuelTypes();
        IEnumerable<VehicleDriveType> AllVehicleDriveTypes();


        Vehicle GetVehicle(int id);
        List<Vehicle> GetVehicles(string ownerId);

        bool AddUpdateVechile(Vehicle vehicle);


        #region Vehicle Images

        IEnumerable<VehicleImage> GetImages(int vehicleId);
        VehicleImage GetImage(int imageId);
        bool AddImage(VehicleImage model);
        bool RemoveImage(int imageId);

        #endregion


        #region Vehicle Documents

        IEnumerable<VehicleDocument> GetDocs(int vehicleId);
        VehicleDocument GetDoc(int docId);
        bool AddDoc(VehicleDocument model);
        bool RemoveDoc(int docId);

        #endregion

    }



    public class OwnerService : IOwnerService
    {
        private readonly IRepository _repository;
        private readonly IUnitOfWork _unitOfWork;

        public OwnerService(IRepository repository, IUnitOfWork unitOfWork)
        {
            _repository = repository;
            _unitOfWork = unitOfWork;
        }


        public IEnumerable<Country> AllCountries()
        {
            return _repository.All<Country>().OrderBy(o => o.Name).Distinct().AsEnumerable();
        }


        public IEnumerable<VehicleType> AllVehicleTypes()
        {
            return _repository.All<VehicleType>().OrderBy(o => o.Name).Distinct().AsEnumerable();
        }

        public IEnumerable<VehicleCategory> AllVehicleCategorys()
        {
            return _repository.All<VehicleCategory>().OrderBy(o => o.Name).Distinct().AsEnumerable();
        }

        public IEnumerable<Location> AllLocations()
        {
            return _repository.All<Location>().OrderBy(o => o.Name).Distinct().AsEnumerable();
        }

        public IEnumerable<VehicleBrand> AllVehicleBrands()
        {
            return _repository.All<VehicleBrand>().OrderBy(o => o.Name).Distinct().AsEnumerable();
        }

        public IEnumerable<VehicleModel> AllVehicleModels()
        {
            return _repository.All<VehicleModel>().OrderBy(o => o.Name).Distinct().AsEnumerable();
        }

        public IEnumerable<VechicleColor> AllVechicleColors()
        {
            return _repository.All<VechicleColor>().OrderBy(o => o.Name).Distinct().AsEnumerable();
        }

        public IEnumerable<VehicleTransmision> AllVehicleTransmisions()
        {
            return _repository.All<VehicleTransmision>().OrderBy(o => o.Name).Distinct().AsEnumerable();
        }

        public IEnumerable<VehicleFuelType> AllVehicleFuelTypes()
        {
            return _repository.All<VehicleFuelType>().OrderBy(o => o.Name).Distinct().AsEnumerable();
        }

        public IEnumerable<VehicleDriveType> AllVehicleDriveTypes()
        {
            return _repository.All<VehicleDriveType>().OrderBy(o => o.Name).Distinct().AsEnumerable();
        }


        public Vehicle GetVehicle(int id)
        {
           return _repository.All<Vehicle>().FirstOrDefault(m => (m.Id == id));
        }

        public List<Vehicle> GetVehicles(string ownerId)
        {
            return _repository.All<Vehicle>().Where(m => (m.OwnerId == ownerId)).ToList();
        }

        public bool AddUpdateVechile(Vehicle vehicle)
        {
            var model = GetVehicle(vehicle.Id);
            if (model == null) 
            {
                vehicle.CreatedDate = DateTime.Now;
                _repository.Add<Vehicle>(vehicle); 
            }
            else
            {
                model.UpdatedDate = DateTime.Now;
                model.BrandId = vehicle.BrandId;
                model.CategoryId = vehicle.CategoryId;
                model.Description = vehicle.Description;
                model.DriverName = vehicle.DriverName;
                model.DriverPhoneNo = vehicle.DriverPhoneNo;
                model.DriveTypeId = vehicle.DriveTypeId;
                model.EngCapacity = vehicle.EngCapacity;
                model.ExteriorColorId = vehicle.ExteriorColorId;
                model.FuelTypeId = vehicle.FuelTypeId;
                model.InteriorColorId = vehicle.InteriorColorId;
                model.IsNew = vehicle.IsNew;
                model.IsPaid = vehicle.IsPaid;
                model.LicenseNo = vehicle.LicenseNo;
                model.LicenseRenewalDate = vehicle.LicenseRenewalDate;
                model.LocationId = vehicle.LocationId;
                model.MakeYear = vehicle.MakeYear;
                model.Mileage = vehicle.Mileage;
                model.ModelId = vehicle.ModelId;
                model.Name = vehicle.Name;
                model.Price = vehicle.Price;
                model.RegisteredDate = vehicle.RegisteredDate;
                model.RegistrationNo = vehicle.RegistrationNo;
                model.RegYear = vehicle.RegYear;
                model.TrackingDeviceId = vehicle.TrackingDeviceId;
                model.TrackingLink = vehicle.TrackingLink ;
                model.TransmissionId = vehicle.TransmissionId;
                model.TypeId = vehicle.TypeId;
                model.VehicleNo = vehicle.VehicleNo;
            }
            _unitOfWork.Save();

            return true;
        }



        public IEnumerable<VehicleImage> GetImages(int vehicleId)
        {
            return _repository.All<VehicleImage>().Where(m => (m.VehicleId == vehicleId));
        }

        public VehicleImage GetImage(int imageId)
        {
            return _repository.All<VehicleImage>().FirstOrDefault(m => (m.Id == imageId));
        }

        public bool AddImage(VehicleImage model)
        {
            if (model == null) { return false; }
            _repository.Add<VehicleImage>(model);
            _unitOfWork.Save();
            return true;
        }

        public bool RemoveImage(int imageId)
        {
            var dbmodel = GetImage(imageId);
            if (dbmodel == null) { return false; }

            _repository.Delete<VehicleImage>(dbmodel);
            _unitOfWork.Save();
            return true;
        }


        public IEnumerable<VehicleDocument> GetDocs(int vehicleId)
        {
            return _repository.All<VehicleDocument>().Where(m => (m.VehicleId == vehicleId));
        }

        public VehicleDocument GetDoc(int docId)
        {
            return _repository.All<VehicleDocument>().FirstOrDefault(m => (m.Id == docId));
        }

        public bool AddDoc(VehicleDocument model)
        {
            if (model == null) { return false; }
            _repository.Add<VehicleDocument>(model);
            _unitOfWork.Save();
            return true;
        }

        public bool RemoveDoc(int docId)
        {
            var dbmodel = GetDoc(docId);
            if (dbmodel == null) { return false; }

            _repository.Delete<VehicleDocument>(dbmodel);
            _unitOfWork.Save();
            return true;
        }



    }
}
