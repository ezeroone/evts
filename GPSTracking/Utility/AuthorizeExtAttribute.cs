using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using GPSTracking.Domain.Enums;
using Microsoft.AspNet.Identity;
using GPSTracking.Domain.Entities;
using Microsoft.AspNet.Identity.EntityFramework;
using GPSTracking.Domain;

namespace GPSTracking.Utility
{
    public class AuthorizeExtAttribute : AuthorizeAttribute
    {
        //public AuthorizeExtAttribute(params UserRole[]  EnumRoles)
        //:base()
        //{ }

        public UserRole[] EnumRoles {get; set;}

        protected override bool AuthorizeCore(HttpContextBase httpContext)
        {
            if (httpContext == null) { throw new ArgumentNullException("httpContext"); }
            if (!httpContext.User.Identity.IsAuthenticated) { return false; }
            if (this.EnumRoles == null || this.EnumRoles.Length == 0) { return base.AuthorizeCore(httpContext); }


            var usermanager = new UserManager<Profile>(new UserStore<Profile>(new GpsTrackingContext()));
            var user = usermanager.FindByName(httpContext.User.Identity.Name);

            try
            {
                return user.Roles.Any(m => (EnumRoles.Any(r => ((int)r) == Convert.ToInt32(m.RoleId))));
            }
            catch { return false; }
        }
    }
}