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
using GPSTracking.Exceptions;

namespace GPSTracking.Controllers
{

    [Authorize(Roles=RoleNames.OWNER)]
    public class VehicleController : Controller
    {
        private const string IMAGE_ROOT = "/Images";
        private const string DOCUMENT_ROOT = "/Documents";
        private const string VEHICLE_IMAGE = IMAGE_ROOT + "/Vehicle{0}";
        private const string VEHICLE_DOCUMENT = DOCUMENT_ROOT + "/Vehicle{0}";


        private readonly IServiceCatalog _catalogSvc;

        public VehicleController(IServiceCatalog catalogSvc)
        {
            _catalogSvc = catalogSvc;
        }



        

        //public ActionResult Index()
        //{
        //    if (User.Identity.IsAuthenticated)
        //    {
        //        var id= User.Identity.GetUserId();
        //        var name = User.Identity.Name;
        //        var role=User.IsInRole("Admin");
        //    }

        //    return View();
        //}



        [Authorize]
        [HttpGet]
        public ActionResult AddEdit(int? id)
        {
            var model = _catalogSvc.OwnerService.GetVehicle(User.Identity.GetUserId(), id ?? -1);
            if (model == null) { model = new Vehicle(); }

            ViewBag.VM = new VehicleViewModel()
            {
                AvailableLocations = _catalogSvc.CommonService.GetLocations().ToList(),
                AvailableVechicleColors = _catalogSvc.CommonService.GetVechicleColors().ToList(),
                AvailableVehicleBrands = _catalogSvc.CommonService.GetVehicleBrands().ToList(),
                AvailableVehicleCategories = _catalogSvc.CommonService.GetVehicleCategories().ToList(),
                AvailableVehicleDriveTypes = _catalogSvc.CommonService.GetVehicleDriveTypes().ToList(),
                AvailableVehicleFuelTypes = _catalogSvc.CommonService.GetVehicleFuelTypes().ToList(),
                AvailableVehicleModels = _catalogSvc.CommonService.GetVehicleModels().ToList(),
                AvailableVehicleTransmisions = _catalogSvc.CommonService.GetVehicleTransmisions().ToList(),
                AvailableVehicleTypes = _catalogSvc.CommonService.GetVehicleTypes().ToList()
            };
            return View(model);
        }


        [Authorize]
        [HttpPost]
        public ActionResult AddEdit(Vehicle model)
        {
            if (ModelState.IsValid)
            {
                model.OwnerId = User.Identity.GetUserId();
                if (_catalogSvc.OwnerService.AddUpdateVechile(model))
                {
                    return RedirectToAction("AddEdit", new { id = model.Id});
                }
            }

            ViewBag.VM = new VehicleViewModel()
            {
                AvailableLocations = _catalogSvc.CommonService.GetLocations().ToList(),
                AvailableVechicleColors = _catalogSvc.CommonService.GetVechicleColors().ToList(),
                AvailableVehicleBrands = _catalogSvc.CommonService.GetVehicleBrands().ToList(),
                AvailableVehicleCategories = _catalogSvc.CommonService.GetVehicleCategories().ToList(),
                AvailableVehicleDriveTypes = _catalogSvc.CommonService.GetVehicleDriveTypes().ToList(),
                AvailableVehicleFuelTypes = _catalogSvc.CommonService.GetVehicleFuelTypes().ToList(),
                AvailableVehicleModels = _catalogSvc.CommonService.GetVehicleModels().ToList(),
                AvailableVehicleTransmisions = _catalogSvc.CommonService.GetVehicleTransmisions().ToList(),
                AvailableVehicleTypes = _catalogSvc.CommonService.GetVehicleTypes().ToList()
            };
            return View(model);
        }



        #region Images 


        // Partial view for images
        public ActionResult Images(int id)
        {
            var result = new VehicleImagesViewModel();

            try
            {
                var vechile = _catalogSvc.OwnerService.GetVehicle(User.Identity.GetUserId(), id);
                if (vechile == null) { throw new CatchableException("Vechicle not found."); }

                var data = _catalogSvc.OwnerService.GetImages(id).ToList();
                var imagePath = string.Format(VEHICLE_IMAGE, id);
                //imagePath = Server.MapPath(imagePath);
                data.ForEach(delegate(VehicleImage vImg)
                {
                    vImg.ImagePath = string.Format("{0}/{1}", imagePath, vImg.ImagePath);
                });

                result = new VehicleImagesViewModel(id, data);
            }
            catch (CatchableException exp) { }

            return View("_VehicleImages", result);
        }


