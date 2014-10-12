using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GPSTracking.Domain
{
    public class RoleNames
    {
        /// <summary>
        /// Admin of the site and users
        /// </summary>
        public const string ADMIN = "admin";
        /// <summary>
        /// User is a standard user who cannot not delete stuff, only make it inactive 
        /// </summary>
        public const string OWNER = "owner";

        public static string GetProperName(string roleName)
        {
            switch (roleName)
            {
                case ADMIN:
                    return "admin";
                case OWNER:
                    return "owner";
                default:
                    return string.Empty;
            }
        }
    }
}
