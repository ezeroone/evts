using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace GPSTracking.Domain.Entities
{
    public class Owner //ILogInfo, IFlagDeleted
    {
        
        [Key]
        public int Id { get; set; }

        [Required]
        public string FirstName { get; set; }

        public string LastName { get; set; }

        public  string Email { get; set; }

        public  string PhoneNumber { get; set; }
        public string Mobile { get; set; }
        public string Street { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zipcode { get; set; }
        public string Remark { get; set; }

        public virtual Country Country { get; set; }

        public DateTime CreatedDate { get; set; }

        public DateTime ModifiedDate { get; set; }

        public bool IsDeleted { get; set; }
        public bool IsActive { get; set; }

       
       // public virtual Owner Owner { get; set; }
        //[ForeignKey("User_Id")]
        //public virtual IdentityUser User { get; set; }
        public List<Vehicle> Vehicles { get; set; }
    }


    public class Vehicle
    {
        public int Id { get; set; }
        public virtual Owner Owner { get; set; }
        public string Name { get; set; }
        public virtual Type Type { get; set; }
        
        public virtual Transmision Transmision { get; set; }
        public virtual InteriorColor InteriorColor { get; set; }
        public virtual ExteriorColor ExteriorColor { get; set; }
        public virtual Brand Brand { get; set; }
        public virtual Model Model { get; set; }
        public virtual Fuel Fuel { get; set; }
        public virtual Drive Drive { get; set; }
        public string EngCapacity { get; set; }
        public int MakeYear { get; set; }
        public int RegYear { get; set; }
        public string  VehNo { get; set; }
        public string LicenseNo { get; set; }
        public string RegNo { get; set; }
        public string Milage { get; set; }
        public string Description { get; set; }
        public DateTime RenewalDate { get; set; }
        public DateTime RegDate { get; set; }

        public string TrackingNo { get; set; }
        public string DriverName { get; set; }
        public string DriverMobNo { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime UpdatedDate { get; set; }

        public bool IsActive { get; set; }
        public bool IsPaid { get; set; }

        public List<VehicleImage> VehicleImages { get; set; }
        public List<VehicleVideo> VehicleVideos { get; set; }
    }

    public class VehicleImage
    {
        public int Id { get; set; }
        public virtual Vehicle Vehicle { get; set; }
        public string Description { get; set; }
        public string ImagePath { get; set; }
        public bool DefaultImage { get; set; }
    }

    public class VehicleVideo
    {
        public int Id { get; set; }
        public virtual Vehicle Vehicle { get; set; }
        public string Path { get; set; }
       
    }
}
