using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GPSTracking.Domain.Repository
{
    public class Catalog : ICatalog
    {
        protected DbContext _context;
        protected IUnitOfWork _uow;
        protected IRepository<Entities.Country> _countryRepo;
        protected IRepository<Entities.VehicleType> _vehicleTypeRepo;
        protected IRepository<Entities.VehicleCategory> _vehicleCategoryRepo;
        protected IRepository<Entities.Location> _locationRepo;
        protected IRepository<Entities.VehicleBrand> _vehicleBrandRepo;
        protected IRepository<Entities.VehicleModel> _vehicleModelRepo;
        protected IRepository<Entities.VechicleColor> _vechicleColorRepo;
        protected IRepository<Entities.VehicleTransmision> _vehicleTransmisionRepo;
        protected IRepository<Entities.VehicleDriveType> _vehicleDriveTypeRepo;
        protected IRepository<Entities.VehicleFuelType> _vehicleFuelTypeRepo;
        protected IRepository<Entities.Vehicle> _vehicleRepo;
        protected IRepository<Entities.VehicleImage> _vehicleImageRepo;
        protected IRepository<Entities.VehicleDocument> _vehicleDocumentRepo;
        protected IRepository<Entities.Owner> _ownerRepo;


        public Catalog(DbContext context)
        { 
            _context = context;
        }


        public Catalog()
            :this(new GpsTrackingContext())
        {}


        public IUnitOfWork UOW
        {
            get 
            {
                if (_uow == null) { _uow = new UnitOfWork(_context); }
                return _uow;
            }
        }


        public IRepository<Entities.Owner> OwnerRepo
        {
            get
            {
                if (_ownerRepo == null) { _ownerRepo = new GenericRepository<Entities.Owner>(_context); }
                return _ownerRepo;
            }
        }


        public IRepository<Entities.Country> CountryRepo
        {
            get
            {
                if (_countryRepo == null) { _countryRepo = new GenericRepository<Entities.Country>(_context); }
                return _countryRepo;
            }
        }

        public IRepository<Entities.VehicleType> VehicleTypeRepo
        {
            get
            {
                if (_vehicleTypeRepo == null) { _vehicleTypeRepo = new GenericRepository<Entities.VehicleType>(_context); }
                return _vehicleTypeRepo;
            }
        }

        public IRepository<Entities.VehicleCategory> VehicleCategoryRepo
        {
            get
            {
                if (_vehicleCategoryRepo == null) { _vehicleCategoryRepo = new GenericRepository<Entities.VehicleCategory>(_context); }
                return _vehicleCategoryRepo;
            }
        }

        public IRepository<Entities.Location> LocationRepo
        {
            get
            {
                if (_locationRepo == null) { _locationRepo = new GenericRepository<Entities.Location>(_context); }
                return _locationRepo;
            }
        }

        public IRepository<Entities.VehicleBrand> VehicleBrandRepo
        {
            get
            {
                if (_vehicleBrandRepo == null) { _vehicleBrandRepo = new GenericRepository<Entities.VehicleBrand>(_context); }
                return _vehicleBrandRepo;
            }
        }

        public IRepository<Entities.VehicleModel> VehicleModelRepo
        {
            get
            {
                if (_vehicleModelRepo == null) { _vehicleModelRepo = new GenericRepository<Entities.VehicleModel>(_context); }
                return _vehicleModelRepo;
            }
        }

        public IRepository<Entities.VechicleColor> VechicleColorRepo
        {
            get
            {
                if (_vechicleColorRepo == null) { _vechicleColorRepo = new GenericRepository<Entities.VechicleColor>(_context); }
                return _vechicleColorRepo;
            }
        }

        public IRepository<Entities.VehicleTransmision> VehicleTransmisionRepo
        {
            get
            {
                if (_vehicleTransmisionRepo == null) { _vehicleTransmisionRepo = new GenericRepository<Entities.VehicleTransmision>(_context); }
                return _vehicleTransmisionRepo;
            }
        }

        public IRepository<Entities.VehicleDriveType> VehicleDriveTypeRepo
        {
            get
            {
                if (_vehicleDriveTypeRepo == null) { _vehicleDriveTypeRepo = new GenericRepository<Entities.VehicleDriveType>(_context); }
                return _vehicleDriveTypeRepo;
            }
        }


        public IRepository<Entities.VehicleFuelType> VehicleFuelTypeRepo
        {
            get
            {
                if (_vehicleFuelTypeRepo == null) { _vehicleFuelTypeRepo = new GenericRepository<Entities.VehicleFuelType>(_context); }
                return _vehicleFuelTypeRepo;
            }
        }


        public IRepository<Entities.Vehicle> VehicleRepo
        {
            get
            {
                if (_vehicleRepo == null) { _vehicleRepo = new GenericRepository<Entities.Vehicle>(_context); }
                return _vehicleRepo;
            }
        }

        public IRepository<Entities.VehicleImage> VehicleImageRepo
        {
            get
            {
                if (_vehicleImageRepo == null) { _vehicleImageRepo = new GenericRepository<Entities.VehicleImage>(_context); }
                return _vehicleImageRepo;
            }
        }

        public IRepository<Entities.VehicleDocument> VehicleDocumentRepo
        {
            get
            {
                if (_vehicleDocumentRepo == null) { _vehicleDocumentRepo = new GenericRepository<Entities.VehicleDocument>(_context); }
                return _vehicleDocumentRepo;
            }
        }
    }
}
