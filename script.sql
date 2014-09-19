USE [master]
GO
/****** Object:  Database [eVehicleTracking]    Script Date: 9/19/2014 10:08:35 PM ******/
CREATE DATABASE [eVehicleTracking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'eVehicleTracking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\eVehicleTracking.mdf' , SIZE = 11328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'eVehicleTracking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\eVehicleTracking_log.ldf' , SIZE = 1344KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [eVehicleTracking] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eVehicleTracking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eVehicleTracking] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eVehicleTracking] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eVehicleTracking] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eVehicleTracking] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eVehicleTracking] SET ARITHABORT OFF 
GO
ALTER DATABASE [eVehicleTracking] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [eVehicleTracking] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [eVehicleTracking] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eVehicleTracking] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eVehicleTracking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eVehicleTracking] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eVehicleTracking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eVehicleTracking] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eVehicleTracking] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eVehicleTracking] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eVehicleTracking] SET  ENABLE_BROKER 
GO
ALTER DATABASE [eVehicleTracking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eVehicleTracking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eVehicleTracking] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eVehicleTracking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eVehicleTracking] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eVehicleTracking] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [eVehicleTracking] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eVehicleTracking] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [eVehicleTracking] SET  MULTI_USER 
GO
ALTER DATABASE [eVehicleTracking] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [eVehicleTracking] SET DB_CHAINING OFF 
GO
ALTER DATABASE [eVehicleTracking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [eVehicleTracking] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [eVehicleTracking]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[UserId] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Country_Id] [int] NULL,
	[Citizenship] [nvarchar](50) NULL,
	[Email] [nvarchar](256) NULL,
	[Telephone] [nvarchar](50) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[Street] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](50) NULL,
	[Zipcode] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Brands]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countries]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Article] [nvarchar](max) NULL,
	[Region_Id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Designations]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designations](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[DisplayOrder] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Drives]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drives](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmailNotifications]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailNotifications](
	[Id] [int] NOT NULL,
	[UniqueId] [uniqueidentifier] NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[ToAddress] [nvarchar](100) NULL,
	[FromAddress] [nvarchar](100) NULL,
	[FromUserName] [nvarchar](50) NULL,
	[FromPassword] [nvarchar](50) NULL,
	[MailPort] [int] NULL,
	[Subject] [nvarchar](200) NULL,
	[Message] [nvarchar](max) NULL,
	[IsSend] [bit] NOT NULL,
	[GroupId] [int] NULL,
	[CompanyId] [int] NULL,
	[DivisionId] [int] NULL,
	[DepartmentId] [int] NULL,
	[SectionId] [int] NULL,
	[SentDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[UserId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExteriorColors]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExteriorColors](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fuels]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fuels](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GpsDatas]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GpsDatas](
	[Id] [int] NOT NULL,
	[SensorData] [nvarchar](300) NOT NULL,
	[DataTime] [datetime] NOT NULL,
	[Vehicle_Id] [int] NOT NULL,
	[Lat] [decimal](18, 7) NOT NULL,
	[Long] [decimal](18, 7) NOT NULL,
	[DeviceName] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InteriorColors]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InteriorColors](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Locations]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Region_Id] [int] NULL,
	[Country_Id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Models]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Models](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Owners]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owners](
	[Id] [int] NOT NULL,
	[User_Id] [int] NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NOT NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NOT NULL,
	[Street] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Zipcode] [nvarchar](50) NULL,
	[Country_Id] [int] NOT NULL,
	[Remark] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PasswordResetTokens]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PasswordResetTokens](
	[Id] [int] NOT NULL,
	[EncryptedForm] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentTypes]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaymentTypes](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transmisions]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transmisions](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleCategories]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleCategories](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleImages]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VehicleImages](
	[Id] [int] NOT NULL,
	[Vehicle_Id] [int] NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[ImagePath] [varchar](200) NULL,
	[DefaultImage] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[Id] [int] NOT NULL,
	[Owner_Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type_Id] [int] NOT NULL,
	[Category_Id] [int] NOT NULL,
	[Transmision_Id] [int] NULL,
	[InteriorColor_Id] [int] NULL,
	[ExteriorColor_Id] [int] NULL,
	[Brand_Id] [int] NOT NULL,
	[Model_Id] [int] NOT NULL,
	[Fuel_Id] [int] NULL,
	[Drive_Id] [int] NULL,
	[EngCapacity] [nvarchar](50) NULL,
	[MakeYear] [int] NOT NULL,
	[RegYear] [int] NULL,
	[VehNo] [nvarchar](50) NOT NULL,
	[LicenseNo] [nvarchar](50) NOT NULL,
	[RegNo] [nvarchar](50) NULL,
	[Milage] [nvarchar](50) NULL,
	[Description] [nvarchar](1000) NULL,
	[RenewalDate] [datetime] NOT NULL,
	[RegDate] [datetime] NULL,
	[TrackingNo] [nvarchar](50) NULL,
	[DriverName] [nvarchar](50) NULL,
	[DriverMobNo] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsPaid] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleTypes]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleTypes](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleVideos]    Script Date: 9/19/2014 10:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleVideos](
	[Id] [int] NOT NULL,
	[Vehicle_Id] [int] NOT NULL,
	[Path] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201409161725124_AutomaticMigration', N'VehicleGpsTracking.Domain.Migrations.Configuration', 0x1F8B0800000000000400DD5D5B6F1BBB117E2FD0FFB0D0535BF858BE34416AC8E7C091ADC4687C41E4A47D0BE85D4A22B2CBD5D9E53A568BFEB23EF427F52F94DC2BAF2BAEF6229DE2E01836C9FD66381C92C32167F2DF7FFF67F2CB6BE03B2F308A51882F47A7C72723076237F4105E5E8E12B2F8E9DDE8979F7FFFBBC98D17BC3A5F8B76E7AC1DFD12C797A31521EB8BF13876573000F17180DC288CC3053976C3600CBC707C7672F297F1E9E918528811C5729CC9E7041314C0F40FFAE734C42E5C9304F877A107FD382FA735F314D5B907018CD7C08597A3AF70855C1F7E58C74F1170BF533E8FAFC300203C72AE7C04284373E82F460EC038248050762FBEC4704EA2102FE76B5A00FCA7CD1AD2760BE0C730EFC645D5DCB6472767AC47E3EAC302CA4D6242396A06787A9E8B682C7FBE93A047A508A9106FA8B0C986F53A15E4E5E8D68369D1E7D0A70290095E4CFD8835BE1CDD9524AEE2F53D24C7C587C719E42CA2703FC2E8FB318F78E4587F7754AAD4D9F109FBEFC899263E49227889614222E01F398FC9B38FDCBFC2CD53F81DE2CBF3D3E7C5F9BB376F8177FEF6CFF0FC0DDF53DA57DA4E28A0458F51B88611E50D2ECAFE8F9CB1F8DD58FEB0FC8CFB26930AD525AA7523E70EBC7E8278495674DE9CBD1B3933F40ABDA22457AE2F18D1C9443F225142FFBC4F7C1F3CFBB0AC1FD7D2643F6BA89EBD79DB09D57BF08296E9D04BF4E9C489E291F319FA696DBC42EB6C7A09E3FD2D6F368BC280FD2DEA5756FB6D1E2691CB3A131A9B3C81680989C8DD645C29AF954A33A8EED5BA403D7CD5669CAAEAAD6DCA3AB4CB4C28480C3D1B0A7EFBA56BAD7194BB05AA5734E35E95290B82F1718EC2B4C5D0B652A4535B45C2B483FFCFEBA2A881B7989C9F75BDB6D25FAD38DFCEE8408BB844F91AC56B1F6C06E9E507883D189564D8FE501435E51A10F8B0788F22B2F2C0A64064A54F28682E843B102102FC399D97492CF027D534C4FD08D172454AF6A08B02E08F9CC788FE961BD254EFE72E6088CD55F371B58991ABE55BAE6ABA84421F2D539BB26795781F01ECAE7A2773E3256EBAE67E822FD0EF9DDC83EB26EB01E95D614CCF44B7F43C56CDE2EEB5CDA7E72A75D2F5D6A969480F7FD1E661E1A3979442DFF4E846FB0F981AAFBDD3FA0C63C48ECE6C7AF6BFEE16D4680F3774BDA7645CD2FF94A336499DE6DBEE67F5549EA00FD7AB10F72FC4BB90AC60F414E265D23FB1190890BFF90AFCC1683122039192B6ABDE1490AC6873AAF2FD2FBFCF6142EEFA175F4667F308227A94EC9D5A7EE298D1FF1F01E97F8FE6E84D434C681707D1C98F213DA7BBB468B08E0A1487EC6ABA2453820B1405B03C16BD0FE97919E0E6F60088E31F61E47D0471FF329B4337A196385B3B82FEB7E747B6A3DC27C133775A1980566743F3F4239C019784D10D665FB5C6FB14BADFE9D273833D76C4FA425CF5C46509D0093B57AE0BE3784695197AA995D8F0846FF4634E7D8002BD23335F9DBE154D2A27A658A33830A56A9DF3B28EA54FE112E17A968A262A4B598D91A5BCBA294B0CA49EA3BC85CA505A61E427ABEDCCBD9B4ABC7BFF6E0A7BF80EDE763E3AD34CE2C438A7EB0BFC00318CE822E0D19D93C0085723D0CC37379C4F301DBE41B6DB94521F36FC4EB3219DECDDCF8614F6F06743CA262D7E41A9BBD1E2D6A3684CE1ADDAEB2F54B6CF3989B3A1A783D0CDFDFAE787BFA949026EB214AEE8DB78E6836575EFDFEADA2603EDE1D6864A8002FB1B8AC4AFD8A2B8EF20332B4B2737BB844AD7A3CBD189323442DB190CF8D6A7AA4033D1D58853F29C772A5501FB2084FB0507208A10B36DED24FC37E4853FD21F4CE7F47296BFB9462F21359C2A1A67F5EDE7700DD2CDB9FCE07C878194AF123A1D4911FC2086F23E8C52BFB9DD38161DF037D315FD4957294EDC56F3E62A8E4317A5A2D33CBBC91F4D881CD08398B3FD0545751B24BEE3B9A372436B3FF58D311EE5BDED015F431F12E85CB9D9B3A429885DE0A9AB39ED8ED780B1C2B0D73056BDC61099FB9342936EB890B9BF10609E8C980E3CC244DD9D1176D11AF85BA5247D696949B3BE9734E49A6BB8668B3E265B2561435CFFF8823150D29106659B8426634EE3EA15513AF49AC6DA7402E6AE238B371083E89EE1C86DD0BBFC98D88BE2E9253380D2E9456043D8F830684885CB5D1ADB0658F66FEC5BE124878A41E1F29358AF0A274A6640851345F09B51B8CC63B56D7C25F7D5BED54DF4970DBFAD6AC532A0AE09FD3F3055CB8E9CEC76877E515A8BCCB04D6F7C5E89C670A6ECE5B6739C1F6C650D6098734844476C75BAD59A7BE37A105957EA002B7DDA029ABFF45580CA79D280A9C2E35ECB55BE8937802DBCE6B5B0F9522DC17243AE62F32F9DB986E6F7D0B22E5A19F765CF4A2D5074DACA16E770348A20AF4962C72D8422DF9AA802A933316D8C4CAE03B9D06B0461300C0D422898EE4C0A85CA99A5A0B37B6C2C9F9DA420592B0629144C7726855CB7CC42D0ECC516BBF14E221077D08E2643E16F2C17FFB26E32CEE294F282C9D810D034B903EB35C24B2EC0292F71E65974D3F4A779F3789F20C318BBB126ECA7E4B6A444C2082CA154CBDEE5797086A2985C03029E0173014DBD4069C66F758655B9A0C4EF66EA9815CB73D19AFD9E7D61F62F093BA06A19E45033DABF809915E9559666F4F59F3B2CDC0CF820D2DC9E4D433F09B0D9CA317F9DBDC0E6BFCF4A5484C958E25FB16614A129B6A5380256E3A34E896EC7AA342E761F2F338449EA8545C8CBDD64259A510A270D8F6272DCEC6DFC4CD6C62E6356D871CD87CAF8653FB3AA9BF1B59F9B757CA82855A93D9210B0C1830915F678C5B5170F559435E04A0AC8101893EAEC51A53B241E54AAB2C72C623278B0A2CC1E45BE14E1D1E4BA06EB48197621AC2465A93D521157C1E31465F62872D8048F26D7D9A32AD1113CAC52698F2B4641F0A0624D835196431E8461962BED7195D0061E57A96C80CB873008987C45137D14C21444A514AA9A638AC1083A68B14503ADCD220F0465CD8AEC31B8B8021E872B6EB08A099103C22226D4D8230AE1013CA050D1142F7B14A5C265E54DD1742BA358D36044ABA7FCC2A856C50D5689E2B1BEB04014854D71CAC7F82A5A59D560BD919FDC0BEB8D5CB913AEF0DEDC002FB469B0B3AA2FE9854D56ADDE11DBD80773AB86AB07F7125B5946B8BA0623203C9617E42ED4D8234A2FE27948A9AA8955C3BD7B174D1AAE62273C8344F52D1AACD3CA4B7761B9566AED91356FDE79684DF50ED81A9EE5BA062B92FA2C5E5895D4EA83399B6ADCAEDD3B17B23B8276DE0503C6211F5EB907CF8249581537C4D2D81D7CF9412A95D1B1DE56A9B21BA2764A65C030AF1EC28B6171F1A87DE66CC6149E014B6681F919B419AF99EAF6AA208A3B5E6E52522FDDF292FB7D92BBC2B7271D537CE3591316849F89916ECE9B98C0E09835389EFFEA4F7D941A8945833B80D102C6247BC2383A3B393D9312961D4EF2B0711C7BBEE62AC194414C1CB301A258F00B88DC1588D437E52D92C054A0CA05FE2DF6E0EBE5E89FE95717E95D13FB2D2D3E726EE32F18FD9AD08AA72881CEBFD470F86E120ED57BC30F343D94BD546FFFFE2DFBF4C87988E88CB9704E2459EE32C262D2A846DC649FB6E0A6712AA9DFEE4412071DB195AF83A9F88700BCFE9147DA25E792FD98175F7633AF55CE3439995AF554CCBBB48BD0F5F9963C5A4A3ACBB7B40B5F6282256F98044BBB302A27546A359E62D2A45650FAC448AD200DC98F5A61EA121C753FDAFA0447AD183724316A87A9262A6A85A74D46D409A22EE1503B75E5930A69372569BDDD2987502B167579825A016A72017580C74740770027AE90EDC658CEDBD36EE51073F3748025E5DF6985A8F8F4BBC5D4249769056DCC95D31D6AD72CEB73DE3CA3E65BB82EDF4D2BD6B4396DDA0DBD9AB7A62BBC4E4468CA4BB30B9631278DCE2AB5E9AC3E47CD2EAC19F3D36CB71C5B243A19FC5098F6666B16905607C47D7B05946421ED0C3725214803B816493F76D08CDF58BE8CCEFC138F6A3A8C9E7C1FC3AAB6497B3A0B3E3F9478F32A4469BF61E6434696D7BC9CB675D73A871850BEC7104B4D6CD9FEC2C787D625D34579836B82C30B163F1065CA230AF7171A3EB432992EC80F5499AC02C10F4497F6B5CFED4993ACB7B8BD8779AB2172F270EAE392B331AB2C35AD39953D29A0E7DCE7900E7E66F16549F7F4818A266295921809564DCC44CD119232E172A228F4CA9A7A32CDFA966FCCB59DCBDBD49335C401D7D1CED7F15ADA799B7ADA86E8DB7D44A06BE36375D900B6AC5775717BCA4A780011E702C765996597052534BC26ECAED3DD0598B7EAB4A0FD86D76EDD75BAAB78F2565DEE52B51BC48FAB0FD3E85EC6FD9B99743F8DD1B28260FF822686AEB08B956D6EF1222C365389A3A2897CD70509F0E816771511B4002EA1D5CCF3995E74E629F06E8267E8DDE28784AC1342BB0C83675F7010B14DB98E7E1A242FF23C7958A789A7BBE8026513318FF1037E9F20BF4ADD37D3F8500C106CB7CF3DA06C2C09F3842E3725D2BD122E6402CAC5571A294F3058FB142C7EC073F00277E18DAADF27B804EEA6F2989940B60F8428F6C93502CB0804718E517D4FFFA43AEC05AF3FFF0F7539B9193A760000, N'6.1.1-30610')
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (8, N'Afghanistan', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (9, N'Albania', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (10, N'Algeria', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (11, N'Andorra', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (12, N'Angola', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (13, N'Antigua and Barbuda', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (14, N'Argentinia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (15, N'Armenia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (16, N'Australia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (17, N'Austria', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (18, N'Azerbaijan', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (19, N'Bahamas', N'The', NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (20, N'Bahrain', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (21, N'Bangladesh', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (22, N'Barbados', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (23, N'Belarus', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (24, N'Belgium', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (25, N'Belize', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (26, N'Benin', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (27, N'Bermuda', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (28, N'Bhutan', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (29, N'Bolivia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (30, N'Bosnia and Herzegovina', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (31, N'Botswana', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (32, N'Brazil', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (33, N'Brunei Darussalam', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (34, N'Bulgaria', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (35, N'Burkina Faso', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (36, N'Burundi', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (37, N'Cambodia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (38, N'Cameroon', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (39, N'Canada', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (40, N'Cape Verde', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (41, N'Cayman Islands', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (42, N'Central African Republic', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (43, N'Chad', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (44, N'Chile', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (45, N'China', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (46, N'Colombia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (47, N'Comoros', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (48, N'Congo', N'Democratic Republic of the ', NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (49, N'Congo', N'Republic of the ', NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (50, N'Costa Rica', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (51, N'Cote d''Ivoire', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (52, N'Croatia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (53, N'Cuba', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (54, N'Cyprus', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (55, N'Czech Republic', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (56, N'Denmark', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (57, N'Djibouti', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (58, N'Dominica', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (59, N'Dominican Republic', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (60, N'Ecuador', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (61, N'Egypt', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (62, N'El Salvador', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (63, N'Equatorial Guinea', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (64, N'Eritrea', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (65, N'Estonia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (66, N'Ethiopia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (67, N'Falkland Islands', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (68, N'Faroe Islands', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (69, N'Fiji', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (70, N'Finland', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (71, N'France', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (72, N'French Polynesia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (73, N'Gabon', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (74, N'Gambia', N'The', NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (75, N'Georgia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (76, N'Germany', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (77, N'Ghana', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (78, N'Greece', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (79, N'Greenland', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (80, N'Grenada', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (81, N'Guadeloupe', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (82, N'Guatemala', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (83, N'Guinea', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (84, N'Guinea-Bissau', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (85, N'Guyana', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (86, N'Haiti', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (87, N'Honduras', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (88, N'Hong Kong', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (89, N'Hungary', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (90, N'Iceland', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (91, N'India', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (92, N'Indonesia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (93, N'Iran', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (94, N'Iraq', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (95, N'Ireland', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (96, N'Isle of Man', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (97, N'Israel', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (98, N'Italy', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (99, N'Jamaica', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (100, N'Japan', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (101, N'Jordan', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (102, N'Kazakhstan', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (103, N'Kenya', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (104, N'Kiribati', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (105, N'Korea', N'North', NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (106, N'Korea', N'South', NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (107, N'Kuwait', NULL, NULL)
GO
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (108, N'Kyrgyzstan', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (109, N'Laos', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (110, N'Latvia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (111, N'Lebanon', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (112, N'Lesotho', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (113, N'Liberia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (114, N'Libya', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (115, N'Liechtenstein', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (116, N'Lithuania', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (117, N'Luxembourg', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (118, N'Macau', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (119, N'Macedonia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (120, N'Madagascar', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (121, N'Malawi', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (122, N'Malaysia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (123, N'Maldives', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (124, N'Mali', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (125, N'Malta', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (126, N'Marshall Islands', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (127, N'Martinique', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (128, N'Mauritania', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (129, N'Mauritius', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (130, N'Mexico', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (131, N'Micronesia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (132, N'Moldova', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (133, N'Monaco', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (134, N'Mongolia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (135, N'Montenegro', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (136, N'Morocco', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (137, N'Mozambique', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (138, N'Myanmar', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (139, N'Namibia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (140, N'Nauru', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (141, N'Nepal', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (142, N'Netherlands', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (143, N'New Caledonia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (144, N'New Zealand', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (145, N'Nicaragua', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (146, N'Niger', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (147, N'Nigeria', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (148, N'Norway', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (149, N'Oman', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (150, N'Pakistan', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (151, N'Palau', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (152, N'Palestinian Territories', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (153, N'Panama', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (154, N'Papua New Guinea', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (155, N'Paraguay', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (156, N'Peru', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (157, N'Philippines', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (158, N'Poland', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (159, N'Portugal', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (160, N'Puerto Rico', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (161, N'Qatar', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (162, N'Réunion', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (163, N'Romania', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (164, N'Russia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (165, N'Rwanda', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (166, N'Saint Barthélemy', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (167, N'Saint Helena', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (168, N'Saint Kitts and Nevis', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (169, N'Saint Lucia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (170, N'Saint Martin', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (171, N'Saint Vincent and the Grenadines', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (172, N'Samoa', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (173, N'San Marino', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (174, N'Sao Tome and Principe', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (175, N'Saudi Arabia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (176, N'Senegal', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (177, N'Serbia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (178, N'Seychelles', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (179, N'Sierra Leone', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (180, N'Singapore', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (181, N'Slovakia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (182, N'Slovenia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (183, N'Solomon Islands', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (184, N'Somalia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (185, N'South Africa', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (186, N'South Georgia and South Sandwich Islands', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (187, N'Spain', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (189, N'Sudan', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (190, N'Suriname', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (191, N'Swaziland', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (192, N'Sweden', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (193, N'Switzerland', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (194, N'Syria', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (195, N'Taiwan', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (196, N'Tajikistan', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (197, N'Tanzania', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (198, N'Thailand', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (199, N'Timor-Leste', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (200, N'Togo', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (201, N'Tonga', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (202, N'Trinidad and Tobago', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (203, N'Tunisia', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (204, N'Turkey', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (205, N'Turkmenistan', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (206, N'Tuvalu', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (207, N'U.S. Virgin Islands', NULL, NULL)
INSERT [dbo].[Countries] ([Id], [Name], [Article], [Region_Id]) VALUES (210, N'Srilanka', NULL, NULL)
GO
INSERT [dbo].[Designations] ([Id], [Name], [DisplayOrder]) VALUES (255, N'Farmer', 2)
INSERT [dbo].[Designations] ([Id], [Name], [DisplayOrder]) VALUES (256, N'Fisher man', 1)
INSERT [dbo].[Designations] ([Id], [Name], [DisplayOrder]) VALUES (258, N'test erer', 1)
INSERT [dbo].[Designations] ([Id], [Name], [DisplayOrder]) VALUES (259, N'tester', 1)
INSERT [dbo].[Designations] ([Id], [Name], [DisplayOrder]) VALUES (260, N'345435 54tfsd', 1)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5431, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6827, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CA99A AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5432, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6831, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CA9A0 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5433, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CA9A6 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5434, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CA9AC AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5435, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6888, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CA9B3 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5436, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6906, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CA9BA AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5437, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6934, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CA9C0 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5438, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6942, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CA9C6 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5439, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6951, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CA9CC AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5440, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6960, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CA9D3 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5441, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6977, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CA9DB AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5442, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6982, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CA9E2 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5443, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7012, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CA9E8 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5444, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7032, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CA9EE AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5445, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7063, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CA9F4 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5446, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7075, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CA9FA AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5447, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7089, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA00 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5448, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA06 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5449, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6817, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA0C AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5450, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6843, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA11 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5451, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6851, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA18 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5452, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA1D AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5453, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6897, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA23 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5454, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6907, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA28 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5455, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6991, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA2E AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5456, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6994, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA33 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5457, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA38 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5458, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7066, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA3E AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5459, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6943, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA44 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5460, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7026, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA49 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5461, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6969, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA4F AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5462, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6866, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA54 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5463, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6816, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA5A AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5464, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6955, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA60 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5465, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6867, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA65 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5466, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6993, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA6B AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5467, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA70 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5468, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6947, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA76 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5469, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7099, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA7C AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5470, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7043, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA81 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5471, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7072, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA87 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5472, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA8E AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5473, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6916, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA94 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5474, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6863, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAA9A AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5475, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7038, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAAA0 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5476, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAAA5 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5477, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6847, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAAAB AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5478, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7056, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAAB0 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5479, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6889, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAAB5 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5480, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6941, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAABA AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5481, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7037, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAAC0 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5482, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6865, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAAC6 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5483, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAACC AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5484, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6893, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAAD2 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5485, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAAD7 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5486, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7096, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAADC AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5487, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6857, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAAE2 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5488, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAAE8 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5489, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAAEE AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5490, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7070, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAAF3 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5491, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7071, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAAF9 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5492, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7069, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAAFF AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5493, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7062, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB04 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5494, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6885, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB0A AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5495, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6968, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB10 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5496, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6859, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB16 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5497, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6807, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB1B AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5498, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6989, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB21 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5499, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB26 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5500, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6975, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB2C AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5501, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6835, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB32 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5502, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB3A AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5503, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6914, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB40 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5504, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6848, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB46 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5505, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6922, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB4B AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5506, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6992, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB51 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5507, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7065, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB56 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5508, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB5C AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5509, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6979, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB62 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5510, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6806, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB68 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5511, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6808, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB6D AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5512, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6876, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB73 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5513, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB78 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5514, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6954, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB7E AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5515, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7030, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB83 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5516, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7040, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB89 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5517, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB8F AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5518, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6822, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB94 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5519, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7091, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAB9A AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5520, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6988, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CABA0 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5521, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7086, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CABA6 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5522, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6927, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CABAD AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5523, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6860, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CABB2 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5524, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7067, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CABB8 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5525, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6818, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CABBD AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5526, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7035, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CABC3 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5527, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6908, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CABC8 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5528, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6839, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CABCE AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5529, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7058, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CABD4 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5530, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6923, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CABDB AS DateTime), 12)
GO
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5531, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7076, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CABE1 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5532, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6829, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CABE7 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5533, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6884, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CABED AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5534, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6920, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CABF3 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5535, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6950, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CABF8 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5536, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6918, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CABFE AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5537, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7068, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC04 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5538, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6821, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC09 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5539, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6819, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC0F AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5540, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6811, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC16 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5541, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6917, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC1B AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5542, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC21 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5543, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7039, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC27 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5544, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7041, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC2E AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5545, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6836, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC34 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5546, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6931, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC3B AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5547, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6939, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC41 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5548, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6919, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC47 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5549, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7082, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC4C AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5550, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7053, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC52 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5551, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7054, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC58 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5552, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6964, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC5E AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5553, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6832, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC63 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5554, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6935, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC69 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5555, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC6F AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5556, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6946, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC75 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5557, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6949, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC7A AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5558, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6903, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC80 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5559, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7049, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC85 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5560, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6842, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC8B AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5561, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAC9D AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5562, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6871, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CACA3 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5563, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7023, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CACA9 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5564, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6901, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CACAE AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5565, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7080, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CACB4 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5566, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6899, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CACBA AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5567, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CACC0 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5568, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6905, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CACC6 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5569, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CACCC AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5570, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CACD1 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5571, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CACD7 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5572, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CACDD AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5573, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6925, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CACE4 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5574, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7094, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CACEA AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5575, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CACEF AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5576, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7027, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CACF5 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5577, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6883, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CACFB AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5578, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6926, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD01 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5579, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6940, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD07 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5580, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6915, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD0C AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5581, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6882, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD12 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5582, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6879, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD19 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5583, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7057, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD1F AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5584, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6868, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD26 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5585, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7036, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD2C AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5586, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6833, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD32 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5587, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7050, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD38 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5588, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7051, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD3E AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5589, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6944, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD44 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5590, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD4A AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5591, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD50 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5592, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7095, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD57 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5593, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6972, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD5D AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5594, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7092, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD63 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5595, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6845, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD6A AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5596, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD70 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5597, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7073, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD76 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5598, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7064, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD7C AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5599, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD82 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5600, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7074, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD88 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5601, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6921, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD8E AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5602, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6933, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD94 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5603, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7078, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAD9A AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5604, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CADA0 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5605, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6938, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CADA6 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5606, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CADAC AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5607, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6976, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CADB1 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5608, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6823, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CADB7 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5609, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6894, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CADBD AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5610, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6849, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CADC3 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5611, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6898, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CADC8 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5612, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7077, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CADCE AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5613, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6924, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CADD4 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5614, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7034, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CADDA AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5615, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6910, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CADE0 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5616, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6967, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CADE6 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5617, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6856, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CADEC AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5618, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6815, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CADF2 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5619, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6880, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CADF8 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5620, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6830, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CADFE AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5621, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE04 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5622, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE0A AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5623, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7093, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE10 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5624, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE16 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5625, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7090, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE1C AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5626, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7081, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE22 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5627, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6983, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE28 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5628, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6936, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE2E AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5629, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6962, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE33 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5630, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6986, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE39 AS DateTime), 12)
GO
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5631, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6930, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE3F AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5632, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6825, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE45 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5633, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6810, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE4B AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5634, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6886, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE51 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5635, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6971, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE57 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5636, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6844, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE5E AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5637, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6820, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE64 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5638, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6850, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE6B AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5639, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE72 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5640, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7052, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE78 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5641, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7083, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE7D AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5642, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6945, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE83 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5643, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7044, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE8A AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5644, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6952, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE90 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5645, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6881, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE97 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5646, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6953, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAE9E AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5647, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAEA4 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5648, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7087, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAEAA AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5649, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6853, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAEB0 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5650, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6887, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAEB7 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5651, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6858, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAEBD AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5652, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6984, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAEC3 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5653, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7042, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAEC9 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5654, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAED0 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5655, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6813, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAED6 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5656, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6864, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAEDC AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5657, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6909, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAEE2 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5658, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6878, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAEE9 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5659, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6852, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAEF0 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5660, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6973, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAEF7 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5661, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6854, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAEFD AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5662, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7048, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF03 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5663, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6956, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF09 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5664, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6837, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF10 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5665, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7061, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF18 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5666, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6841, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF1E AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5667, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6896, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF25 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5668, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6892, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF2B AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5669, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6861, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF33 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5670, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6965, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF3A AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5671, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF41 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5672, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6929, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF47 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5673, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6937, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF4F AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5674, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7098, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF55 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5675, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF5B AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5676, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7088, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF61 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5677, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6824, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF67 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5678, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6826, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF6D AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5679, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6834, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF74 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5680, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6855, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF7A AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5681, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6891, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF80 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5682, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF86 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5683, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7021, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF8C AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5684, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7033, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF93 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5685, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7045, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAF99 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5686, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7055, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAFA0 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5687, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7079, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAFA9 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5688, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7029, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAFB1 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5689, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAFB9 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5690, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6987, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAFBF AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5691, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6911, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAFC5 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5692, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6895, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAFCC AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5693, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6814, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAFD3 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5694, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6958, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAFDA AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5695, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6959, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAFE1 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5696, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6840, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAFE7 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5697, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6890, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAFEE AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5698, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7059, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAFF5 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5699, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6912, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CAFFB AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5700, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7084, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB002 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5701, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6963, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB008 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5702, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6966, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB00F AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5703, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB015 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5704, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7046, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB01C AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5705, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7097, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB022 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5706, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB029 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5707, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB02F AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5708, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6961, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB035 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5709, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6997, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB03C AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5710, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7028, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB042 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5711, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6838, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB048 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5712, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6948, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB04E AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5713, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6809, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB055 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5714, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7060, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB05B AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5715, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6974, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB062 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5716, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6928, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB069 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5717, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB06F AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5718, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6957, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB076 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5719, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6902, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB07D AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5720, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6985, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB084 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5721, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB08A AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5722, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB091 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5723, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB098 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5724, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6869, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB09F AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5725, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6932, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB0A5 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5726, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB0AC AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5727, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB0B3 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5728, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6978, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB0B9 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5729, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6862, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB0C0 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5730, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6846, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB0C6 AS DateTime), 12)
GO
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5731, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6980, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB0CD AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5732, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6981, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB0D4 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5733, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB0DB AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5734, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB0E1 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5735, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6990, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB0E8 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5736, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7085, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB0F0 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5737, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6904, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB0F6 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5738, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7031, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB0FD AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5739, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 7106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB104 AS DateTime), 12)
INSERT [dbo].[EmailNotifications] ([Id], [UniqueId], [EmployeeId], [ToAddress], [FromAddress], [FromUserName], [FromPassword], [MailPort], [Subject], [Message], [IsSend], [GroupId], [CompanyId], [DivisionId], [DepartmentId], [SectionId], [SentDate], [CreatedDate], [UserId]) VALUES (5740, N'a9969914-f8f0-43ef-93e7-af07dfbf6d75', 6812, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 36, 0, 0, 0, NULL, CAST(0x0000A15B006CB10A AS DateTime), 12)
INSERT [dbo].[PaymentTypes] ([Id], [Name]) VALUES (1, N'Cash')
INSERT [dbo].[PaymentTypes] ([Id], [Name]) VALUES (2, N'Paypal')
INSERT [dbo].[PaymentTypes] ([Id], [Name]) VALUES (3, N'Credit Card')
INSERT [dbo].[Regions] ([Id], [Name]) VALUES (1, N'Africa')
INSERT [dbo].[Regions] ([Id], [Name]) VALUES (2, N'Asia')
INSERT [dbo].[Regions] ([Id], [Name]) VALUES (3, N'Australia & The Pacific')
INSERT [dbo].[Regions] ([Id], [Name]) VALUES (4, N'Europe')
INSERT [dbo].[Regions] ([Id], [Name]) VALUES (5, N'Middle East')
INSERT [dbo].[Regions] ([Id], [Name]) VALUES (6, N'The Americas')
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (2, 1, N'Hall', N'room_0.jpg', 1)
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (3, 1, N'Bath room', N'room_1.jpg', 0)
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (4, 1, N'Bed Room', N'room_2.jpg', 0)
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (5, 1, N'Room5', N'room_3.jpg', 0)
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (6, 2, N'Hall', N'house1.jpg', 1)
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (7, 3, N'Bath room', N'house2.jpg', 1)
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (8, 2, N'Bed Room', N'house3.jpg', 0)
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (9, 3, N'Room5', N'house4.jpg', 0)
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (11, 4, N'bed room eww', N'double_room.jpg', 0)
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (12, 4, N'bed room', N'4.jpg', 0)
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (15, 24, N'test', N'nava.jpg', 0)
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (16, 1, N'adad', N'profile_Settai_Movie_Stillse747d8ca14b922571ccfe18f7f2b597a.jpg', 0)
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (17, 1, N'dasda', N'settai-movie-stills-10.jpg', 0)
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (18, 1, N'sadasd', N'Tie.jpg', 0)
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (19, 1, N'asdsad', N'tumblr_lkks2bZqnF1qfrfde.jpg', 0)
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (20, 1, N'asdsad', N'SuitLook2.jpg', 0)
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (21, 25, N'fs', N'tumblr_lkks2bZqnF1qfrfde.jpg', 0)
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (22, 25, N'ererere', N'1557671_447971528637577_1186567984_n.jpg', 0)
INSERT [dbo].[VehicleImages] ([Id], [Vehicle_Id], [Description], [ImagePath], [DefaultImage]) VALUES (23, 25, N'erfgxdggxd', N'400_F_43590884_LVlDmCvv5VH3hUcZieyzmHXcGqr18HMK.jpg', 0)
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 9/19/2014 10:08:35 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 9/19/2014 10:08:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 9/19/2014 10:08:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 9/19/2014 10:08:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 9/19/2014 10:08:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 9/19/2014 10:08:35 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [eVehicleTracking] SET  READ_WRITE 
GO
