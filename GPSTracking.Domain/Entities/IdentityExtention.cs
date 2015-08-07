using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace GPSTracking.Domain.Entities
{
    public class IdentityExtention
    {
        //drive required class with int KEY
        public class UserRoleIntPk : IdentityUserRole<int>
        {
        }

        public class UserClaimIntPk : IdentityUserClaim<int>
        {
        }

        public class UserLoginIntPk : IdentityUserLogin<int>
        {
        }

        public class RoleIntPk : IdentityRole<int, UserRoleIntPk>
        {
            public RoleIntPk() { }
            public RoleIntPk(string name) { Name = name; }
        }

        public class UserStoreIntPk : UserStore<Profile, RoleIntPk, int, UserLoginIntPk, UserRoleIntPk, UserClaimIntPk>
        {
            public UserStoreIntPk(GpsTrackingContext context)
                : base(context)
            {
            }
        }

        public class RoleStoreIntPk : RoleStore<RoleIntPk, int, UserRoleIntPk>
        {
            public RoleStoreIntPk(GpsTrackingContext context)
                : base(context)
            {
            }
        }

        // You can add profile data for the user by adding more properties to your ApplicationUser class, please visit http://go.microsoft.com/fwlink/?LinkID=317594 to learn more.
        //public class ApplicationUser : IdentityUser<int, UserLoginIntPk, UserRoleIntPk, UserClaimIntPk>
        //{
        //    public async Task<ClaimsIdentity> GenerateUserIdentityAsync(Domain.ApplicationUserManager manager)
        //    {
        //        // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
        //        var userIdentity = await manager.CreateIdentityAsync(this, DefaultAuthenticationTypes.ApplicationCookie);
        //        // Add custom user claims here
        //        return userIdentity;
        //    }
        //}

        //public class ApplicationDbContext : IdentityDbContext<Profile, RoleIntPk, int, UserLoginIntPk, UserRoleIntPk, UserClaimIntPk>
        //{
        //    public ApplicationDbContext()
        //        : base("GpsTrackingConnection")
        //    {
        //    }

        //    public static ApplicationDbContext Create()
        //    {
        //        return new ApplicationDbContext();
        //    }
        //}
    }
}
