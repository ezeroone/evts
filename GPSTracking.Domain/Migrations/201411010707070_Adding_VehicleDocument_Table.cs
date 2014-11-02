namespace GPSTracking.Domain.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Adding_VehicleDocument_Table : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.VehicleDocuments",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        VehicleId = c.Int(nullable: false),
                        Path = c.String(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Vehicles", t => t.VehicleId, cascadeDelete: true)
                .Index(t => t.VehicleId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.VehicleDocuments", "VehicleId", "dbo.Vehicles");
            DropIndex("dbo.VehicleDocuments", new[] { "VehicleId" });
            DropTable("dbo.VehicleDocuments");
        }
    }
}
