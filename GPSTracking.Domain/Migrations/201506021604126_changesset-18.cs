namespace GPSTracking.Domain.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class changesset18 : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.VehicleOwners", "TitleId", "dbo.Titles");
            DropIndex("dbo.VehicleOwners", new[] { "TitleId" });
            AlterColumn("dbo.VehicleOwners", "TitleId", c => c.Int());
            CreateIndex("dbo.VehicleOwners", "TitleId");
            AddForeignKey("dbo.VehicleOwners", "TitleId", "dbo.Titles", "Id");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.VehicleOwners", "TitleId", "dbo.Titles");
            DropIndex("dbo.VehicleOwners", new[] { "TitleId" });
            AlterColumn("dbo.VehicleOwners", "TitleId", c => c.Int(nullable: false));
            CreateIndex("dbo.VehicleOwners", "TitleId");
            AddForeignKey("dbo.VehicleOwners", "TitleId", "dbo.Titles", "Id", cascadeDelete: true);
        }
    }
}
