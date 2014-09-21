using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity.EntityFramework;

namespace GPSTracking.Domain.Entities
{
    //public class Profile : IdentityUser
    //{
    //    public int UserId { get; set; }
        
    //    public override string UserName
    //    {
    //        set { Email = value; }
    //        get { return Email; }
    //    }

    //    //[ForeignKey("Owner_Id")]
    //    //public virtual Owner Owner { get; set; }

    //}

    //var context = new RaspberryPi.Models.ApplicationDbContext();          
    //if (context.Users.Any(u => u.UserName == User.Identity.Name))
    //{
    //    var store = new Microsoft.AspNet.Identity.EntityFramework.UserStore<applicationuser>();
    //    var manager = new Microsoft.AspNet.Identity.UserManager<applicationuser>(store);
    //    ApplicationUser user = manager.FindByName<applicationuser>(User.Identity.Name);
    //    if (manager.IsInRole(user.Id, "Moderator") == true)
    //    {
    //    // Do whatever you want...
    //    }
    //}
}
