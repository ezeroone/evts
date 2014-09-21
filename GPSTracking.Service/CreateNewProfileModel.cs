using GPSTracking.Domain.Entities;

namespace GPSTracking.Service
{
    public class CreateNewProfileModel
    {
        public Profile Profile { get; set; }
        public string Password { get; set; }
    }
}