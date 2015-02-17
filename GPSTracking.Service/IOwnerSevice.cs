using System.Collections.Generic;
using System.Linq;
using GPSTracking.Domain.Entities;
using GPSTracking.Domain.Repository;
using System;


namespace GPSTracking.Service
{
    public interface IOwnerService
    {
        Vehicle GetVehicle(string ownerId, int id);
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



    public class OwnerService : BaseService, IOwnerService
    {
        public OwnerService(ICatalog catalog)
            :base(catalog)
        {}
     

        public Vehicle GetVehicle(string ownerId, int id)
        {
           return _catalog.VehicleRepo.Single(m => (m.OwnerId == ownerId && m.Id == id));
        }

        public List<Vehicle> GetVehicles(string ownerId)
        {
            return _catalog.VehicleRepo.All().Where(m => (m.OwnerId == ownerId)).ToList();
        }

        public bool AddUpdateVechile(Vehicle vehicle)
        {
            var model = GetVehicle(vehicle.OwnerId, vehicle.Id);
            if (model == null) 
            {
                vehicle.CreatedDate = DateTime.Now;
               _catalog.VehicleRepo.Add(vehicle); 
            }
            else
            {
                _catalog.VehicleRepo.Update(vehicle);
                //model.UpdatedDate = DateTime.Now;
                //model.BrandId = vehicle.BrandId;
                //model.CategoryId = vehicle.CategoryId;
                //model.Description = vehicle.Description;
                //model.DriverName = vehicle.DriverName;
                //model.DriverPhoneNo = vehicle.DriverPhoneNo;
                //model.DriveTypeId = vehicle.DriveTypeId;
                //model.EngCapacity = vehicle.EngCapacity;
                //model.ExteriorColorId = vehicle.ExteriorColorId;
                //model.FuelTypeId = vehicle.FuelTypeId;
                //model.InteriorColorId = vehicle.InteriorColorId;
                //model.IsNew = vehicle.IsNew;
                //model.IsPaid = vehicle.IsPaid;
                //model.LicenseNo = vehicle.LicenseNo;
                //model.LicenseRenewalDate = vehicle.LicenseRenewalDate;
                //model.LocationId = vehicle.LocationId;
                //model.MakeYear = vehicle.MakeYear;
                //model.Mileage = vehicle.Mileage;
                //model.ModelId = vehicle.ModelId;
                //model.Name = vehicle.Name;
                //model.Price = vehicle.Price;
                //model.RegisteredDate = vehicle.RegisteredDate;
                //model.RegistrationNo = vehicle.RegistrationNo;
                //model.RegYear = vehicle.RegYear;
                //model.TrackingDeviceId = vehicle.TrackingDeviceId;
                //model.TrackingLink = vehicle.TrackingLink ;
                //model.TransmissionId = vehicle.TransmissionId;
                //model.TypeId = vehicle.TypeId;
                //model.VehicleNo = vehicle.VehicleNo;
            }
            _catalog.UOW.Save();

            return true;
        }



        public IEnumerable<VehicleImage> GetImages(int vehicleId)
        {
            return _catalog.VehicleImageRepo.All().Where(m => (m.VehicleId == vehicleId));
        }

        public VehicleImage GetImage(int imageId)
        {
            return _catalog.VehicleImageRepo.Single(m => (m.Id == imageId));
        }

        public bool AddImage(VehicleImage model)
        {
            if (model == null) { return false; }
            _catalog.VehicleImageRepo.Add(model);
            _catalog.UOW.Save();
            return true;
        }

        public bool RemoveImage(int imageId)
        {
            var dbmodel = GetImage(imageId);
            if (dbmodel == null) { return false; }

            _catalog.VehicleImageRepo.Delete(dbmodel);
            _catalog.UOW.Save();
            return true;
        }


        public IEnumerable<VehicleDocument> GetDocs(int vehicleId)
        {
            return _catalog.VehicleDocumentRepo.All().Where(m => (m.VehicleId == vehicleId));
        }

        public VehicleDocument GetDoc(int docId)
        {
            return _catalog.VehicleDocumentRepo.Single(m => (m.Id == docId));
        }

        public bool AddDoc(VehicleDocument model)
        {
            if (model == null) { return false; }
            _catalog.VehicleDocumentRepo.Add(model);
            _catalog.UOW.Save();
            return true;
        }

        public bool RemoveDoc(int docId)
        {
            var dbmodel = GetDoc(docId);
            if (dbmodel == null) { return false; }

            _catalog.VehicleDocumentRepo.Delete(dbmodel);
            _catalog.UOW.Save();
            return true;
        }



    }
}
