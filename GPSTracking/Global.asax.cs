using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using Castle.MicroKernel.Registration;
using Castle.Windsor;
using GPSTracking.Controllers;
using GPSTracking.Domain;
using GPSTracking.Domain.Repository;
using GPSTracking.Infrastructure;

namespace GPSTracking
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
          
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
             
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

           // ControllerBuilder.Current.SetControllerFactory(new NinjectControllerFactory());
           WindsorWrapper();
        }
        private static void WindsorWrapper()
        {
            WindsorContainerWrapper.Container = new WindsorContainer();

            //builder.RegisterType<AccountController>().InstancePerDependency();
         
            WindsorContainerWrapper.Container.Register(Component.For<GpsTrackingContext>().LifeStyle.PerWebRequest);

           
            WindsorContainerWrapper.Container.Install(new LoggerInstaller(),
                                                    new RepositoriesInstaller(),
                                                    new ControllersInstaller());

            var controllerFactory = new WindsorControllerFactory(WindsorContainerWrapper.Container.Kernel);
            ControllerBuilder.Current.SetControllerFactory(controllerFactory);

        }

        
    }
}
