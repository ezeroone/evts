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

}
