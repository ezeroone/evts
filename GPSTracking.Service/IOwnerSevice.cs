using System.Collections.Generic;
using System.Linq;
using GPSTracking.Domain.Entities;
using GPSTracking.Domain.Repository;


namespace GPSTracking.Service
{
    public interface ICustomerService
    {
        IEnumerable<Country> AllCountries();
     
    }
    public class CustomerService : ICustomerService
    {
        private readonly IRepository _repository;
        private readonly IUnitOfWork _unitOfWork;

        public CustomerService(IRepository repository, IUnitOfWork unitOfWork)
        {
            _repository = repository;
            _unitOfWork = unitOfWork;
        }

        public IEnumerable<Country> AllCountries()
        {
            return (from e in _repository.All<Country>()
                    select e).OrderBy(o=>o.Name).Distinct().AsEnumerable();
        }
        
    }
}
