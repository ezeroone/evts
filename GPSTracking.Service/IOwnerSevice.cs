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

        bool AddUpdateVechile(Vehicle vehicle);

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
                vehicle.UpdatedDate = DateTime.Now;
                _repository.Update<Vehicle>(vehicle);
            }
            _unitOfWork.Save();

            return true;
        }

    }
}
