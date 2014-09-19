using GPSTracking.Domain.Entities;

namespace GPSTracking.Service
{
    public class CreateNewProfileModel
    {
        public ApplicationUser Profile { get; set; }
        public string Password { get; set; }
    }
}