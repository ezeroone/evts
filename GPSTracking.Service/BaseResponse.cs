namespace GPSTracking.Service
{
    public class BaseResponse
    {

        public BaseResponse(bool status)
        {
            this.Status = status;
            this.Message = string.Empty;
        }

        public BaseResponse(bool status, string message)
        {
            this.Status = status;
            this.Message = message;
        }

        public bool Status { get; set; }
        public string Message { get; set; }
    }
}