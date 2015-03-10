using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GPSTracking.Domain.Entities
{
    public class Vehicle
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [InverseProperty("Id")]
        public string OwnerId { get; set; }
        public string Name { get; set; }
        public int LocationId { get; set; }
        public int TypeId { get; set; }
        public int ModelId { get; set; }
        public int CategoryId { get; set; }

        public int BrandId { get; set; }
        public int DriveTypeId { get; set; }
        public int FuelTypeId { get; set; }
        public int TransmissionId { get; set; }
        public int InteriorColorId { get; set; }
        public int ExteriorColorId { get; set; }


        public int Price { get; set; }

        public int Mileage { get; set; }

        public string EngCapacity { get; set; }
        public int MakeYear { get; set; }
        public int RegYear { get; set; }
        public string VehicleNo { get; set; }
        public string LicenseNo { get; set; }
        public string RegistrationNo { get; set; }
        public string Description { get; set; }
        public string TrackingLink { get; set; }
        public string TrackingDeviceId { get; set; }
        public string DriverName { get; set; }
        public string DriverPhoneNo { get; set; }
        public bool IsNew { get; set; }
        public bool IsActive { get; set; }
        public bool IsPaid { get; set; }

        public DateTime LicenseRenewalDate { get; set; }
        public DateTime RegisteredDate { get; set; }

        public DateTime CreatedDate { get; set; }
        public DateTime? UpdatedDate { get; set; }

        [ForeignKey("OwnerId")]
        public virtual Profile Owner { get; set; }

        [ForeignKey("LocationId")]
        public virtual Location Location { get; set; }

        [ForeignKey("TypeId")]
        public virtual VehicleType Type { get; set; }
        [ForeignKey("ModelId")]
        public virtual VehicleModel Model { get; set; }
        [ForeignKey("CategoryId")]
        public virtual VehicleCategory Category { get; set; }
        [ForeignKey("BrandId")]
        public virtual VehicleBrand Brand { get; set; }
        [ForeignKey("DriveTypeId")]
        public virtual VehicleDriveType DriveType { get; set; }
        [ForeignKey("FuelTypeId")]
        public virtual VehicleFuelType FuelType { get; set; }
        [ForeignKey("TransmissionId")]
        public virtual VehicleTransmision Transmission { get; set; }

        [ForeignKey("InteriorColorId")]
        [InverseProperty("InteriorColorVehicles")]
        public virtual VechicleColor InteriorColor { get; set; }

        [ForeignKey("ExteriorColorId")]
        [InverseProperty("ExteriorColorVehicles")]
        public virtual VechicleColor ExteriorColor { get; set; }

        public virtual ICollection<VehicleImage> VehicleImages { get; set; }
        public virtual ICollection<VehicleVideo> VehicleVideos { get; set; }


        public Vehicle()
        {
            RegisteredDate = DateTime.Now;
            LicenseRenewalDate = DateTime.Now;
            CreatedDate = DateTime.Now;
        }


    }

    public class VehicleImage
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public int VehicleId { get; set; }
        public string Description { get; set; }
        public string ImagePath { get; set; }
        public bool IsDefaultImage { get; set; }


        [ForeignKey("VehicleId")]
        public virtual Vehicle Vehicle { get; set; }
    }



    public class VehicleDocument
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public int VehicleId { get; set; }
        public string Path { get; set; }
        public string FileName { get; set; }


        [ForeignKey("VehicleId")]
        public virtual Vehicle Vehicle { get; set; }
    }



    public class VehicleVideo
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public int VehicleId { get; set; }
        public string Path { get; set; }


        [ForeignKey("VehicleId")]
        public virtual Vehicle Vehicle { get; set; }

    }
}
