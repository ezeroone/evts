using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.AspNet.Identity.EntityFramework;

namespace GPSTracking.Domain.Entities
{
    public class VehicleOwner 
    {

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        [InverseProperty("Id")]
        public int UserId { get; set; }
        public int? SecretQuestionId { get; set; }

        public int? TitleId { get; set; }
        [Required]
        public string FirstName { get; set; }
        // [Required]
        public string LastName { get; set; }
         [Required]
        public  string Email { get; set; }
       
        public  string PhoneNumber { get; set; }
         [Required]
        public string Mobile { get; set; }
        public string Street { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zipcode { get; set; }
        public string Remark { get; set; }

        public DateTime CreatedDate { get; set; }

        public DateTime ModifiedDate { get; set; }

        public bool IsDeleted { get; set; }
        public bool IsActive { get; set; }

        [ForeignKey("UserId")]
        public virtual Profile User { get; set; }
        public List<Vehicle> Vehicles { get; set; }

        [ForeignKey("SecretQuestionId")]
        public virtual SecretQuestion SecretQuestion { get; set; }
         [ForeignKey("TitleId")]
        public virtual Title Title { get; set; }
        public virtual List<OwnerSubcription> OwnerSubcriptions { get; set; }
        public string SecretQuestionAnswer { get; set; }
        [NotMapped]
        public string DisplayName
        {
            get { return string.Format("{0} {1}", FirstName, LastName); }
        }
    }

    public class Subcription
    {
        [Key]
        //[DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int VehicleType { get; set; }

        public decimal Amount { get; set; }
    }

    public class SecretQuestion
    {
        [Key]
        public int Id { get; set; }
        public string Question { get; set; }
    }

    public class OwnerSubcription
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public int OwnerId { get; set; }
        public int SubcriptionId { get; set; }

        [ForeignKey("OwnerId")]
        public VehicleOwner Owner { get; set; }

        [ForeignKey("SubcriptionId")]
        public Subcription Subcription { get; set; }
    }

    public class Title
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string Name { get; set; }
    }
}
