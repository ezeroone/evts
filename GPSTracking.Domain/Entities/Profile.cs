using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace GPSTracking.Domain.Entities
{

    /// <summary>
    /// Represensts the Asp.Net User table
    /// </summary>
    public class Profile : IdentityUser<int, IdentityExtention.UserLoginIntPk, IdentityExtention.UserRoleIntPk, IdentityExtention.UserClaimIntPk> //IdentityUser
    {
        public override string UserName {
            set { Email = value; }
            get { return Email; }
        }

        public string DisplayName { get; set; }
        public int CountryId { get; set; }

        public DateTime CreatedDate { get; set; }

        public DateTime ModifiedDate { get; set; }

        public bool IsDeleted { get; set; }
        public bool IsActive { get; set; }
        
        [ForeignKey("CountryId")]
        public virtual Country Country { get; set; }

        public async Task<ClaimsIdentity> GenerateUserIdentityAsync(ApplicationUserManager manager)
        {
            // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
            var userIdentity = await manager.CreateIdentityAsync(this, DefaultAuthenticationTypes.ApplicationCookie);
            // Add custom user claims here
            return userIdentity;
        }
    }
}
