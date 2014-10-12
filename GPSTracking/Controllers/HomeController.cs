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

        private readonly IRepository _repository;
        private readonly IOwnerService _ownerService;
        private readonly IUnitOfWork _unitOfWork;
        private readonly UserManager<Profile> _userManager;




        public HomeController(IRepository repository, IUnitOfWork unitOfWork)
        {
            var _context = new GpsTrackingContext();
            _repository = new Repository(_context);
            _unitOfWork = new UnitOfWork(_context);
            _ownerService = new OwnerService(_repository, _unitOfWork);
            _userManager = new UserManager<Profile>(new UserStore<Profile>(_context));
        }



        public ActionResult HeaderPartial()
        {
            var model = new HeaderViewModel();
            if (User.Identity.IsAuthenticated)
            {
                var userId = User.Identity.GetUserId();
                var user = _userManager.FindById(userId);
                var userRoles = _userManager.GetRoles(userId);

                model = new HeaderViewModel(user, userRoles);
            }

            return PartialView("~/Views/Shared/_HeaderPartial.cshtml", model);
        }




        public ActionResult Index()
        {
            if (User.Identity.IsAuthenticated)
            {
                var id= User.Identity.GetUserId();
                var name = User.Identity.Name;
                var role=User.IsInRole("Admin");
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

        [Authorize]
        [HttpGet]
        public ActionResult Addvehicle(int ?id)
        {
            var model = _ownerService.GetVehicle(id ?? -1);
            if (model == null) { model = new Vehicle(); }
            ViewBag.VM = new VehicleViewModel() 
            {
                 AvailableLocations = _ownerService.AllLocations().ToList(),
                 AvailableVechicleColors = _ownerService.AllVechicleColors().ToList(),
                 AvailableVehicleBrands = _ownerService.AllVehicleBrands().ToList(),
                 AvailableVehicleCategories = _ownerService.AllVehicleCategorys().ToList(),
                  AvailableVehicleDriveTypes = _ownerService.AllVehicleDriveTypes().ToList(),
                   AvailableVehicleFuelTypes = _ownerService.AllVehicleFuelTypes().ToList(),
                    AvailableVehicleModels = _ownerService.AllVehicleModels().ToList(),
                     AvailableVehicleTransmisions = _ownerService.AllVehicleTransmisions().ToList(),
                      AvailableVehicleTypes = _ownerService.AllVehicleTypes().ToList()
            };
            return View(model);
        }

        [Authorize]
        [HttpPost]
        public ActionResult Addvehicle(Vehicle model)
        {
            if (ModelState.IsValid)
            {
                model.OwnerId = User.Identity.GetUserId();
                if (_ownerService.AddUpdateVechile(model))
                {
                    return RedirectToAction("Addvehicle");
                }
            }

            ViewBag.VM = new VehicleViewModel()
            {
                AvailableLocations = _ownerService.AllLocations().ToList(),
                AvailableVechicleColors = _ownerService.AllVechicleColors().ToList(),
                AvailableVehicleBrands = _ownerService.AllVehicleBrands().ToList(),
                AvailableVehicleCategories = _ownerService.AllVehicleCategorys().ToList(),
                AvailableVehicleDriveTypes = _ownerService.AllVehicleDriveTypes().ToList(),
                AvailableVehicleFuelTypes = _ownerService.AllVehicleFuelTypes().ToList(),
                AvailableVehicleModels = _ownerService.AllVehicleModels().ToList(),
                AvailableVehicleTransmisions = _ownerService.AllVehicleTransmisions().ToList(),
                AvailableVehicleTypes = _ownerService.AllVehicleTypes().ToList()
            };
            return View(model);
        }


        public ActionResult ImageUpload(HttpPostedFileBase[] files)
        {
            return View("");
        }



        #region Images 


        [HttpGet]
        public ActionResult VehicleImages(int vehicleId)
        {
            var result = _ownerService.GetImages(vehicleId).ToList();
            return View("_VehicleImages", result);
        }


        #endregion




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

        public ActionResult Dashboard(int ownerId)
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

    }
}