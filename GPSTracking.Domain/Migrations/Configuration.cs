namespace GPSTracking.Domain.Migrations
{
    using GPSTracking.Domain.Entities;
    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.EntityFramework;
    using System;
    using System.Collections.Generic;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<GPSTracking.Domain.GpsTrackingContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(GPSTracking.Domain.GpsTrackingContext context)
        {



            context.Regions.AddOrUpdate(
                new Region() { Id = 1, Name = "Africa" },
                new Region()
                {
                    Id = 1,
                    Name = "Asia",
                    Countries = new List<Country>()
                {
                    new Country(){ Id = 1, Name ="Bangladesh", Article= null },
                    new Country(){ Id = 2, Name ="Bhutan", Article= null },
                    new Country(){ Id = 3, Name ="Brunei Darussalam", Article= null },
                    new Country(){ Id = 4, Name ="Cambodia", Article= null },
                    new Country(){ Id = 5, Name ="China", Article= null },
                    new Country(){ Id = 6, Name ="Georgia", Article= null },
                    new Country(){ Id = 7, Name ="Hong Kong", Article= null },
                    new Country(){ Id = 8, Name ="India", Article= null },
                    new Country(){ Id = 9, Name ="Indonesia", Article= null },
                    new Country(){ Id = 10, Name ="Japan", Article= null },
                    new Country(){ Id = 11, Name ="Kazakhstan", Article= null },
                    new Country(){ Id = 12, Name ="Korea, North", Article= null },
                    new Country(){ Id = 13, Name ="Korea, South", Article= null },
                    new Country(){ Id = 14, Name ="Kyrgyzstan", Article= null },
                    new Country(){ Id = 15, Name ="Laos", Article= null },
                    new Country(){ Id = 16, Name ="Macao", Article= null },
                    new Country(){ Id = 17, Name ="Malaysia", Article= null },
                    new Country(){ Id = 18, Name ="Maldives", Article= null },
                    new Country(){ Id = 19, Name ="Mongolia", Article= null },
                    new Country(){ Id = 20, Name ="Myanmar", Article= null },
                }
                });

            context.Locations.AddOrUpdate(
    new Location() { Id = 1, CountryId = 7, Name = "Honk hong" },
    new Location() { Id = 2, CountryId = 7, Name = "Honk" },
    new Location() { Id = 3, CountryId = 7, Name = "hong" });

            context.VehicleTypes.AddOrUpdate(
                new VehicleType() { Id = 1, Name = "Car" },
                new VehicleType() { Id = 2, Name = "Trucks" },
                new VehicleType() { Id = 3, Name = "MotorCyles" });

            context.VehicleCategories.AddOrUpdate(
                new VehicleCategory() { Id = 1, Name = "Sedan" },
                new VehicleCategory() { Id = 2, Name = "Hedgeback" },
                new VehicleCategory() { Id = 3, Name = "Pick Up" });

            context.Brands.AddOrUpdate(
    new VehicleBrand() { Id = 1, Name = "Sedan" },
    new VehicleBrand() { Id = 2, Name = "Toyota" },
    new VehicleBrand() { Id = 3, Name = "Honda" },
    new VehicleBrand() { Id = 4, Name = "BMW" });



            context.Models.AddOrUpdate(
    new VehicleModel() { Id = 1, Name = "C" },
    new VehicleModel() { Id = 2, Name = "E" },
    new VehicleModel() { Id = 3, Name = "S" },
     new VehicleModel() { Id = 4, Name = "CLK" },
    new VehicleModel() { Id = 5, Name = "SLK" });



            context.Drives.AddOrUpdate(
    new VehicleDriveType() { Id = 1, Name = "Font Wheel" },
    new VehicleDriveType() { Id = 2, Name = "Rear Wheel" },
    new VehicleDriveType() { Id = 3, Name = "4x4" });


            context.Transmisions.AddOrUpdate(
new VehicleTransmision() { Id = 1, Name = "Manual" },
new VehicleTransmision() { Id = 2, Name = "Semi-automatic" },
new VehicleTransmision() { Id = 3, Name = "Automatic" });


            context.Colors.AddOrUpdate(
new VechicleColor() { Id = 1, Name = "White" },
new VechicleColor() { Id = 2, Name = "Silver" },
new VechicleColor() { Id = 3, Name = "Red" },
new VechicleColor() { Id = 4, Name = "Blue" },
new VechicleColor() { Id = 5, Name = "Dark grey" },
new VechicleColor() { Id = 6, Name = "Light gray" },
new VechicleColor() { Id = 7, Name = "Dark brown" });


            context.Fuels.AddOrUpdate(
new VehicleFuelType() { Id = 1, Name = "Gasoline" },
new VehicleFuelType() { Id = 2, Name = "Diesel" },
new VehicleFuelType() { Id = 3, Name = "LPG" });


            //  This method will be called after migrating to the latest version.
            var userManager = new UserManager<Profile>(new UserStore<Profile>(context));
            var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));

            // Adding Roles
            if (!roleManager.RoleExists(RoleNames.ADMIN)) { roleManager.Create(new IdentityRole(RoleNames.ADMIN)); }
            if (!roleManager.RoleExists(RoleNames.OWNER)) { roleManager.Create(new IdentityRole(RoleNames.OWNER)); }

            // Adding Admin account
            if (userManager.FindByEmail("admin@gpstracking.com") == null)
            {
                var adminUser = new Profile()
                {
                    Email = "admin@gpstracking.com",
                    FirstName = "Global Admin",
                    CountryId = 1,
                    CreatedDate = DateTime.Now,
                    ModifiedDate = DateTime.Now
                };
                userManager.Create(adminUser, "1qaz2wsx");
                userManager.AddToRole(adminUser.Id, RoleNames.ADMIN);
            }

            if (userManager.FindByEmail("tester@gpstracking.com") == null)
            {
                var adminUser = new Profile()
                {
                    Email = "tester@gpstracking.com",
                    FirstName = "Test",
                    LastName = "Owner",
                    CountryId = 1,
                    CreatedDate = DateTime.Now,
                    ModifiedDate = DateTime.Now
                };
                userManager.Create(adminUser, "1qaz2wsx");
                userManager.AddToRole(adminUser.Id, RoleNames.OWNER);
            }



        }
    }
}
