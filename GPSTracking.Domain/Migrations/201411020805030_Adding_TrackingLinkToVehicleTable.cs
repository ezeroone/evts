namespace GPSTracking.Domain.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Adding_TrackingLinkToVehicleTable : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Vehicles", "TrackingLink", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Vehicles", "TrackingLink");
        }
    }
}
