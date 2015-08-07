using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using GPSTracking.Common;
using GPSTracking.Domain;
using GPSTracking.Domain.Repository;
using GPSTracking.Models;
using GPSTracking.Service;
using Microsoft.AspNet.Identity;

namespace GPSTracking.Controllers
{
   
    [Authorize(Roles = RoleNames.OWNER)]
    public class OwnerController : Controller
    {
        private const string IMAGE_ROOT = "/Images";
        private const string DOCUMENT_ROOT = "/Documents";
        private const string VEHICLE_IMAGE = IMAGE_ROOT + "/Vehicle{0}";
        private const string VEHICLE_DOCUMENT = DOCUMENT_ROOT + "/Vehicle{0}";

        private readonly IOwnerService _ownerService;
        private readonly ICommonService _commonService;
        public OwnerController(IRepository repository, IUnitOfWork unitOfWork)
        {
            _ownerService = new OwnerService(repository, unitOfWork);
            _commonService = new CommonService(repository, unitOfWork);
        }
        // GET: /Owner/
        public ActionResult Index()
        {
            ViewBag.UserName = "Mr/Mrs.";
            var result = new OwnerModel
            {
                Vehicles = new List<VehicleListItem>(),
            };
            if (User.Identity.IsAuthenticated)
            {                
                var userId = int.Parse(User.Identity.GetUserId());
                ViewBag.UserId = userId;
                var owner = _ownerService.GetOwner(userId);
                if (owner != null)
                {
                    result.Owner = owner;
                    ViewBag.UserName = owner.DisplayName;
                }
                else
                {
                    ViewBag.UserName = User.Identity.Name;

                }
                //var model = _ownerService.GetVehicles(userId);
                //foreach (var item in model)
                //{
                //    result.Vehicles.Add(new VehicleListItem(item, _ownerService.GetImages(item.Id).ToList()));
                //}
            }
            return View(result);
        }

        
        public ActionResult Dashboard(int id)
        {
            var model = _ownerService.GetOwner(id);
            return PartialView("_Dashboard", model);
        }

        public ActionResult OwnerProfile(int id)
        {
            var model = _ownerService.GetOwner(id);
            return PartialView("_OwnerProfile", model);
        }

         //[Authorize]
        // [HttpGet]
        public ActionResult Addvehicle(int id)
        {
            //var model = _ownerService.GetOwner(id);
            //return PartialView("_Addvehicle", model);
            var years = new List<DisplayNameValue>();
            for (int i = 1975; i < DateTime.Now.Year; i++)
            {
                years.Add(new DisplayNameValue
                {
                    Name=i.ToString(),
                    Id=i.ToString()
                });
            }
            var model = new VehicleViewModel()
            {
                AvailableLocations = _commonService.GetLocations().ToList(),
                AvailableVechicleColors = _commonService.GetVechicleColors().ToList(),
                AvailableVehicleBrands = _commonService.GetVehicleBrands().ToList(),
                AvailableVehicleCategories = _commonService.GetVehicleCategories().ToList(),
                AvailableVehicleDriveTypes = _commonService.GetVehicleDriveTypes().ToList(),
                AvailableVehicleFuelTypes = _commonService.GetVehicleFuelTypes().ToList(),
                AvailableVehicleModels = _commonService.GetVehicleModels().ToList(),
                AvailableVehicleTransmisions = _commonService.GetVehicleTransmisions().ToList(),
                AvailableVehicleTypes = _commonService.GetVehicleTypes().ToList(),
                OwnerId=id,
                Vehicle=new Domain.Entities.Vehicle(),
                Years= years
            }; 
            
            return PartialView("_Addvehicle", model);
        }

        // [Authorize]
         [HttpPost]
         public ActionResult AddEdit(VehicleViewModel model)
         {
             if (ModelState.IsValid)
             {
                 model.OwnerId = int.Parse(User.Identity.GetUserId());
                 if (_ownerService.AddUpdateVechile(model.Vehicle))
                 {
                     return RedirectToAction("AddEdit", new { id = model.VehicleId });
                 }
             }

             ViewBag.VM = new VehicleViewModel()
             {
                 AvailableLocations = _commonService.GetLocations().ToList(),
                 AvailableVechicleColors = _commonService.GetVechicleColors().ToList(),
                 AvailableVehicleBrands = _commonService.GetVehicleBrands().ToList(),
                 AvailableVehicleCategories = _commonService.GetVehicleCategories().ToList(),
                 AvailableVehicleDriveTypes = _commonService.GetVehicleDriveTypes().ToList(),
                 AvailableVehicleFuelTypes = _commonService.GetVehicleFuelTypes().ToList(),
                 AvailableVehicleModels = _commonService.GetVehicleModels().ToList(),
                 AvailableVehicleTransmisions = _commonService.GetVehicleTransmisions().ToList(),
                 AvailableVehicleTypes = _commonService.GetVehicleTypes().ToList()
             };
             return View(model);
         }

        public ActionResult AlertSetting(int id)
        {
            var model = _ownerService.GetOwner(id);
            return PartialView("_AlertSetting", model);
        }
        public ActionResult ManageAds(int id)
        {
            var model = _ownerService.GetOwner(id);
            return PartialView("_ManageAds", model);
        }
        public ActionResult CreateAd(int id,int vehicleId)
        {
            var model = _ownerService.GetOwner(id);
            return PartialView("_CreateAd", model);
        }

        public ActionResult Details(int id, int vehicleId)
        {
            var model = _ownerService.GetOwner(id);
            return PartialView("_CreateAd", model);
        }
	}
}