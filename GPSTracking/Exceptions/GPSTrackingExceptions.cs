using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GPSTracking.Exceptions
{

    public class GPSTrackingExceptions: Exception
    {
        public GPSTrackingExceptions()
            :base()
        { }

        public GPSTrackingExceptions(string message)
            : base(message)
        { }

        public GPSTrackingExceptions(string message, Exception innerException)
            : base(message, innerException)
        { }

    }
}