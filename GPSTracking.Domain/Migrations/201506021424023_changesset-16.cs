namespace GPSTracking.Domain.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class changesset16 : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.VehicleOwners", "LastName", c => c.String());
            AlterColumn("dbo.VehicleOwners", "PhoneNumber", c => c.String());
            AlterColumn("dbo.VehicleOwners", "Mobile", c => c.String(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.VehicleOwners", "Mobile", c => c.String());
            AlterColumn("dbo.VehicleOwners", "PhoneNumber", c => c.String(nullable: false));
            AlterColumn("dbo.VehicleOwners", "LastName", c => c.String(nullable: false));
        }
    }
}
