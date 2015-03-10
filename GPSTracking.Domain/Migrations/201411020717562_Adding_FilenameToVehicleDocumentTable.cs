namespace GPSTracking.Domain.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Adding_FilenameToVehicleDocumentTable : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.VehicleDocuments", "FileName", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.VehicleDocuments", "FileName");
        }
    }
}
