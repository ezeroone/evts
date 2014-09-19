namespace GPSTracking.Domain.Entities
{
    public class PasswordResetToken
    {
        public string EncryptedForm { get; set; }
        public int Id { get; set; }
    }
}