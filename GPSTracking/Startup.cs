using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GPSTracking.Startup))]
namespace GPSTracking
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
