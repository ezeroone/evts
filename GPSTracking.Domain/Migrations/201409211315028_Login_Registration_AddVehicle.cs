namespace GPSTracking.Domain.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Login_Registration_AddVehicle : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.VehicleBrands",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Vehicles",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        OwnerId = c.String(maxLength: 128),
                        Name = c.String(),
                        LocationId = c.Int(nullable: false),
                        TypeId = c.Int(nullable: false),
                        ModelId = c.Int(nullable: false),
                        CategoryId = c.Int(nullable: false),
                        BrandId = c.Int(nullable: false),
                        DriveTypeId = c.Int(nullable: false),
                        FuelTypeId = c.Int(nullable: false),
                        TransmissionId = c.Int(nullable: false),
                        InteriorColorId = c.Int(nullable: false),
                        ExteriorColorId = c.Int(nullable: false),
                        Price = c.Int(nullable: false),
                        Mileage = c.Int(nullable: false),
                        EngCapacity = c.String(),
                        MakeYear = c.Int(nullable: false),
                        RegYear = c.Int(nullable: false),
                        VehicleNo = c.String(),
                        LicenseNo = c.String(),
                        RegistrationNo = c.String(),
                        Description = c.String(),
                        TrackingDeviceId = c.String(),
                        DriverName = c.String(),
                        DriverPhoneNo = c.String(),
                        IsNew = c.Boolean(nullable: false),
                        IsActive = c.Boolean(nullable: false),
                        IsPaid = c.Boolean(nullable: false),
                        LicenseRenewalDate = c.DateTime(nullable: false),
                        RegisteredDate = c.DateTime(nullable: false),
                        CreatedDate = c.DateTime(nullable: false),
                        UpdatedDate = c.DateTime(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.VehicleBrands", t => t.BrandId, cascadeDelete: true)
                .ForeignKey("dbo.VehicleCategories", t => t.CategoryId, cascadeDelete: true)
                .ForeignKey("dbo.VehicleDriveTypes", t => t.DriveTypeId, cascadeDelete: true)
                .ForeignKey("dbo.VechicleColors", t => t.ExteriorColorId)
                .ForeignKey("dbo.VehicleFuelTypes", t => t.FuelTypeId, cascadeDelete: true)
                .ForeignKey("dbo.VechicleColors", t => t.InteriorColorId)
                .ForeignKey("dbo.Locations", t => t.LocationId, cascadeDelete: true)
                .ForeignKey("dbo.VehicleModels", t => t.ModelId, cascadeDelete: true)
                .ForeignKey("dbo.AspNetUsers", t => t.OwnerId)
                .ForeignKey("dbo.VehicleTransmisions", t => t.TransmissionId, cascadeDelete: true)
                .ForeignKey("dbo.VehicleTypes", t => t.TypeId, cascadeDelete: true)
                .Index(t => t.OwnerId)
                .Index(t => t.LocationId)
                .Index(t => t.TypeId)
                .Index(t => t.ModelId)
                .Index(t => t.CategoryId)
                .Index(t => t.BrandId)
                .Index(t => t.DriveTypeId)
                .Index(t => t.FuelTypeId)
                .Index(t => t.TransmissionId)
                .Index(t => t.InteriorColorId)
                .Index(t => t.ExteriorColorId);
            
            CreateTable(
                "dbo.VehicleCategories",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.VehicleDriveTypes",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.VechicleColors",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.VehicleFuelTypes",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Locations",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                        Article = c.String(),
                        CountryId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Countries", t => t.CountryId, cascadeDelete: true)
                .Index(t => t.CountryId);
            
            CreateTable(
                "dbo.Countries",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        RegionId = c.Int(nullable: false),
                        Name = c.String(),
                        Article = c.String(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Regions", t => t.RegionId, cascadeDelete: true)
                .Index(t => t.RegionId);
            
            CreateTable(
                "dbo.Regions",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.VehicleModels",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.AspNetUsers",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        UserId = c.Int(nullable: false),
                        FirstName = c.String(),
                        LastName = c.String(),
                        UserName = c.String(nullable: false, maxLength: 256),
                        Mobile = c.String(),
                        Street = c.String(),
                        City = c.String(),
                        State = c.String(),
                        Zipcode = c.String(),
                        Remark = c.String(),
                        CountryId = c.Int(nullable: false),
                        CreatedDate = c.DateTime(nullable: false),
                        ModifiedDate = c.DateTime(nullable: false),
                        IsDeleted = c.Boolean(nullable: false),
                        IsActive = c.Boolean(nullable: false),
                        Citizenship = c.String(),
                        Email = c.String(maxLength: 256),
                        EmailConfirmed = c.Boolean(nullable: false),
                        PasswordHash = c.String(),
                        SecurityStamp = c.String(),
                        PhoneNumber = c.String(),
                        PhoneNumberConfirmed = c.Boolean(nullable: false),
                        TwoFactorEnabled = c.Boolean(nullable: false),
                        LockoutEndDateUtc = c.DateTime(),
                        LockoutEnabled = c.Boolean(nullable: false),
                        AccessFailedCount = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Countries", t => t.CountryId, cascadeDelete: true)
                .Index(t => t.UserName, unique: true, name: "UserNameIndex")
                .Index(t => t.CountryId);
            
            CreateTable(
                "dbo.AspNetUserClaims",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        UserId = c.String(nullable: false, maxLength: 128),
                        ClaimType = c.String(),
                        ClaimValue = c.String(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.AspNetUserLogins",
                c => new
                    {
                        LoginProvider = c.String(nullable: false, maxLength: 128),
                        ProviderKey = c.String(nullable: false, maxLength: 128),
                        UserId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.LoginProvider, t.ProviderKey, t.UserId })
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.AspNetUserRoles",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        RoleId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.UserId, t.RoleId })
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .ForeignKey("dbo.AspNetRoles", t => t.RoleId, cascadeDelete: true)
                .Index(t => t.UserId)
                .Index(t => t.RoleId);
            
            CreateTable(
                "dbo.VehicleTransmisions",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.VehicleTypes",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.VehicleImages",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        VehicleId = c.Int(nullable: false),
                        Description = c.String(),
                        ImagePath = c.String(),
                        IsDefaultImage = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Vehicles", t => t.VehicleId, cascadeDelete: true)
                .Index(t => t.VehicleId);
            
            CreateTable(
                "dbo.VehicleVideos",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        VehicleId = c.Int(nullable: false),
                        Path = c.String(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Vehicles", t => t.VehicleId, cascadeDelete: true)
                .Index(t => t.VehicleId);
            
            CreateTable(
                "dbo.PasswordResetTokens",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        EncryptedForm = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.PaymentTypes",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.AspNetRoles",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        Name = c.String(nullable: false, maxLength: 256),
                    })
                .PrimaryKey(t => t.Id)
                .Index(t => t.Name, unique: true, name: "RoleNameIndex");
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.AspNetUserRoles", "RoleId", "dbo.AspNetRoles");
            DropForeignKey("dbo.VehicleVideos", "VehicleId", "dbo.Vehicles");
            DropForeignKey("dbo.VehicleImages", "VehicleId", "dbo.Vehicles");
            DropForeignKey("dbo.Vehicles", "TypeId", "dbo.VehicleTypes");
            DropForeignKey("dbo.Vehicles", "TransmissionId", "dbo.VehicleTransmisions");
            DropForeignKey("dbo.Vehicles", "OwnerId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserRoles", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserLogins", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUsers", "CountryId", "dbo.Countries");
            DropForeignKey("dbo.AspNetUserClaims", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.Vehicles", "ModelId", "dbo.VehicleModels");
            DropForeignKey("dbo.Vehicles", "LocationId", "dbo.Locations");
            DropForeignKey("dbo.Locations", "CountryId", "dbo.Countries");
            DropForeignKey("dbo.Countries", "RegionId", "dbo.Regions");
            DropForeignKey("dbo.Vehicles", "InteriorColorId", "dbo.VechicleColors");
            DropForeignKey("dbo.Vehicles", "FuelTypeId", "dbo.VehicleFuelTypes");
            DropForeignKey("dbo.Vehicles", "ExteriorColorId", "dbo.VechicleColors");
            DropForeignKey("dbo.Vehicles", "DriveTypeId", "dbo.VehicleDriveTypes");
            DropForeignKey("dbo.Vehicles", "CategoryId", "dbo.VehicleCategories");
            DropForeignKey("dbo.Vehicles", "BrandId", "dbo.VehicleBrands");
            DropIndex("dbo.AspNetRoles", "RoleNameIndex");
            DropIndex("dbo.VehicleVideos", new[] { "VehicleId" });
            DropIndex("dbo.VehicleImages", new[] { "VehicleId" });
            DropIndex("dbo.AspNetUserRoles", new[] { "RoleId" });
            DropIndex("dbo.AspNetUserRoles", new[] { "UserId" });
            DropIndex("dbo.AspNetUserLogins", new[] { "UserId" });
            DropIndex("dbo.AspNetUserClaims", new[] { "UserId" });
            DropIndex("dbo.AspNetUsers", new[] { "CountryId" });
            DropIndex("dbo.AspNetUsers", "UserNameIndex");
            DropIndex("dbo.Countries", new[] { "RegionId" });
            DropIndex("dbo.Locations", new[] { "CountryId" });
            DropIndex("dbo.Vehicles", new[] { "ExteriorColorId" });
            DropIndex("dbo.Vehicles", new[] { "InteriorColorId" });
            DropIndex("dbo.Vehicles", new[] { "TransmissionId" });
            DropIndex("dbo.Vehicles", new[] { "FuelTypeId" });
            DropIndex("dbo.Vehicles", new[] { "DriveTypeId" });
            DropIndex("dbo.Vehicles", new[] { "BrandId" });
            DropIndex("dbo.Vehicles", new[] { "CategoryId" });
            DropIndex("dbo.Vehicles", new[] { "ModelId" });
            DropIndex("dbo.Vehicles", new[] { "TypeId" });
            DropIndex("dbo.Vehicles", new[] { "LocationId" });
            DropIndex("dbo.Vehicles", new[] { "OwnerId" });
            DropTable("dbo.AspNetRoles");
            DropTable("dbo.PaymentTypes");
            DropTable("dbo.PasswordResetTokens");
            DropTable("dbo.VehicleVideos");
            DropTable("dbo.VehicleImages");
            DropTable("dbo.VehicleTypes");
            DropTable("dbo.VehicleTransmisions");
            DropTable("dbo.AspNetUserRoles");
            DropTable("dbo.AspNetUserLogins");
            DropTable("dbo.AspNetUserClaims");
            DropTable("dbo.AspNetUsers");
            DropTable("dbo.VehicleModels");
            DropTable("dbo.Regions");
            DropTable("dbo.Countries");
            DropTable("dbo.Locations");
            DropTable("dbo.VehicleFuelTypes");
            DropTable("dbo.VechicleColors");
            DropTable("dbo.VehicleDriveTypes");
            DropTable("dbo.VehicleCategories");
            DropTable("dbo.Vehicles");
            DropTable("dbo.VehicleBrands");
        }
    }
}
