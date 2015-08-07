using System.Collections.Generic;
using System.Linq;
using GPSTracking.Domain.Entities;
using GPSTracking.Domain.Repository;
using System;


namespace GPSTracking.Service
{
    public interface IOwnerService
    {
        Vehicle GetVehicle(int ownerId, int id);
        List<Vehicle> GetVehicles(int ownerId);
        bool AddUpdateVechile(Vehicle vehicle);
        bool UpdateOwner(VehicleOwner owner);

        VehicleOwner GetOwner(int userId);
       
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

    
        Title GeteDefaultTitle(int id);
        SecretQuestion GeteDefaultSecretQuestion(int id);
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
     
        public Vehicle GetVehicle(int ownerId, int id)
        {
            return _repository.Single<Vehicle>(m => m.OwnerId ==ownerId&& m.Id == id);
        }

        public VehicleOwner GetOwner(int id)
        {
            return _repository.Single<VehicleOwner>(m => m.UserId == id);
        }
        public List<Vehicle> GetVehicles(int ownerId)
        {
            return _repository.All<Vehicle>().Where(m => (m.OwnerId == ownerId && m.IsActive)).ToList();
        }

        public bool UpdateOwner(VehicleOwner owner)
        {
            try
            {
                var model = GetOwner(owner.Id);
                if (model == null)
                {
                    _repository.Add(owner);
                }
                else
                {
                    owner.ModifiedDate = DateTime.Now;
                    _repository.Update<VehicleOwner>(owner);
                }

                _unitOfWork.Commit();

            }
            catch (Exception ex)
            {
                return false;
            }
      
            return true;
        }
        public bool AddUpdateVechile(Vehicle vehicle)
        {
            var model = GetVehicle(vehicle.OwnerId, vehicle.Id);
            if (model == null) 
            {
                vehicle.CreatedDate = DateTime.Now;
                _repository.Add(vehicle); 
            }
            else
            {
                _repository.Update<Vehicle>(vehicle);
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
            _unitOfWork.Commit();

            return true;
        }


        public IEnumerable<VehicleImage> GetImages(int vehicleId)
        {
            return _repository.All<VehicleImage>().Where(m => (m.VehicleId == vehicleId));
        }

        public VehicleImage GetImage(int imageId)
        {
            return _repository.Single<VehicleImage>(m => (m.Id == imageId));
        }

        public bool AddImage(VehicleImage model)
        {
            if (model == null) { return false; }
            _repository.Add(model);
            _unitOfWork.Commit();
            return true;
        }

        public bool RemoveImage(int imageId)
        {
            var dbmodel = GetImage(imageId);
            if (dbmodel == null) { return false; }

            _repository.Delete(dbmodel);
            _unitOfWork.Commit();
            return true;
        }


        public IEnumerable<VehicleDocument> GetDocs(int vehicleId)
        {
            return _repository.All<VehicleDocument>().Where(m => (m.VehicleId == vehicleId));
        }

        public VehicleDocument GetDoc(int docId)
        {
            return _repository.Single<VehicleDocument>(m => (m.Id == docId));
        }

        public bool AddDoc(VehicleDocument model)
        {
            if (model == null) { return false; }
            _repository.Add(model);
            _unitOfWork.Commit();
            return true;
        }

        public bool RemoveDoc(int docId)
        {
            var dbmodel = GetDoc(docId);
            if (dbmodel == null) { return false; }

            _repository.Delete(dbmodel);
            _unitOfWork.Commit();
            return true;
        }
        public Title GeteDefaultTitle(int id)
        {
            return _repository.Single<Title>(m => (m.Id == id));
        }
        public SecretQuestion GeteDefaultSecretQuestion(int id)
        {
            return _repository.Single<SecretQuestion>(m => (m.Id == id));
        }
    }
}
