using System;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.AspNet.Identity.EntityFramework;

namespace GPSTracking.Domain.Entities
{

    public class Profile : IdentityUser
    {
        public int UserId { get; set; }
       
        public string FirstName { get; set; }

        public string LastName { get; set; }

        public override string UserName {
            set { Email = value; }
            get { return Email; }
        }
        public string Mobile { get; set; }
        public string Street { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zipcode { get; set; }
        public string Remark { get; set; }

        [ForeignKey("Country_Id")]
        public virtual Country Country { get; set; }

        public DateTime CreatedDate { get; set; }

        public DateTime ModifiedDate { get; set; }

        public bool IsDeleted { get; set; }
        public bool IsActive { get; set; }
        public string Citizenship { get; set; }
    }
}
