using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace GPSTracking.Controllers
{
    public class IoTController : ApiController
    {
        // GET api/iot
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/iot/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/iot
        public void Post([FromBody]string value)
        {
        }

        // PUT api/iot/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/iot/5
        public void Delete(int id)
        {
        }
    }
}
