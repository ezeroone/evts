using GPSTracking.Domain.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Security.Permissions;

namespace GPSTracking.Models
{
    public class ExternalLoginConfirmationViewModel
    {
        [Required]
        [Display(Name = "User name")]
        public string UserName { get; set; }
    }

    public class ManageUserViewModel
    {
        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Current password")]
        public string OldPassword { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "New password")]
        public string NewPassword { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Confirm new password")]
        [Compare("NewPassword", ErrorMessage = "The new password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }
    }

    public class LoginViewModel
    {
        [Required(ErrorMessage="Your Login user name or email is required.")]
        [Display(Name = "User name")]
        [EmailAddress]
        public string UserName { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }

        [Display(Name = "Remember me?")]
        public bool RememberMe { get; set; }
    }

    public class RegisterViewModel
    {
        [Required(AllowEmptyStrings=false)]
        [EmailAddress]
        [Display(Name = "User name")]
        public string UserName { get; set; }

        public string Email { get { return UserName; } set { UserName = value; } }

        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Confirm password")]
        [Compare("Password", ErrorMessage = "The password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }

        [Display(Name = "Mobile Number")]
        public string MobileNumber { get; set; }

         
        [Display(Name = "First Name")]
        public string FirstName { get; set; }

        public bool PhoneNumberConfirmed { get; set; }
        
        public bool IsActive { get; set; }

         
        [Required(ErrorMessage="Please specify a country")]
        [Range(1, int.MaxValue)]
        public int CountryId { get; set; }

        public List<Country> AvailableCountries { get; set; }




        public static explicit operator Profile(RegisterViewModel source)
        {
            if (source == null) { return null; }
            return new Profile()
            {
                UserName = source.UserName,
                FirstName = source.FirstName,
                CountryId = source.CountryId,
                CreatedDate = DateTime.Now,
                ModifiedDate = DateTime.Now
            };
        }

    }
}
