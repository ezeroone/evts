using System;
using System.Configuration;
using System.IO;
using CloudinaryDotNet;
using CloudinaryDotNet.Actions;

namespace GPSTracking
{
    public class CloudinaryService
    {

        private string CLOUD_NAME = string.Empty;
        private string API_KEY = string.Empty;
        private string API_SECRET = string.Empty;

        public CloudinaryService()
        {
            this.CLOUD_NAME = ConfigurationManager.AppSettings["CLOUDNAME"];
            this.API_KEY = ConfigurationManager.AppSettings["APIKEY"];
            this.API_SECRET = ConfigurationManager.AppSettings["APISECREAT"];
        }

        public string UploadPhoto(string filePath)
        {
            Account account = new Account(
             CLOUD_NAME,
              API_KEY,
             API_SECRET);

            Cloudinary cloudinary = new Cloudinary(account);
            var uploadParams = new CloudinaryDotNet.Actions.ImageUploadParams()
            {
                File = new CloudinaryDotNet.Actions.FileDescription(filePath)
            };

            ImageUploadResult uploadResult = cloudinary.Upload(uploadParams);
            return cloudinary.Api.UrlImgUp.BuildUrl(String.Format("{0}.{1}", uploadResult.PublicId, uploadResult.Format));
        }

        public string UploadPhoto(Stream stream)
        {
            Account account = new Account(
             CLOUD_NAME,
              API_KEY,
             API_SECRET);

            Cloudinary cloudinary = new Cloudinary(account);
            var uploadParams = new CloudinaryDotNet.Actions.ImageUploadParams()
            {
                File = new CloudinaryDotNet.Actions.FileDescription(Guid.NewGuid().ToString(), stream),
            };

            ImageUploadResult uploadResult = cloudinary.Upload(uploadParams);
            return cloudinary.Api.UrlImgUp.BuildUrl(String.Format("{0}.{1}", uploadResult.PublicId, uploadResult.Format));
        }

        public string UploadPhoto(Stream stream, int height, int width)
        {
            Account account = new Account(
              CLOUD_NAME,
               API_KEY,
              API_SECRET);

            Cloudinary cloudinary = new Cloudinary(account);
            var uploadParams = new CloudinaryDotNet.Actions.ImageUploadParams()
            {
                File = new CloudinaryDotNet.Actions.FileDescription(Guid.NewGuid().ToString(), stream),
            };

            ImageUploadResult uploadResult = cloudinary.Upload(uploadParams);
            return
                cloudinary.Api.UrlImgUp.Transform(new Transformation().Width(width).Height(height).Crop("fill"))
                    .BuildUrl(String.Format("{0}.{1}", uploadResult.PublicId, uploadResult.Format));

        }
    }
}
