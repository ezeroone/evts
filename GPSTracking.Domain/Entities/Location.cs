namespace GPSTracking.Domain.Entities
{
    public class Location
    {
        public string Name { get; set; }
        public string Article { get; set; }

        public virtual Region Region { get; set; }
        public virtual Country Country { get; set; }
        public int Id { get; set; }
    }
}