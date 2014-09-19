namespace GPSTracking.Domain.Entities
{
    public class Country
    {
        public string Name { get; set; }
        public string Article { get; set; }

        public virtual Region Region { get; set; }
        public int Id { get; set; }
    }
}