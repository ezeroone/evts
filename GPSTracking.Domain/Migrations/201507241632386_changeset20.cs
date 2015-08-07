namespace GPSTracking.Domain.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class changeset20 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Vehicles", "Make", c => c.String());
            AddColumn("dbo.Vehicles", "ChassisNo", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Vehicles", "ChassisNo");
            DropColumn("dbo.Vehicles", "Make");
        }
    }
}
