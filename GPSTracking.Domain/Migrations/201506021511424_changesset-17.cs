namespace GPSTracking.Domain.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class changesset17 : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.VehicleOwners", "SecretQuestionId", "dbo.SecretQuestions");
            DropIndex("dbo.VehicleOwners", new[] { "SecretQuestionId" });
            AlterColumn("dbo.VehicleOwners", "SecretQuestionId", c => c.Int());
            CreateIndex("dbo.VehicleOwners", "SecretQuestionId");
            AddForeignKey("dbo.VehicleOwners", "SecretQuestionId", "dbo.SecretQuestions", "Id");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.VehicleOwners", "SecretQuestionId", "dbo.SecretQuestions");
            DropIndex("dbo.VehicleOwners", new[] { "SecretQuestionId" });
            AlterColumn("dbo.VehicleOwners", "SecretQuestionId", c => c.Int(nullable: false));
            CreateIndex("dbo.VehicleOwners", "SecretQuestionId");
            AddForeignKey("dbo.VehicleOwners", "SecretQuestionId", "dbo.SecretQuestions", "Id", cascadeDelete: true);
        }
    }
}
