using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GPSTracking.Domain.Entities;
using Microsoft.AspNet.Identity.EntityFramework;

namespace GPSTracking.Domain
{
    public interface IDataContext
    {
        GpsTrackingContext GetEntityContext();
    }

    public class ContextRepository : IDataContext
    {
        private readonly GpsTrackingContext _context = new GpsTrackingContext();
        public GpsTrackingContext GetEntityContext()
        {
            return _context;
        }

        public void Dispose()
        {
            _context.Dispose();
        }
    }

    public partial class GpsTrackingContext : IdentityDbContext<Profile>
    {
        public GpsTrackingContext(): base("GpsTrackingConnection")
        {
            //AutomaticMigrationsEnabled = false;
            Configuration.LazyLoadingEnabled = true;
        }

        //protected override void OnModelCreating(DbModelBuilder modelBuilder)
        //{
        //    modelBuilder.Conventions.Remove<OneToManyCascadeDeleteConvention>();
        //    base.OnModelCreating(modelBuilder);
        //}
        static GpsTrackingContext()
        {
            //Calling the Method to ReCreate the database
            // Database.SetInitializer(new DropCreateDatabaseIfModelChanges<eHorakelleDataContext>());

            // Database.SetInitializer(new CustomDatabaseInitializer());

            //this line will disbale the code first database initialization feature
            //Database.SetInitializer<GpsTrackingContext>(null);

            //Database.SetInitializer(new CreateDatabaseIfNotExists<eHorakelleDataContext>());
        }
        
        //public DbSet<Owner> Owners { get; set; }
        public DbSet<Country> Countries { get; set; }
        public DbSet<Vehicle> Vehicles { get; set; }
        public DbSet<Model> Models { get; set; }
        public DbSet<Drive> Drives { get; set; }
        public DbSet<ExteriorColor> ExteriorColors { get; set; }
        public DbSet<Fuel> Fuels { get; set; }
        public DbSet<InteriorColor> InteriorColors { get; set; }
        public DbSet<Location> Locations { get; set; }
        public DbSet<PasswordResetToken> PasswordResetTokens { get; set; }
        public DbSet<PaymentType> PaymentTypes { get; set; }
        public DbSet<Region> Regions { get; set; }
        public DbSet<Transmision> Transmisions { get; set; }
        public DbSet<VehicleCategory> VehicleCategories { get; set; }
        public DbSet<VehicleType> VehicleTypes { get; set; }
        public DbSet<VehicleImage> VehicleImages { get; set; }
        public DbSet<VehicleVideo> VehicleVideos { get; set; }
    }
}
