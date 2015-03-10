using GPSTracking.Core.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GPSTracking.Core.ViewModels
{
    public class AjaxDataResponse<T>
    {
        public T Data { get; set; }
        public ResponseStatus Status { get; set; }
        public string Message { get; set; }
        public Exception Log { get; set; }



        public AjaxDataResponse(T data, ResponseStatus status, string message, Exception log)
        {
            this.Data = data;
            this.Status = status;
            this.Message = message;
            this.Log = log;
        }

        public AjaxDataResponse(T data, ResponseStatus status)
            : this(data, status, "", null)
        { }

        public AjaxDataResponse(ResponseStatus status)
            : this(default(T), status, "", null)
        { }
    }
}