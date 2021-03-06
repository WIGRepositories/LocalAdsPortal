USE [PakkaLocalAds]
GO
/****** Object:  Table [dbo].[answer]    Script Date: 06/24/2017 12:54:59 ******/
DROP TABLE [dbo].[answer]
GO
/****** Object:  Table [dbo].[childimages]    Script Date: 06/24/2017 12:54:59 ******/
DROP TABLE [dbo].[childimages]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 06/24/2017 12:55:00 ******/
DROP TABLE [dbo].[Company]
GO
/****** Object:  Table [dbo].[CompanyRoles]    Script Date: 06/24/2017 12:55:00 ******/
DROP TABLE [dbo].[CompanyRoles]
GO
/****** Object:  Table [dbo].[contestq]    Script Date: 06/24/2017 12:55:00 ******/
DROP TABLE [dbo].[contestq]
GO
/****** Object:  Table [dbo].[Docs]    Script Date: 06/24/2017 12:55:00 ******/
DROP TABLE [dbo].[Docs]
GO
/****** Object:  Table [dbo].[EditHistory]    Script Date: 06/24/2017 12:55:00 ******/
DROP TABLE [dbo].[EditHistory]
GO
/****** Object:  Table [dbo].[EditHistoryDetails]    Script Date: 06/24/2017 12:55:00 ******/
DROP TABLE [dbo].[EditHistoryDetails]
GO
/****** Object:  Table [dbo].[faqs]    Script Date: 06/24/2017 12:55:00 ******/
DROP TABLE [dbo].[faqs]
GO
/****** Object:  Table [dbo].[LicenseDetails]    Script Date: 06/24/2017 12:55:00 ******/
ALTER TABLE [dbo].[LicenseDetails] DROP CONSTRAINT [DF_LicenseDetails_Active]
GO
DROP TABLE [dbo].[LicenseDetails]
GO
/****** Object:  Table [dbo].[LicensePricing]    Script Date: 06/24/2017 12:55:00 ******/
DROP TABLE [dbo].[LicensePricing]
GO
/****** Object:  Table [dbo].[LicenseTypes]    Script Date: 06/24/2017 12:55:00 ******/
DROP TABLE [dbo].[LicenseTypes]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 06/24/2017 12:55:01 ******/
DROP TABLE [dbo].[Location]
GO
/****** Object:  Table [dbo].[login]    Script Date: 06/24/2017 12:55:01 ******/
DROP TABLE [dbo].[login]
GO
/****** Object:  Table [dbo].[panswer]    Script Date: 06/24/2017 12:55:01 ******/
DROP TABLE [dbo].[panswer]
GO
/****** Object:  Table [dbo].[participant]    Script Date: 06/24/2017 12:55:01 ******/
DROP TABLE [dbo].[participant]
GO
/****** Object:  Table [dbo].[preview]    Script Date: 06/24/2017 12:55:01 ******/
DROP TABLE [dbo].[preview]
GO
/****** Object:  Table [dbo].[questions]    Script Date: 06/24/2017 12:55:01 ******/
DROP TABLE [dbo].[questions]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 06/24/2017 12:55:01 ******/
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[TypeGroups]    Script Date: 06/24/2017 12:55:01 ******/
DROP TABLE [dbo].[TypeGroups]
GO
/****** Object:  Table [dbo].[Types]    Script Date: 06/24/2017 12:55:01 ******/
DROP TABLE [dbo].[Types]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 06/24/2017 12:55:01 ******/
DROP TABLE [dbo].[UserLogins]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06/24/2017 12:55:02 ******/
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_Active]
GO
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[vendors]    Script Date: 06/24/2017 12:55:02 ******/
DROP TABLE [dbo].[vendors]
GO
/****** Object:  Table [dbo].[winners]    Script Date: 06/24/2017 12:55:02 ******/
DROP TABLE [dbo].[winners]
GO
/****** Object:  Table [dbo].[winners]    Script Date: 06/24/2017 12:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[winners](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NOT NULL,
	[cid] [int] NOT NULL,
	[locationId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vendors]    Script Date: 06/24/2017 12:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[vendors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[EmpNo] [varchar](20) NOT NULL,
	[EmailId] [varchar](50) NOT NULL,
	[RoleId] [int] NULL,
	[CompanyId] [int] NOT NULL,
	[Active] [int] NOT NULL,
	[GenderId] [int] NULL,
	[ManagerId] [int] NULL,
	[CountryId] [int] NULL,
	[StateId] [int] NULL,
	[ZipCode] [varchar](10) NULL,
	[ContactNo1] [varchar](20) NULL,
	[ContactNo2] [varchar](20) NULL,
	[Address] [varchar](500) NULL,
	[AltAddress] [varchar](500) NULL,
	[photo] [varchar](max) NULL,
	[UserName] [varchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06/24/2017 12:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[EmpNo] [varchar](20) NOT NULL,
	[EmailId] [varchar](50) NOT NULL,
	[RoleId] [int] NULL,
	[CompanyId] [int] NOT NULL,
	[Active] [int] NOT NULL CONSTRAINT [DF_Users_Active]  DEFAULT ((1)),
	[GenderId] [int] NULL,
	[ManagerId] [int] NULL,
	[CountryId] [int] NULL,
	[StateId] [int] NULL,
	[ZipCode] [varchar](10) NULL,
	[ContactNo1] [varchar](20) NULL,
	[ContactNo2] [varchar](20) NULL,
	[Address] [varchar](500) NULL,
	[AltAddress] [varchar](500) NULL,
	[photo] [varchar](max) NULL,
	[UserName] [varchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 06/24/2017 12:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginInfo] [nvarchar](50) NOT NULL,
	[PassKey] [nvarchar](50) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[salt] [varchar](50) NULL,
	[Active] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Types]    Script Date: 06/24/2017 12:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Types](
	[Id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](50) NULL,
	[active] [int] NULL,
	[TypeGroupid] [int] NOT NULL,
	[listkey] [varchar](50) NULL,
	[listvalue] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TypeGroups]    Script Date: 06/24/2017 12:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TypeGroups](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[Active] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 06/24/2017 12:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](500) NULL,
	[Active] [int] NOT NULL,
	[IsGlobal] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[questions]    Script Date: 06/24/2017 12:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[questions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question] [varchar](max) NULL,
	[option1] [varchar](50) NULL,
	[option2] [varchar](50) NULL,
	[option3] [varchar](50) NULL,
	[option4] [varchar](50) NULL,
	[locationId] [int] NULL,
	[contestId] [int] NULL,
	[answer] [varchar](50) NULL,
	[FromDate] [date] NOT NULL,
	[ToDate] [date] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[preview]    Script Date: 06/24/2017 12:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[preview](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[imageId] [int] NULL,
	[x1] [int] NULL,
	[y1] [int] NULL,
	[x2] [int] NULL,
	[y2] [int] NULL,
	[width] [int] NULL,
	[height] [int] NULL,
	[ChildImgId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[participant]    Script Date: 06/24/2017 12:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[participant](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[PhoneNo] [varchar](12) NULL,
	[emailid] [varchar](50) NULL,
	[locationId] [int] NULL,
	[question] [varchar](500) NULL,
	[answer] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[panswer]    Script Date: 06/24/2017 12:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[panswer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NOT NULL,
	[qid] [int] NOT NULL,
	[answer] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[login]    Script Date: 06/24/2017 12:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login](
	[userid] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Location]    Script Date: 06/24/2017 12:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Location](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](250) NULL,
	[Active] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicenseTypes]    Script Date: 06/24/2017 12:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LicenseTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LicenseType] [varchar](50) NOT NULL,
	[LicenseCode] [varchar](55) NOT NULL,
	[LicenseCatId] [int] NOT NULL,
	[Description] [varchar](500) NULL,
	[Active] [int] NOT NULL,
	[EffectiveFrom] [datetime] NULL,
	[EffectiveTill] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicensePricing]    Script Date: 06/24/2017 12:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicensePricing](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LicenseId] [int] NOT NULL,
	[RenewalFreqTypeId] [int] NOT NULL,
	[RenewalFreq] [int] NOT NULL,
	[UnitPrice] [decimal](18, 0) NOT NULL,
	[fromdate] [datetime] NULL,
	[todate] [datetime] NULL,
	[Active] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LicenseDetails]    Script Date: 06/24/2017 12:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LicenseDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LicenseTypeId] [int] NOT NULL,
	[FeatureTypeId] [int] NOT NULL,
	[FeatureLabel] [varchar](50) NULL,
	[FeatureValue] [varchar](100) NULL,
	[LabelClass] [varchar](50) NULL,
	[Active] [int] NOT NULL CONSTRAINT [DF_LicenseDetails_Active]  DEFAULT ((1)),
	[fromDate] [datetime] NULL,
	[toDate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[faqs]    Script Date: 06/24/2017 12:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[faqs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question] [varchar](250) NOT NULL,
	[answer] [varchar](1000) NOT NULL,
	[createdon] [datetime] NOT NULL,
	[createdby] [varchar](50) NOT NULL,
	[updatedon] [datetime] NOT NULL,
	[updatedby] [varchar](50) NOT NULL,
	[active] [int] NOT NULL,
	[category] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EditHistoryDetails]    Script Date: 06/24/2017 12:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EditHistoryDetails](
	[EditHistoryId] [int] NOT NULL,
	[FromValue] [varchar](50) NULL,
	[ToValue] [varchar](50) NULL,
	[ChangeType] [varchar](50) NOT NULL,
	[Field1] [varchar](50) NULL,
	[Field2] [varchar](50) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EditHistory]    Script Date: 06/24/2017 12:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EditHistory](
	[Field] [varchar](50) NOT NULL,
	[SubItem] [varchar](50) NOT NULL,
	[Comment] [varchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
	[ChangedBy] [varchar](50) NOT NULL,
	[ChangedType] [varchar](50) NOT NULL,
	[Task] [varchar](50) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Docs]    Script Date: 06/24/2017 12:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Docs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [varchar](100) NOT NULL,
	[DocTypeId] [int] NOT NULL,
	[FileContent] [varchar](max) NOT NULL,
	[createdDT] [date] NOT NULL,
	[UpdatedDT] [date] NOT NULL,
	[createdby] [int] NULL,
	[updatedby] [int] NULL,
	[LocationId] [int] NULL,
	[ExipryDate] [date] NULL,
	[EffectiveDate] [date] NULL,
	[Description] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contestq]    Script Date: 06/24/2017 12:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contestq](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[qid] [int] NOT NULL,
	[locationid] [int] NOT NULL,
	[week] [varchar](50) NULL,
	[fromdate] [varchar](50) NULL,
	[todate] [varchar](50) NULL,
	[month] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompanyRoles]    Script Date: 06/24/2017 12:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[Active] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 06/24/2017 12:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Desc] [varchar](50) NULL,
	[Active] [int] NOT NULL,
	[Address] [varchar](500) NOT NULL,
	[ContactNo1] [varchar](50) NOT NULL,
	[ContactNo2] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[EmailId] [varchar](50) NOT NULL,
	[Title] [varchar](50) NULL,
	[Caption] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[ZipCode] [int] NULL,
	[State] [varchar](50) NULL,
	[AlternateAddress] [varchar](500) NULL,
	[ShippingAddress] [varchar](500) NULL,
	[Logo] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[childimages]    Script Date: 06/24/2017 12:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[childimages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentImgId] [int] NOT NULL,
	[imageContent] [varchar](max) NULL,
	[description] [varchar](250) NULL,
	[imageName] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[answer]    Script Date: 06/24/2017 12:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[answer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[qid] [int] NOT NULL,
	[answer] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