        [HttpPost]
        public ActionResult UploadImageAjax(UploadingFile image)
        {
            var result = new ResponseViewModel();

            try
            {
                var vechile = _catalogSvc.OwnerService.GetVehicle(User.Identity.GetUserId(), image.VehicleId);
                if (vechile == null) { throw new CatchableException("Vechicle not found."); }

                if (image.File == null || image.File.ContentLength <= 0) { throw new CatchableException("Image content can not be empty."); }

                var supportedTypes = new[] { ".jpg", ".jpeg", ".png" };
                if (!supportedTypes.Contains(System.IO.Path.GetExtension(image.File.FileName)))
                {
                    throw new CatchableException( string.Format("Image type not supported. Only folowing types are supported ({0})", string.Join(",", supportedTypes)));
                }

                var imagePath = string.Format(VEHICLE_IMAGE, image.VehicleId);
                imagePath = Server.MapPath(imagePath);

                if(!System.IO.Directory.Exists(imagePath)){ System.IO.Directory.CreateDirectory(imagePath);}
                imagePath = System.IO.Path.Combine(imagePath, image.File.FileName);
                image.File.SaveAs(imagePath);

                var model = new VehicleImage() { VehicleId = image.VehicleId, IsDefaultImage = false, ImagePath = image.File.FileName };
                if(!_catalogSvc.OwnerService.AddImage(model))
                {
                    throw new CatchableException("Image saving failed.");
                }
            }
            catch (CatchableException exp)
            {
                result.Status = "Error";
                result.Message = exp.Message;
            }

            return Json(result);
        }


        public ActionResult RemoveImageAjax(int vId, int id)
        {
            var result = new ResponseViewModel();
            if (!_catalogSvc.OwnerService.RemoveImage(id))
            {
                result.Status = "Error";
            }
            return Json(result, JsonRequestBehavior.AllowGet);
        }



        #endregion



        #region Documents


        // Partial view for images
        public ActionResult Documents(int id)
        {
            var result = new VehicleDocumentsViewModel();

            try
            {
                var vechile = _catalogSvc.OwnerService.GetVehicle(User.Identity.GetUserId(), id);
                if (vechile == null) { throw new CatchableException("Vechicle not found."); }

                var data = _catalogSvc.OwnerService.GetDocs(id).ToList();
                data.ForEach(delegate(VehicleDocument file)
                {
                    file.Path = string.Format("{0}/{1}", string.Format(VEHICLE_DOCUMENT, id), file.Path);
                });

                result = new VehicleDocumentsViewModel(id, data);
            }
            catch (CatchableException exp) { }

            return View("_VehicleDocuments", result);
        }


        [HttpPost]
        public ActionResult UploadDocumentAjax(UploadingFile document)
        {
            var result = new ResponseViewModel();

            try
            {
                var vechile = _catalogSvc.OwnerService.GetVehicle( User.Identity.GetUserId(), document.VehicleId);
                if (vechile == null) { throw new CatchableException("Vechicle not found."); }

                if (document.File == null || document.File.ContentLength <= 0) { throw new CatchableException("Image content can not be empty."); }

                var supportedTypes = new[] {".pdf",};
                if (!supportedTypes.Contains(System.IO.Path.GetExtension(document.File.FileName)))
                {
                    throw new CatchableException(string.Format("Image type not supported. Only folowing types are supported ({0})", string.Join(",", supportedTypes)));
                }

                var filepath = string.Format(VEHICLE_DOCUMENT, document.VehicleId);
                filepath = Server.MapPath(filepath);

                if (!System.IO.Directory.Exists(filepath)) { System.IO.Directory.CreateDirectory(filepath); }
                filepath = System.IO.Path.Combine(filepath, document.File.FileName);
                document.File.SaveAs(filepath);
               
                System.IO.Path.GetFileNameWithoutExtension(filepath);

                var model = new VehicleDocument() 
                { 
                    VehicleId = document.VehicleId, 
                    Path = document.File.FileName, 
                    FileName =  System.IO.Path.GetFileNameWithoutExtension(filepath)
                };

                if (!_catalogSvc.OwnerService.AddDoc(model))
                {
                    throw new CatchableException("Document saving failed.");
                }
            }
            catch (CatchableException exp)
            {
                result.Status = "Error";
                result.Message = exp.Message;
            }

            return Json(result);
        }


        public ActionResult RemoveDocumentAjax(int vId, int id)
        {
            var result = new ResponseViewModel();
            if (!_catalogSvc.OwnerService.RemoveDoc(id))
            {
                result.Status = "Error";
            }
            return Json(result, JsonRequestBehavior.AllowGet);
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