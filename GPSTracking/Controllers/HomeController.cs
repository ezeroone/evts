using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using GPSTracking.Domain.Entities;
using GPSTracking.Domain.Repository;
using GPSTracking.Service;
using GPSTracking.Models;
using GPSTracking.Domain;
using Microsoft.AspNet.Identity.EntityFramework;

namespace GPSTracking.Controllers
{
    public class HomeController : Controller
    {
        private readonly IOwnerService _ownerService;
        private readonly ICommonService _commonService;
       public HomeController(IRepository repository, IUnitOfWork unitOfWork)
        {
           
            _ownerService = new OwnerService(repository, unitOfWork);
            _commonService = new CommonService(repository, unitOfWork);
        }
      
        public ActionResult HeaderPartial()
        {
            var model = new HeaderViewModel();
            if (User.Identity.IsAuthenticated)
            {
                var userId = User.Identity.GetUserId();
                //var user =  CommonService.UserManager.FindById(userId);
                //var userRoles = _catalogSvc.UserManager.GetRoles(userId);

                //model = new HeaderViewModel(user, userRoles);

                var role = User.IsInRole(RoleNames.ADMIN);
            }

            return PartialView("~/Views/Shared/_HeaderPartial.cshtml", model);
        }

        public ActionResult Index()
        {
           
            if (User.Identity.IsAuthenticated && User.IsInRole(RoleNames.OWNER))
            {
                 return RedirectToAction("Index", "Owner");
                
            }
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        
        public ActionResult Detail(int id)
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult Service()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        
        [Authorize(Roles=RoleNames.ADMIN)]
        public ActionResult Dashboard()
        {
            var userId =int.Parse(User.Identity.GetUserId());
            var model = _ownerService.GetVehicles(userId);
            var result = new List<VehicleListItem>();
            foreach(var item in model)
            {
                result.Add(new VehicleListItem(item, _ownerService.GetImages(item.Id).ToList()));
            }
            return View(result);
        }

        public ActionResult Pricing()
        {
            return View();
        }

        public ActionResult Tracking()
        {
            return View();
        }

    }
}