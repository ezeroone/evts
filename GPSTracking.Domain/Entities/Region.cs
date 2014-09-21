using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace GPSTracking.Domain.Entities
{
    public class Region
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column(Order = 1)]
        public int Id { get; set; }

        [Column(Order = 2)]
        public string Name { get; set; }



        public ICollection<Country> Countries { get; set; }
    }
}