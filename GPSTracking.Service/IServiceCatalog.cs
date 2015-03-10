using GPSTracking.Domain.Entities;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GPSTracking.Service
{
    public interface IServiceCatalog : IDisposable
    {
        UserManager<Profile> UserManager { get; }
        ICommonService CommonService { get; }
        IOwnerService OwnerService { get; }
    }
}
