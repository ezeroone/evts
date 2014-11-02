using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GPSTracking.Exceptions
{
    public class CatchableException : GPSTrackingExceptions
    {
        public CatchableException()
            :base()
        { }

        public CatchableException(string message)
            : base(message)
        { }

        public CatchableException(string message, Exception innerException)
            : base(message, innerException)
        { }

    }
}