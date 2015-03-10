using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GPSTracking.Domain.Entities;
using Microsoft.AspNet.Identity.EntityFramework;
using System.ComponentModel.DataAnnotations.Schema;

namespace GPSTracking.Domain
{
    /// <summary>
    /// An interface for disposable data context
    /// </summary>
    public interface IDataContext : IDisposable
    {
        GpsTrackingContext EntityContext
        {
            get;
        } 
    }



    /// <summary>
    /// A data contxt implmentation
    /// </summary>
    public class ContextRepository : IDataContext
    {
        private readonly GpsTrackingContext _context = new GpsTrackingContext();


        public GpsTrackingContext EntityContext
        {
            get { return _context; }
        }

        public void Dispose()
        {
            if (_context == null) { return; }
            _context.Dispose();
        }
    }




    public class GpsTrackingContext : IdentityDbContext<Profile>
    {
        public GpsTrackingContext()
            : base("GpsTrackingConnection")
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
        public DbSet<Location> Locations { get; set; }
        public DbSet<PasswordResetToken> PasswordResetTokens { get; set; }
        public DbSet<PaymentType> PaymentTypes { get; set; }
        public DbSet<Region> Regions { get; set; }

        public DbSet<Vehicle> Vehicles { get; set; }
        public DbSet<VehicleModel> Models { get; set; }
        public DbSet<VehicleBrand> Brands { get; set; }
        public DbSet<VehicleDriveType> Drives { get; set; }
        public DbSet<VechicleColor> Colors { get; set; }
        public DbSet<VehicleFuelType> Fuels { get; set; }
        public DbSet<VehicleTransmision> Transmisions { get; set; }
        public DbSet<VehicleCategory> VehicleCategories { get; set; }
        public DbSet<VehicleType> VehicleTypes { get; set; }
        public DbSet<VehicleImage> VehicleImages { get; set; }
        public DbSet<VehicleDocument> VehicleDocuments { get; set; }
        public DbSet<VehicleVideo> VehicleVideos { get; set; }




        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
          

            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Vehicle>()
                   .HasRequired(m => m.InteriorColor)
                   .WithMany(t => t.InteriorColorVehicles)
                   .HasForeignKey(m => m.InteriorColorId)
                   .WillCascadeOnDelete(false);

            modelBuilder.Entity<Vehicle>()
                       .HasRequired(m => m.ExteriorColor)
                       .WithMany(t => t.ExteriorColorVehicles)
                       .HasForeignKey(m => m.ExteriorColorId)
                       .WillCascadeOnDelete(false);
        }

    }
}
