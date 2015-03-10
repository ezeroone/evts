using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GPSTracking.Models
{
    public class ResponseViewModel
    {
        public string Status;
        public string Message;
        public object Data;


        public ResponseViewModel()
        {
            this.Status = "";
            this.Message = "";
            this.Data = null;
        }
    }
}