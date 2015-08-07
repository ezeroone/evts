using Castle.MicroKernel.Registration;
using Castle.MicroKernel.SubSystems.Configuration;
using Castle.Windsor;
using GPSTracking.Domain;
using GPSTracking.Domain.Repository;

namespace GPSTracking.Infrastructure
{
    public class RepositoriesInstaller : IWindsorInstaller
    {
        public void Install(IWindsorContainer container, IConfigurationStore store)
        {

            container.Register(Component.For(typeof(IRepository))
                                        .ImplementedBy((typeof(Repository)))
                                        .LifestylePerWebRequest());
            
            container.Register(Component.For<IUnitOfWork>()
                                        .ImplementedBy<UnitOfWork>()
                                        .LifestylePerWebRequest());


            
           
        }
    }
}