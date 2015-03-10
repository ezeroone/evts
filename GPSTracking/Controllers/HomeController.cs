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
        private readonly IServiceCatalog _catalogSvc;

        public HomeController(IServiceCatalog catalogSvc)
        {
            _catalogSvc = catalogSvc;
        }



        public ActionResult HeaderPartial()
        {
            var model = new HeaderViewModel();
            if (User.Identity.IsAuthenticated)
            {
                var userId = User.Identity.GetUserId();
                var user =  _catalogSvc.UserManager.FindById(userId);
                var userRoles = _catalogSvc.UserManager.GetRoles(userId);

                model = new HeaderViewModel(user, userRoles);
            }

            return PartialView("~/Views/Shared/_HeaderPartial.cshtml", model);
        }




        public ActionResult Index()
        {
            if (User.Identity.IsAuthenticated && User.IsInRole(RoleNames.OWNER)) { return RedirectToAction("Dashboard"); }
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

        //[Authorize]
        //[HttpGet]
        //public ActionResult Addvehicle(int ?id)
        //{
        //    var model = _catalogSvc.OwnerService.GetVehicle(id ?? -1);
        //    if (model == null) { model = new Vehicle(); }
        //    ViewBag.VM = new VehicleViewModel() 
        //    {
        //        AvailableLocations = _catalogSvc.CommonService.GetLocations().ToList(),
        //        AvailableVechicleColors = _catalogSvc.CommonService.GetVechicleColors().ToList(),
        //        AvailableVehicleBrands = _catalogSvc.CommonService.GetVehicleBrands().ToList(),
        //        AvailableVehicleCategories = _catalogSvc.CommonService.GetVehicleCategories().ToList(),
        //        AvailableVehicleDriveTypes = _catalogSvc.CommonService.GetVehicleDriveTypes().ToList(),
        //        AvailableVehicleFuelTypes = _catalogSvc.CommonService.GetVehicleFuelTypes().ToList(),
        //        AvailableVehicleModels = _catalogSvc.CommonService.GetVehicleModels().ToList(),
        //        AvailableVehicleTransmisions = _catalogSvc.CommonService.GetVehicleTransmisions().ToList(),
        //        AvailableVehicleTypes = _catalogSvc.CommonService.GetVehicleTypes().ToList()
        //    };
        //    return View(model);
        //}

        //[Authorize]
        //[HttpPost]
        //public ActionResult Addvehicle(Vehicle model)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        model.OwnerId = User.Identity.GetUserId();
        //        if (_catalogSvc.OwnerService.AddUpdateVechile(model))
        //        {
        //            return RedirectToAction("Addvehicle");
        //        }
        //    }

        //    ViewBag.VM = new VehicleViewModel()
        //    {
        //        AvailableLocations = _catalogSvc.OwnerService.AllLocations().ToList(),
        //        AvailableVechicleColors = _catalogSvc.OwnerService.AllVechicleColors().ToList(),
        //        AvailableVehicleBrands = _catalogSvc.OwnerService.AllVehicleBrands().ToList(),
        //        AvailableVehicleCategories = _catalogSvc.OwnerService.AllVehicleCategorys().ToList(),
        //        AvailableVehicleDriveTypes = _catalogSvc.OwnerService.AllVehicleDriveTypes().ToList(),
        //        AvailableVehicleFuelTypes = _catalogSvc.OwnerService.AllVehicleFuelTypes().ToList(),
        //        AvailableVehicleModels = _catalogSvc.OwnerService.AllVehicleModels().ToList(),
        //        AvailableVehicleTransmisions = _catalogSvc.OwnerService.AllVehicleTransmisions().ToList(),
        //        AvailableVehicleTypes = _catalogSvc.OwnerService.AllVehicleTypes().ToList()
        //    };
        //    return View(model);
        //}


        //public ActionResult ImageUpload(HttpPostedFileBase[] files)
        //{
        //    return View("");
        //}



        //#region Images 


        //[HttpGet]
        //public ActionResult VehicleImages(int vehicleId)
        //{
        //    var result = _catalogSvc.OwnerService.GetImages(vehicleId).ToList();
        //    return View("_VehicleImages", result);
        //}


        //#endregion




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
        

        [Authorize(Roles=RoleNames.OWNER)]
        public ActionResult Dashboard()
        {
            var userId = User.Identity.GetUserId();
            var model = _catalogSvc.OwnerService.GetVehicles(userId);
            var result = new List<VehicleListItem>();
            foreach(var item in model)
            {
                result.Add(new VehicleListItem(item, _catalogSvc.OwnerService.GetImages(item.Id).ToList()));
            }


            return View(result);
        }

    }
}