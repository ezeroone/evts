using System;
using System.Web.Mvc;
using GPSTracking.Domain;
using GPSTracking.Domain.Repository;
using Ninject;
using Ninject.Web.Common;
using GPSTracking.Service;

namespace GPSTracking
{
    public class NinjectControllerFactory : DefaultControllerFactory
    {
        private readonly IKernel _nInjectKernel;

        public NinjectControllerFactory()
        {
            _nInjectKernel = new StandardKernel();
            AddBindings();
        }

        protected override IController GetControllerInstance(System.Web.Routing.RequestContext requestContext, Type controllerType)
        {
            return controllerType == null ? null : (IController)_nInjectKernel.Get(controllerType);
        }

        private void AddBindings()
        {
            
            _nInjectKernel.Bind<IRepository>().To<Repository>().InRequestScope();
            _nInjectKernel.Bind<IUnitOfWork>().To<UnitOfWork>().InRequestScope();

        }
    }
}