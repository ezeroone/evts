using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace GPSTracking.Domain.Entities
{
    public class Country
    {
        [Key] 
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column(Order=1)]
        public int Id { get; set; }

        [Column(Order = 2)]
        public int RegionId { get; set; }

        [Column(Order = 3)]
        public string Name { get; set; }

        [Column(Order = 4)]
        public string Article { get; set; }



        [ForeignKey("RegionId")]
        public virtual Region Region { get; set; }

    }
}