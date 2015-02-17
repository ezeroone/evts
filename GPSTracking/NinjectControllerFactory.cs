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
            //_nInjectKernel.Bind<IDataContext>().To<ContextRepository>().InRequestScope();
            _nInjectKernel.Bind<IServiceCatalog>().To<ServiceCatalog>().InRequestScope();
            //_nInjectKernel.Bind<IRepository<TEntity>>().To<GenericRepository>().InRequestScope();
           

            ////Register services with Ninject DI Container
            //_nInjectKernel.Bind<eZeroOne.Service.Users.IUserService>().To<eZeroOne.Service.Users.UserService>().InRequestScope();
            //_nInjectKernel.Bind<eZeroOne.Service.Common.ICommon>().To<eZeroOne.Service.Common.Common>().InRequestScope();
            //_nInjectKernel.Bind<eZeroOne.Service.Employee.IEmployee>().To<eZeroOne.Service.Employee.Employee>().InRequestScope();
            //_nInjectKernel.Bind<eZeroOne.Service.Items.IItems>().To<eZeroOne.Service.Items.Items>().InRequestScope();
            //_nInjectKernel.Bind<eZeroOne.Service.Customers.ICustomerService>().To<eZeroOne.Service.Customers.CustomerService>().InRequestScope();   



        }
    }
}