﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace GPSTracking.Common
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

        public class UserStoreIntPk : UserStore<ApplicationUser, RoleIntPk, int, UserLoginIntPk, UserRoleIntPk, UserClaimIntPk>
        {
            public UserStoreIntPk(ApplicationDbContext context)
                : base(context)
            {
            }
        }

        public class RoleStoreIntPk : RoleStore<RoleIntPk, int, UserRoleIntPk>
        {
            public RoleStoreIntPk(ApplicationDbContext context)
                : base(context)
            {
            }
        }

        // You can add profile data for the user by adding more properties to your ApplicationUser class, please visit http://go.microsoft.com/fwlink/?LinkID=317594 to learn more.
        public class ApplicationUser : IdentityUser<int, UserLoginIntPk, UserRoleIntPk, UserClaimIntPk>
        {
            public async Task<ClaimsIdentity> GenerateUserIdentityAsync(ApplicationUserManager manager)
            {
                // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
                var userIdentity = await manager.CreateIdentityAsync(this, DefaultAuthenticationTypes.ApplicationCookie);
                // Add custom user claims here
                return userIdentity;
            }
        }

        public class ApplicationDbContext : IdentityDbContext<ApplicationUser, RoleIntPk, int, UserLoginIntPk, UserRoleIntPk, UserClaimIntPk>
        {
            public ApplicationDbContext()
                : base("DefaultConnection")
            {
            }

            public static ApplicationDbContext Create()
            {
                return new ApplicationDbContext();
            }
        }
    }
}
