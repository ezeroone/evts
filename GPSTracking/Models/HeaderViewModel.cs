using GPSTracking.Domain;
using GPSTracking.Domain.Entities;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GPSTracking.Models
{

    /// <summary>
    /// This model shoudl hold the information that is required to 
    /// create the header tabs.
    /// </summary>
    public class HeaderViewModel
    {
        public string Username { get; set; }
        public string Email { get; set; }
        public string Firstname { get; set; }
        public string Lastname { get; set; }
        public string Role { get; set; }
        public string ImgUrl { get; set; }
        public string WelcomeName
        {
            get
            {
                var displayName = "";
                displayName = (!string.IsNullOrEmpty(Firstname) || !string.IsNullOrEmpty(Lastname))
                    ? (string.Format("{0}{1}", string.IsNullOrEmpty(Firstname) ? "" : Firstname,
                       string.IsNullOrEmpty(Lastname) ? ""
                       : string.IsNullOrEmpty(Firstname) ? Lastname : string.Format(" {0}", Lastname)))
                    : string.IsNullOrEmpty(Username) ? Username
                    : string.IsNullOrEmpty(Email) ? Email
                    : "Guest";

                return displayName;
            }
        }


        public HeaderViewModel()
        {
            this.Username = "Navaseelan";
            this.Firstname = "Last Name";
        }


        public HeaderViewModel(Profile userProfile, IList<string> userRoles)
        {
            if (userProfile == null) { return; }

            this.Email = userProfile.Email;
            this.Username = userProfile.UserName;
            //this.Firstname = userProfile.FirstName;
            //this.Lastname = userProfile.LastName;

            this.Role = (userRoles == null) ? "" 
                : userRoles.Contains(RoleNames.ADMIN) ? RoleNames.ADMIN
                : userRoles.Contains(RoleNames.OWNER) ? RoleNames.OWNER : "";
        }

    }
}