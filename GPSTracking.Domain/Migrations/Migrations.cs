using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GPSTracking.Domain.Entities;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace GPSTracking.Domain.Migrations
{
    internal sealed class Configuration : DbMigrationsConfiguration<GpsTrackingContext>
    {
       
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
            //Users = GetUsers();
        }

        protected override void Seed(GpsTrackingContext context)
        {
            
        }

        


    }
}
