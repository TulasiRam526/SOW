USE [master]
GO
/****** Object:  Database [SOW_Db]    Script Date: 02-05-2023 18:32:49 ******/
CREATE DATABASE [SOW_Db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SOW_Db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SOW_Db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SOW_Db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SOW_Db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SOW_Db] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SOW_Db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SOW_Db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SOW_Db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SOW_Db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SOW_Db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SOW_Db] SET ARITHABORT OFF 
GO
ALTER DATABASE [SOW_Db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SOW_Db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SOW_Db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SOW_Db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SOW_Db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SOW_Db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SOW_Db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SOW_Db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SOW_Db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SOW_Db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SOW_Db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SOW_Db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SOW_Db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SOW_Db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SOW_Db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SOW_Db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SOW_Db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SOW_Db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SOW_Db] SET  MULTI_USER 
GO
ALTER DATABASE [SOW_Db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SOW_Db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SOW_Db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SOW_Db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SOW_Db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SOW_Db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SOW_Db] SET QUERY_STORE = OFF
GO
USE [SOW_Db]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountId] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidate](
	[CandidateId] [int] IDENTITY(1,1) NOT NULL,
	[CandidateName] [nvarchar](100) NOT NULL,
	[MobileNo] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](20) NOT NULL,
	[DOB] [datetime] NOT NULL,
	[EmailId] [nvarchar](100) NOT NULL,
	[Skills] [nvarchar](max) NULL,
	[Location] [nvarchar](100) NOT NULL,
	[Pincode] [nvarchar](10) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[JoiningDate] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[IsInternal] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Candidate] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](100) NULL,
	[RegionId] [int] NULL,
	[isDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DellManager]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DellManager](
	[DellManagerId] [int] IDENTITY(1,1) NOT NULL,
	[DellManagerName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_DellManagerName] PRIMARY KEY CLUSTERED 
(
	[DellManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Domain]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Domain](
	[DomainId] [int] IDENTITY(1,1) NOT NULL,
	[DomainName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[Location] [nvarchar](50) NULL,
	[RegionId] [int] NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[LoginId] [int] IDENTITY(1,1) NOT NULL,
	[LoginName] [nvarchar](100) NOT NULL,
	[LoginPassword] [nvarchar](100) NOT NULL,
	[EmailId] [nvarchar](200) NOT NULL,
	[RoleId] [int] NOT NULL,
	[Islock] [bit] NULL,
	[FailureAttempts] [int] NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[PermissionId] [int] IDENTITY(1,1) NOT NULL,
	[PermissionName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recruiter]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recruiter](
	[RecruiterId] [int] IDENTITY(1,1) NOT NULL,
	[RecruiterName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_RecruiterName] PRIMARY KEY CLUSTERED 
(
	[RecruiterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[RegionId] [int] IDENTITY(1,1) NOT NULL,
	[Region] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[RegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NULL,
	[PermissionId] [int] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleScreens]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleScreens](
	[RoleScreenId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ScreenId] [int] NOT NULL,
 CONSTRAINT [PK_RoleScreens] PRIMARY KEY CLUSTERED 
(
	[RoleScreenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screens]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screens](
	[ScreenId] [int] IDENTITY(1,1) NOT NULL,
	[ScreenName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Screens] PRIMARY KEY CLUSTERED 
(
	[ScreenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOW]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOW](
	[SowId] [int] IDENTITY(1,1) NOT NULL,
	[SoName] [nvarchar](100) NULL,
	[JRCode] [nvarchar](10) NULL,
	[RequestCreationDate] [datetime] NULL,
	[AccountId] [int] NOT NULL,
	[TechnologyId] [int] NOT NULL,
	[Role] [nvarchar](100) NULL,
	[LocationId] [int] NULL,
	[RegionId] [int] NOT NULL,
	[TargetOpenPositions] [int] NULL,
	[PositionsTobeClosed] [int] NULL,
	[USTPOCId] [int] NOT NULL,
	[RecruiterId] [int] NOT NULL,
	[USTTPMId] [int] NOT NULL,
	[DellManagerId] [int] NOT NULL,
	[StatusId] [int] NULL,
	[Band] [nvarchar](100) NULL,
	[ProjectId] [nvarchar](100) NULL,
	[AccountManager] [nvarchar](200) NULL,
	[ExternalResource] [nvarchar](100) NULL,
	[InternalResource] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_SOW] PRIMARY KEY CLUSTERED 
(
	[SowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOWCandidate]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOWCandidate](
	[SOW_CandidateId] [int] IDENTITY(1,1) NOT NULL,
	[SowId] [int] NOT NULL,
	[CandidateId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_SOWCandidate] PRIMARY KEY CLUSTERED 
(
	[SOW_CandidateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](100) NULL,
	[IsDeleted] [bit] NOT NULL,
	[StatusType] [varchar](20) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Technology]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technology](
	[TechnologyId] [int] IDENTITY(1,1) NOT NULL,
	[TechnologyName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
	[DomainId] [int] NOT NULL,
 CONSTRAINT [PK__Technolo__705701585B3368AA] PRIMARY KEY CLUSTERED 
(
	[TechnologyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USTPOC]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USTPOC](
	[USTPOCId] [int] IDENTITY(1,1) NOT NULL,
	[USTPOCName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_USTPOCName] PRIMARY KEY CLUSTERED 
(
	[USTPOCId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USTTPM]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USTTPM](
	[USTTPMId] [int] IDENTITY(1,1) NOT NULL,
	[USTTPMName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_USTTPMName] PRIMARY KEY CLUSTERED 
(
	[USTTPMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountId], [AccountName], [isDeleted]) VALUES (1, N'DL-IN', 0)
INSERT [dbo].[Account] ([AccountId], [AccountName], [isDeleted]) VALUES (2, N'DL-US', 0)
INSERT [dbo].[Account] ([AccountId], [AccountName], [isDeleted]) VALUES (3, N'DL-USTI', 0)
INSERT [dbo].[Account] ([AccountId], [AccountName], [isDeleted]) VALUES (4, N'DL-MY', 0)
INSERT [dbo].[Account] ([AccountId], [AccountName], [isDeleted]) VALUES (5, N'DL_N', 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Candidate] ON 

INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted]) VALUES (1, N'Deepika A', N'9182737383', N'female', CAST(N'2000-04-03T00:00:00.000' AS DateTime), N'akuladeepika431@gmail.com', N'Angular', N'Bangalore', N'456382', N'Ananthapur', CAST(N'2023-03-03T00:00:00.000' AS DateTime), 6, 1, 0)
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted]) VALUES (2, N'divya G', N'7982876283', N'female', CAST(N'2001-02-14T00:00:00.000' AS DateTime), N'divya@gmail.com', N'Java', N'hydrabad', N'456382', N'Ananthapur', CAST(N'2023-04-04T00:00:00.000' AS DateTime), 4, 1, 0)
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted]) VALUES (3, N'Bhagya', N'9239282922', N'female', CAST(N'1998-02-10T00:00:00.000' AS DateTime), N'bhagya@ust.com', N'.Net', N'tirupathi', N'563876', N'tirupati', CAST(N'2023-04-13T00:00:00.000' AS DateTime), 5, 0, 0)
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted]) VALUES (4, N'divya123 G', N'7982876283', N'female', CAST(N'2001-02-14T00:00:00.000' AS DateTime), N'divya123@gmail.com', N'Java', N'hydrabad', N'456382', N'Ananthapur', CAST(N'2023-04-04T00:00:00.000' AS DateTime), 4, 1, 0)
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted]) VALUES (5, N'prathyushareddy12', N'8522019567', N'female', CAST(N'2023-04-15T00:00:00.000' AS DateTime), N'prathyushareddy1235@ust-global.com', N'c#', N'Hyderabad', N'500084', N'1-14,neeliagudem,thripuraram,nalgonda', CAST(N'2023-04-21T00:00:00.000' AS DateTime), 5, 1, 0)
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted]) VALUES (6, N'sahith', N'8522019567', N'female', CAST(N'2023-04-15T00:00:00.000' AS DateTime), N'sahith@ust.com', N'c#', N'Hyderabad', N'500084', N'1-14,neeliagudem,thripuraram,nalgonda', CAST(N'2023-04-21T00:00:00.000' AS DateTime), 5, 1, 0)
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted]) VALUES (7, N'bharath', N'8522019567', N'female', CAST(N'2023-04-15T00:00:00.000' AS DateTime), N'bharath@ust.com', N'c#', N'Hyderabad', N'500084', N'1-14,neeliagudem,thripuraram,nalgonda', CAST(N'2023-04-21T00:00:00.000' AS DateTime), 5, 1, 0)
SET IDENTITY_INSERT [dbo].[Candidate] OFF
GO
SET IDENTITY_INSERT [dbo].[DellManager] ON 

INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (1, N' Anand Selvaraj', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (2, N' Anvesh Kalia', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (3, N'Afsar/Cody', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (4, N'Ajay', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (6, N'Akash', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (7, N'Akta/Jyothi ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (9, N'Amaresh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (11, N'Amit/Ramnath ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (12, N'Anand', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (14, N'Anand/Seshu NVL', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (15, N'Anirudh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (17, N'Anna Jose', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (18, N'Anna Saheb', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (20, N'Anvesh/Gopal', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (21, N'Archana', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (22, N'Arihant', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (23, N'Arihanth/Madhukartha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (24, N'Asha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (26, N'Ashish', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (27, N'Ashwin K', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (28, N'Asish', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (30, N'Azeem/Chetana', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (31, N'Azeem/Sujatha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (32, N'Badri', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (33, N'Balaji', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (34, N'Balaji S', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (35, N'Balaji Venkatesan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (37, N'Bandakka, Jyothi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (38, N'Bhadri Ravikanth', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (39, N'Bharathi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (41, N'Bijaya Mohanthi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (43, N'Bijaya Mohanty/Vinay', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (44, N'Biju', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (45, N'Biju Kariamadathil', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (46, N'Bill Huang', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (47, N'Binoy/OMSS', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (48, N'Brent', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (49, N'Cecil Joseph', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (50, N'Chandresh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (51, N'Chetan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (52, N'Chetan Somaiah', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (54, N'Chetana/Jason', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (55, N'Chinna Basappa', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (56, N'Chris ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (57, N'Chris Choo', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (58, N'Daniela', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (59, N'Darren', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (60, N'Darren/Pareen', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (63, N'Dhanraj', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (66, N'Edward Benedict', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (67, N'Edward/Mahantesh P', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (69, N'Firyana', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (70, N'Ganesh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (71, N'Ganesh Krishnamurthy', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (72, N'Ganesh Krishnamurty ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (73, N'Gokul', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (74, N'Govardhini', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (75, N'Greg', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (76, N'Gudip, Raja Munishwar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (77, N'Guna', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (78, N'Guru', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (79, N'GuruPrasad', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (80, N'Hari Krishna ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (81, N'Hari Laxman/Chandra', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (82, N'Hari/Ashish', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (83, N'Hari/Binoy', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (84, N'Hari/Storage', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (85, N'Harish Hegde', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (87, N'Haseeb', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (89, N'Jagadeesh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (91, N'Jagan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (93, N'Jaqueline', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (95, N'Jasti Govardhani', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (97, N'Jerome', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (98, N'JoAnne', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (99, N'Joey', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (101, N'Jyothi Sahoo', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (102, N'Kanti Kiran', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (103, N'Karen/Madhu Kodali ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (104, N'Karthik Shetty ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (106, N'Kimberly Pierce', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (108, N'Kiran PK', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (110, N'Krishna M', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (111, N'Krishna Reddy', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (112, N'Krishna Seshampalli', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (114, N'Leya', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (115, N'Lisa', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (117, N'Lubica', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (118, N'Madhu Kartha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (120, N'Madhu/Naveen', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (121, N'Madhu/Nithin', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (122, N'Madhukartha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (123, N'Madhusudhan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (125, N'Mahesh Kancharla', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (127, N'Mallikarjun', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (128, N'Manjulatha Kurri', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (129, N'Marcio', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (131, N'Mathew,Reena', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (132, N'Mathew/Chetana', 0)
GO
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (133, N'McClure, Lisa ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (134, N'Michele', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (135, N'Michele M Smith', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (136, N'Michele Smith', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (138, N'Miton', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (140, N'Mohan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (141, N'Mudalappa', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (142, N'Mudlappa', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (144, N'Murthy/Ganesh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (146, N'Naga', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (147, N'Naga Gajjala', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (148, N'Nagesh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (151, N'Nitin Kungar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (152, N'Nitin/Madhukartha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (153, N'Obul', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (154, N'Owaiz', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (155, N'Paddy', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (156, N'Padmanabha V', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (157, N'Paparao', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (158, N'Pareen/Vinay', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (159, N'Pedro', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (160, N'Peng Siang', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (161, N'Pengsoon', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (162, N'Philip, Thomas ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (164, N'Poornima', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (165, N'Prabhat Biswas', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (166, N'Prabhu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (167, N'Pradeep/Mala', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (169, N'Praneeth', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (170, N'Praneeth/Prashanth', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (172, N'Prasad Devadiga', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (174, N'Praveen ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (175, N'Praveen Kumar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (176, N'Praveen MM', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (178, N'Preethi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (179, N'Preethi SathishBabu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (180, N'Preeti', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (181, N'Prince Antony', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (182, N'Radhika', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (183, N'Radhika/Chetana', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (185, N'Raja Munishwar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (186, N'Raja T', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (187, N'Rajitha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (189, N'Rajneesh Shukla', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (190, N'Rajnikanth', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (191, N'Rakesh Mohan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (193, N'Ramnath Pai', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (194, N'Ranga', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (195, N'Ranga/Chetana', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (196, N'Ranjit', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (197, N'Ranjith Vizhakkat', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (198, N'Ravindra Chelamkuri', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (199, N'Reinaldo', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (200, N'Ripa Patel', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (201, N'Ritu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (202, N'Robin Khosla', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (203, N'Rohitha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (204, N'Sagar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (205, N'Sai', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (206, N'Sailaja', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (207, N'Sailaja/Praveen MM', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (208, N'Saira Banu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (209, N'Sairabanu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (210, N'Sajan Jose', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (211, N'Sajen', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (212, N'Sajen Jose', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (214, N'Sandeep', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (215, N'Sandeep Jahagirdar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (216, N'Sanjay', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (218, N'Sanmati', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (219, N'Santosh Nair', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (220, N'Sarat Munagapati', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (223, N'Saumyadipta ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (224, N'Sayeed Ahmed ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (225, N'Scott Frazier', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (227, N'Senthil', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (229, N'Seshu/Sushma', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (230, N'Shalini Chauhan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (231, N'Shameer', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (232, N'shameer,saidu ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (233, N'Sheirlin', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (234, N'Sherilin', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (235, N'Shoib', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (237, N'Siva', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (238, N'Sohan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (239, N'Spurthi/Saravanan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (240, N'Sreedevi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (242, N'Sri Ram', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (243, N'Sridevi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (244, N'Sridharan Ramkumar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (245, N'Srikantha Tirandas', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (247, N'Srinivas Teki', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (248, N'SrinivasMallampalli', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (249, N'Sriram', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (250, N'Sriram Chandrasekharan/Carlos', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (251, N'Srivastava, Gaurav', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (252, N'Srivatsa Chalam', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (254, N'Sudheendra', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (255, N'Sudhindra', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (256, N'Sujatha', 0)
GO
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (258, N'Sujith Ravaindran', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (259, N'Sujith Ravidran', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (261, N'Suman Cherukpalli', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (262, N'Suman Cherukupalli', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (263, N'Suman/Saumya', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (265, N'Sunil', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (266, N'Sunita', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (268, N'Surendra Reddy', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (269, N'Suresh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (271, N'Suresh Kondapi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (273, N'Suresh Singh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (274, N'Sushma', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (275, N'Sushma/Seshu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (277, N'Syed', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (278, N'T V Ramgopal', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (280, N'Thomas', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (281, N'Thomas philip', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (282, N'Thomas Phillip', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (283, N'TS', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (284, N'TV Gokul/Vivekananda', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (286, N'Umesh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (287, N'Umesh K', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (288, N'Umesh, Singh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (290, N'Uzair Farooqui', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (291, N'Vageesha/Prajot', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (292, N'Venkat Damerla', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (293, N'Venkata Damerla', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (295, N'Vijeesh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (296, N'Vikas', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (297, N'Vikas/Kiran', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (298, N'Vikas/Kiran PK', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (301, N'Vinay Parthasarathy/Shalini/', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (302, N'Vinay.Parthasarathy/Alex', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (303, N'Vineeta', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (305, N'Vinod ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (306, N'Vinu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (307, N'Vinu Nair', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (308, N'Vishal', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (309, N'Vishal Agarwal', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (310, N'Vishal Gandhi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (312, N'Vishwa  K', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (313, N'Vishwa B R', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (315, N'Vishwa K', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (318, N'Viswanath Krishnamur', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (319, N'Viswanath Meghanatham', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (320, N'Viswanath Megnath', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (321, N'Vivekanand R', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (322, N'Wai on', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (323, N'Wignes', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (324, N'Wilson/Swati', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (325, N'Zang', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (326, N'Zhen', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (328, N'Abhilash', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (330, N'Ajoy Basu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (332, N'Akta/Sunil', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (334, N'Amit', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (335, N'Amit/Chetana', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (337, N'Anand Selvaraj', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (339, N'Anirudh M A', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (341, N'Anuj', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (342, N'Anuj Gupta', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (343, N'Anvesh Kalia', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (344, N'Arun Sanjay', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (345, N'Arvind ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (346, N'Asha Shanmugan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (347, N'Asha/Srivatsav', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (350, N'Azeem', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (354, N'Balaji/Suresh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (356, N'Bangaru/Pareen', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (357, N'Basant', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (359, N'Bijaya', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (361, N'Bijaya Mohanty', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (364, N'Bobby', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (365, N'Cancelled', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (366, N'Chandresh Suman', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (368, N'Chetana/Azeem', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (372, N'Das1,Sunita', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (373, N'Debasis', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (374, N'Deepa Khed', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (375, N'Deepa Srikumar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (376, N'Deva', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (378, N'Dolton', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (379, N'Dolton John/Ravi Kulkarni', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (380, N'Dolton John/Tiva', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (382, N'Eileen', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (383, N'Elavarasu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (384, N'Evelyn ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (386, N'Ganesh K', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (391, N'Harsh Sharma', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (393, N'Indu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (395, N'Jagadish', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (396, N'Jagdish Yadav', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (397, N'Jaipal', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (399, N'Jason/Chetana', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (401, N'Jaysheelan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (402, N'Jeff Hughes', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (404, N'John Dorman', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (406, N'Jyoti Sahoo', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (408, N'ken', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (409, N'Kingsley/Sitha', 0)
GO
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (410, N'Kiran', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (411, N'Kiran HR', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (412, N'Kiran Rangaswamy', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (413, N'Kiran/ Girish K ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (414, N'Krishna', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (416, N'Krishna mylapur', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (417, N'Krsihna M', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (418, N'Lakshmanan, Hari ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (419, N'Lala', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (420, N'Leon', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (422, N'Lisa Resendez', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (424, N'Madhu Kodali', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (425, N'Madhu/Radhika', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (427, N'MAHANTESH/EDWARD', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (428, N'Mahantesh/Edward Benedict', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (429, N'Mahaveer', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (430, N'Mahaveer Jain', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (431, N'Mahavir', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (433, N'Mallari', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (435, N'Mallikarjun Garikapa', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (436, N'Mamatha Mahadevappa', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (438, N'Masthan Reddy', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (439, N'Mathew', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (441, N'Menu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (443, N'Mihai Stan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (444, N'Mike', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (446, N'Mitra', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (447, N'Mofi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (449, N'Munwar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (450, N'Murali', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (452, N'NA', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (455, N'Nandin', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (456, N'Naveen', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (457, N'Nihilo', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (458, N'Nirmala Mallanna', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (459, N'Nitin', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (461, N'Norman Simmonds', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (462, N'Padmanabha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (464, N'Pareen', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (467, N'Piyush', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (468, N'Poh Chiu Lim', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (470, N'Pradeep', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (471, N'Prajot', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (472, N'Prajot Kurade', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (474, N'Prasad A/Nagendra', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (475, N'Prasad Avula', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (476, N'PrasadSiddheshwar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (477, N'Prashanth', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (478, N'Pratiba Verma', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (481, N'Praveen Sai guru', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (483, N'Raj', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (484, N'Raj Markala', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (486, N'Raja Munishwer', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (487, N'Rajesh Kumar Alle', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (488, N'Rajesh Pandita', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (489, N'Rajkumar Markala', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (490, N'Rajneesh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (493, N'Ramkumar Sridharan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (494, N'Ranbir', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (495, N'Ravi Jayanthan ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (496, N'Robin /Murali', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (498, N'Sailesh/Anand', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (500, N'Sajith Das', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (503, N'Sanjay Tiwari', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (506, N'Saravanan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (507, N'Saravanan/SivGanesh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (508, N'Sareen', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (510, N'Savitha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (512, N'Selvaraj', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (514, N'Senthil Urkavalan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (515, N'Seshu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (517, N'Sherlin', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (518, N'Sheshu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (519, N'Shibi Paniker', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (520, N'Shoaib Ulla Khan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (521, N'Shwetha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (522, N'Shwetha Acharya', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (523, N'Sibi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (524, N'Sivanand', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (525, N'Soumya', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (526, N'Spoorthi ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (528, N'Sreerama', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (531, N'Srinivas Mallampalli', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (535, N'Subhasis', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (538, N'Sujay/Subhodeep', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (539, N'Sujay/Susana', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (540, N'Sujith', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (541, N'Sukanth', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (542, N'Suman', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (543, N'Sumathi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (544, N'Sundar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (546, N'Sunita Das', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (547, N'Sunitha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (549, N'Suresh K', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (551, N'Suresh Kondapoi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (552, N'Suresh R', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (554, N'Swapna', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (555, N'Swapna Mishra', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (556, N'Swathi ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (557, N'swati K', 0)
GO
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (558, N'Tanmajoy', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (559, N'TBD', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (560, N'Teja', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (561, N'Thiru', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (562, N'Tousif', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (564, N'Uday', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (566, N'Umesh/Akta', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (567, N'Umesh/Mathew', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (570, N'Vijay Ragam', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (572, N'Vikrant', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (573, N'Vikranth', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (574, N'Vinay', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (575, N'Vinay Parthasarathy', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (576, N'Vineetha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (577, N'Vinitha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (581, N'Vishwa', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (583, N'Vishwa BR', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (585, N'Vishwanath Megnath', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (586, N'Viswa', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (587, N'Viswa k', 0)
SET IDENTITY_INSERT [dbo].[DellManager] OFF
GO
SET IDENTITY_INSERT [dbo].[Domain] ON 

INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (1, N'UX/UI', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (2, N'Analytics', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (3, N'Cloud', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (4, N'QA/QE', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (5, N'Mobility', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (6, N'Others', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (7, N'PM', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (8, N'R&D', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (9, N'Support', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (10, N'DB', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (11, N'App Dev', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (12, N'EBI/DWH', 0)
SET IDENTITY_INSERT [dbo].[Domain] OFF
GO
SET IDENTITY_INSERT [dbo].[Location] ON 

INSERT [dbo].[Location] ([LocationId], [Location], [RegionId], [isDeleted]) VALUES (1, N'US', 4, 0)
INSERT [dbo].[Location] ([LocationId], [Location], [RegionId], [isDeleted]) VALUES (2, N'HYD', 1, 0)
INSERT [dbo].[Location] ([LocationId], [Location], [RegionId], [isDeleted]) VALUES (3, N'SG', 3, 0)
INSERT [dbo].[Location] ([LocationId], [Location], [RegionId], [isDeleted]) VALUES (4, N'MY', 2, 0)
INSERT [dbo].[Location] ([LocationId], [Location], [RegionId], [isDeleted]) VALUES (5, N'BNG', 1, 0)
SET IDENTITY_INSERT [dbo].[Location] OFF
GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId], [Islock], [FailureAttempts]) VALUES (1, N'Admin', N'U293QDEyMw==', N'admin@gmail.com', 1, 1, 0)
INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId], [Islock], [FailureAttempts]) VALUES (2, N'Bhagya', N'U293QDEyMw==', N'bhagya@ust.com', 1, 1, 0)
INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId], [Islock], [FailureAttempts]) VALUES (13, N'Deepika', N'RGVlcGlrYUAxMjM=', N'deepika@ust.com', 1, 1, 0)
INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId], [Islock], [FailureAttempts]) VALUES (14, N'Chaithra', N'QWJjZEAxMjM=', N'chaithra@ust.com', 1, 0, 0)
INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId], [Islock], [FailureAttempts]) VALUES (15, N'User', N'U293QDEyMw==', N'user@ust.com', 1, 0, 1)
SET IDENTITY_INSERT [dbo].[Login] OFF
GO
SET IDENTITY_INSERT [dbo].[Permission] ON 

INSERT [dbo].[Permission] ([PermissionId], [PermissionName]) VALUES (1, N'View')
INSERT [dbo].[Permission] ([PermissionId], [PermissionName]) VALUES (2, N'Edit')
SET IDENTITY_INSERT [dbo].[Permission] OFF
GO
SET IDENTITY_INSERT [dbo].[Recruiter] ON 

INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (1, N'Abdul Gafoor', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (2, N'Abhishek', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (3, N'Abhishek P', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (4, N'Amritha Shasidharan', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (5, N'Arun', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (6, N'Ashok', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (7, N'Benjamin', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (8, N'Harish', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (9, N'Harish B', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (10, N'Hasan', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (11, N'Jaya Sri', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (12, N'Jhansi', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (13, N'Jhansi C', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (14, N'Kunal', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (15, N'Laxman E', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (16, N'Moonraft', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (17, N'Narendra', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (18, N'Niriksha G', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (19, N'Partha', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (20, N'Praseeda S', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (21, N'Priyadarshini', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (22, N'Puja', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (23, N'Rakesh Ranjanrout', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (24, N'Soumya Dash', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (25, N'Sreenivasa', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (26, N'Sreenivasa N', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (27, N'Srinivas', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (28, N'Srivani Doli', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (29, N'Suman K', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (30, N'Sumant G', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (31, N'Varnitha', 0)
SET IDENTITY_INSERT [dbo].[Recruiter] OFF
GO
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([RegionId], [Region], [isDeleted]) VALUES (1, N'IN', 0)
INSERT [dbo].[Region] ([RegionId], [Region], [isDeleted]) VALUES (2, N'MY', 0)
INSERT [dbo].[Region] ([RegionId], [Region], [isDeleted]) VALUES (3, N'SG', 0)
INSERT [dbo].[Region] ([RegionId], [Region], [isDeleted]) VALUES (4, N'US', 0)
SET IDENTITY_INSERT [dbo].[Region] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleId], [RoleName], [PermissionId]) VALUES (1, N'Admin', 2)
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[RoleScreens] ON 

INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (1, 1, 1)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (2, 1, 2)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (3, 1, 3)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (4, 1, 4)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (5, 1, 5)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (6, 1, 6)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (7, 1, 7)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (8, 1, 8)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (9, 1, 9)
SET IDENTITY_INSERT [dbo].[RoleScreens] OFF
GO
SET IDENTITY_INSERT [dbo].[Screens] ON 

INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (1, N'CandidateDetails')
INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (2, N'SOW')
INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (3, N'Domain')
INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (4, N'Technology')
INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (5, N'Mapping')
INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (6, N'SoList')
INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (7, N'CandidateList')
INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (8, N'Registration')
INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (9, N'ChangePassword')
SET IDENTITY_INSERT [dbo].[Screens] OFF
GO
SET IDENTITY_INSERT [dbo].[SOW] ON 

INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted]) VALUES (1, N'deepika', N'142', CAST(N'2023-03-14T14:47:22.960' AS DateTime), 4, 180, N'Dev', 3, 2, 2, 1, 41, 28, 63, 577, 2, N'A', N'12345', N'sathish', N'test1', N'wrfrwgwe', 0)
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted]) VALUES (2, N'Chaithra', N'1234', CAST(N'2023-04-04T13:06:55.020' AS DateTime), 4, 180, N'Developer', 3, 2, 1, 1, 41, 28, 63, 577, 2, N'A', N'123', N'mahesh', N'bhagya', N'bhagya', 0)
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted]) VALUES (3, N'Bhagya', N'14', CAST(N'2023-04-04T13:26:08.807' AS DateTime), 3, 175, N'admin', 3, 3, 1, 1, 37, 27, 66, 573, 3, N'A', N'dhhef', N'mahesh', N'test1', N'chaithra', 0)
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted]) VALUES (4, N'test', N'14', CAST(N'2023-03-03T00:00:00.000' AS DateTime), 3, 178, N'Software Developer', 2, 3, 1, 1, 37, 24, 64, 581, 1, N'c', N'12345', N'mahesh', N'test1', N'wrfrwg', 0)
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted]) VALUES (5, N'Chaithra123', N'1234', CAST(N'2023-04-04T13:06:55.020' AS DateTime), 4, 180, N'Developer', 3, 2, 1, 1, 41, 28, 63, 577, 2, N'A', N'123', N'mahesh', N'bhagya', N'bhagya', 0)
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted]) VALUES (6, N'prathyusha123', N'1234', CAST(N'2023-04-04T13:06:55.020' AS DateTime), 4, 180, N'Developer', 3, 2, 1, 1, 41, 28, 63, 577, 2, N'A', N'123', N'mahesh', N'bhagya', N'bhagya', 0)
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted]) VALUES (7, N'sahith', N'1234', CAST(N'2023-04-04T13:06:55.020' AS DateTime), 4, 180, N'Developer', 3, 2, 1, 1, 41, 28, 63, 577, 2, N'A', N'123', N'mahesh', N'bhagya', N'bhagya', 0)
SET IDENTITY_INSERT [dbo].[SOW] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusId], [StatusName], [IsDeleted], [StatusType]) VALUES (1, N'Offered', 0, N'SO')
INSERT [dbo].[Status] ([StatusId], [StatusName], [IsDeleted], [StatusType]) VALUES (2, N'Declined', 0, N'SO')
INSERT [dbo].[Status] ([StatusId], [StatusName], [IsDeleted], [StatusType]) VALUES (3, N'Closed', 0, N'SO')
INSERT [dbo].[Status] ([StatusId], [StatusName], [IsDeleted], [StatusType]) VALUES (4, N'Joined', 0, N'Candidate')
INSERT [dbo].[Status] ([StatusId], [StatusName], [IsDeleted], [StatusType]) VALUES (5, N'Cancelled', 0, N'Candidate')
INSERT [dbo].[Status] ([StatusId], [StatusName], [IsDeleted], [StatusType]) VALUES (6, N'Rejected', 0, N'Candidate')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Technology] ON 

INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (2, N' cyber security', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (3, N' React JS', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (4, N' RPA', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (5, N' Vulnerability Remediation', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (6, N'.Net', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (7, N'.NET - Full stack', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (8, N'0', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (9, N'ABAP', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (10, N'Abinitio', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (11, N'Agile Coach', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (12, N'Agile PLM', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (13, N'AI/ML', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (14, N'AM', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (15, N'AMS', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (16, N'Angular Dev', 0, 1)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (17, N'Angular JS', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (18, N'Angular UI', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (19, N'Ansible', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (20, N'API Developers', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (21, N'API/Phyton', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (22, N'App Build', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (23, N'App support', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (24, N'Apps', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (25, N'Architect', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (26, N'Associate', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (27, N'Associate Business Analysis', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (28, N'Azure', 0, 3)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (29, N'B2B', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (30, N'BA', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (31, N'BIOS', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (32, N'Biztalk', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (33, N'BOBJ', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (34, N'BOOMI', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (35, N'BPEL', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (36, N'C++', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (37, N'C++', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (38, N'Cassandra', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (39, N'Cloud infra', 0, 3)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (40, N'Cloudera Developer/ Admin', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (41, N'Content Development', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (42, N'cyber security', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (43, N'DA - Data Analytics', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (44, N'Data Analytics', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (45, N'Data Architect', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (46, N'Data Engineer', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (47, N'Data Governance', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (48, N'Data Science', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (49, N'DB Developer', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (50, N'DBA/Dev', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (51, N'Delivery Manager ', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (52, N'Desktop Support', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (53, N'Devops', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (54, N'Document Writer', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (55, N'DWH -PM', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (56, N'ELASTIC', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (57, N'ELK', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (58, N'Embedded Developer', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (59, N'EMS-Support Analyst', 0, 9)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (60, N'ETL Architect', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (61, N'ETL Developer', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (62, N'ETL Streamsets', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (63, N'ETL Tester', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (64, N'Financial Force', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (65, N'Flutter', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (66, N'Fresher', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (67, N'Golang', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (68, N'GPU Driver Engineer', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (69, N'Grafana and Kibana', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (70, N'Greenplum Admins', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (71, N'Greenplum DBA', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (72, N'Hadoop', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (73, N'Hardware', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (74, N'HPC', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (75, N'Hybrid', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (76, N'Hybrid  ', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (77, N'Hyperion', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (78, N'ILM', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (79, N'IMS', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (80, N'Informatica Support', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (81, N'Informatica/Teradata', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (82, N'Infra', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (83, N'Install Shield', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (84, N'Integration', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (85, N'Inv Mgr', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (86, N'Java', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (87, N'Java - Angular', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (88, N'Java - Backend', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (89, N'JAVA - Full stack', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (90, N'Java - Fullstack', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (91, N'Java - Node.js', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (92, N'JIRA', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (93, N'Kafka', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (94, N'L2 Support', 0, 9)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (95, N'L2/L3 Support', 0, 9)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (96, N'L3 Support', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (97, N'Linux', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (98, N'MEMSQL', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (99, N'Middleware', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (100, N'ML Engineer', 0, 6)
GO
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (101, N'MOBILITY', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (102, N'MongoDB', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (103, N'Monitoring', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (104, N'MS Dynamics ', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (105, N'MSAS', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (106, N'NEO4J', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (107, N'Nifi Dev', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (108, N'OBIEE', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (109, N'OBIEE Admin', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (110, N'OBIEE Lead', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (111, N'ODI Developer', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (112, N'Oracle', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (113, N'Oracle Apps', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (114, N'Oracle AR', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (115, N'Oracle DB', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (116, N'Oracle DBA', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (117, N'Oracle OM', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (118, N'Oracle PLM', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (119, N'Oracle SOA', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (120, N'OS ', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (121, N'OS Core Agent: ', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (122, N'Others', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (123, N'OTM', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (124, N'PC Tech', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (125, N'Pega', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (126, N'Perf. Test', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (127, N'PL/SQL', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (128, N'PM', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (129, N'PMO', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (130, N'PO', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (131, N'PO/TPM', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (132, N'POC', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (133, N'PostgreSQL', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (134, N'Power BI', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (135, N'Process Associate', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (136, N'Product Manager', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (137, N'Program Mgr', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (138, N'Python ', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (139, N'Rabbit MQ', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (140, N'React JS', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (141, N'RPA', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (142, N'SAP', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (143, N'SAP BW', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (144, N'Scrum Master', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (145, N'SDET', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (146, N'SDET', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (147, N'Security Vulnerabilities ', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (148, N'Server', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (149, N'Service now', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (150, N'SFDC', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (151, N'Siebel', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (152, N'Software Developer', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (153, N'Spark/Scala', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (154, N'SQL Developer', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (155, N'SQL Server', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (156, N'Sr Associate', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (157, N'SSCM', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (158, N'SSIS,SSAS', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (159, N'Storage/Backup administration', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (160, N'Streamsets', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (161, N'System Engg', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (162, N'Tableau', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (163, N'Tech Recruiter', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (164, N'Tech Writer', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (165, N'Technical Writer', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (166, N'Template', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (167, N'Teradata', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (168, N'Test lead', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (169, N'TPM', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (170, N'UEFI', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (171, N'UI Angular Dev', 0, 1)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (172, N'UI Dev', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (173, N'UI Dev - Angular', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (174, N'UI Dev - Angular JS', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (175, N'UI-Front end', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (176, N'Unix Shell Scripting', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (177, N'UX - Product Designer', 0, 1)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (178, N'UX Designer', 0, 1)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (179, N'UX Designer', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (180, N'Validation Eng', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (181, N'Weblogic Admin', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (182, N'Window Driver', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (183, N'Window system Engg', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (184, N'Windows App UI Developer ', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (185, N'Windows OS Plat', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (186, N'Winforms', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (187, N'XQUERY Dev', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (188, N'XSLT and XSLFO ', 0, 6)
SET IDENTITY_INSERT [dbo].[Technology] OFF
GO
SET IDENTITY_INSERT [dbo].[USTPOC] ON 

INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (1, N'Mag', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (2, N'Revathy', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (3, N'Bharathi', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (4, N'Bhavya/Sirisha', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (5, N'Uday', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (6, N'Chitralekha M', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (7, N'Hema', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (8, N'Chitra/Jayasheela', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (9, N'Mag/Priya', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (10, N'Mag/Srini', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (11, N'Chitra/Moonraft', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (12, N'Sirisha', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (13, N'Magdalen M', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (14, N'Chitra/Practice', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (15, N'Rakshitha', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (16, N'Divya', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (17, N'Rakshitha/Moonraft', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (18, N'Bhavya/Kanika', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (19, N'Rakshitha B', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (20, N'Bhavya', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (21, N'Kanika', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (22, N'Bhavya/Hema', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (23, N'Technical Document writter', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (24, N'Hema/Bhavya', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (25, N'Mag/Ashok', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (26, N'Bhavya/Rakshitha', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (27, N'Divya P', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (28, N'Sirisha/Divya', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (29, N'Rahul', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (30, N'Jayasheela', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (31, N'Sirisha/Bhavya', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (32, N'Mag/Harish', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (33, N'Rakshitha/Sirisha', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (34, N'Jayasheela N', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (35, N'Kanika/Jayasheela', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (36, N'Chitralekha M /Practice', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (37, N'Selva', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (38, N'Sirisha/Hema', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (39, N'Chitra', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (40, N'Rakshitha/Sagarika', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (41, N'Jaya/Kanika', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (42, N'Rakshitha B / MoonRaft', 0)
SET IDENTITY_INSERT [dbo].[USTPOC] OFF
GO
SET IDENTITY_INSERT [dbo].[USTTPM] ON 

INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (1, N'Manoj Durgam', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (2, N'Anand Rao', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (3, N'Velu Murugan', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (4, N'Manoj Kumar Durgam', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (5, N'Ravi', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (6, N'Krishna Sajja', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (7, N'Chandrakala KL', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (8, N'Ganesh Sathi', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (9, N'Jaismeen Sabharwal', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (10, N'Akash Mohan', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (11, N'Narasihma reddy', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (12, N'MAHESWARA RAO NAMBURI', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (13, N'Saravanan Sivagurunathan', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (14, N'Harishkumar Polepalli', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (15, N'Srinivas Chalamala', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (16, N'Manoj D', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (17, N'Sesha Phani', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (18, N'Rao Kovuru', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (19, N'Arun Panneerselvam', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (20, N'Sathish Baktha', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (21, N'Manoj Radhakrishnan', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (22, N'Vivek Raichur', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (23, N'Lakshminarasimha Akella', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (24, N'Prabhu Rampur', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (25, N'Maheswararao Namburi', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (26, N'Ravi Ponugupati', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (27, N'Lakshmi', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (28, N'Ravi Kumar Jonnalagadda', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (29, N'Sowmya swamy', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (30, N'Bharathi Inampudi', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (31, N'Seshaphani Durbhaka', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (32, N'Thomas Nellissery', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (33, N'Chalam', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (34, N'Ajish', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (35, N'Srini', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (36, N'Raghu ', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (37, N'Sai', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (38, N'Harish Gowda', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (39, N'Gowrishankar Krishnamurthy', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (40, N'Abdul Jabbarkarpoor', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (41, N'Prasanth Polam', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (42, N'Naga Venkateswara Rao Kasireddy', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (43, N'Jenny Joy', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (44, N'Satya Giri', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (45, N'Ravi Prakash Ponugupati', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (46, N'Suraj', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (47, N'Sharath Eshwar', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (48, N'Jitendra Kotta', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (49, N'MariaDiraviam Hirudayam', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (50, N'Venkata Siva', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (51, N'Shawn', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (52, N'Surjit Singh', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (53, N'Prem Singh', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (54, N'Chandrashekar Rao', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (55, N'Rajesh Sharma', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (56, N'Sathish Babu', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (57, N'Chandrashekar Rao Gaurava Raj', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (58, N'Rakesh Dummi', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (59, N'Owaiz', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (60, N'Srikar', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (61, N'Vivek Parashuram Raichur', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (62, N'Thomas Nelisery', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (63, N'Vijay Kumar', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (64, N'Ravi Jonnalagadda', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (65, N'Venkat Peram', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (66, N'Lakshmi Narasimha Rao Kovuru', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (67, N'Naga Kasireddy', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (68, N'Chand Shaik', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (69, N'Udaya Punnani', 0)
SET IDENTITY_INSERT [dbo].[USTTPM] OFF
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Candidate] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Country] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[DellManager] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Domain] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Location] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Recruiter] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Region] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[SOW] ADD  CONSTRAINT [DF_SOW_USTTPMId]  DEFAULT ((0)) FOR [USTTPMId]
GO
ALTER TABLE [dbo].[SOW] ADD  CONSTRAINT [DF__SOW__isDeleted__4D5F7D71]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[SOWCandidate] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Status] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Technology] ADD  CONSTRAINT [DF__Technolog__isDel__5E8A0973]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[USTPOC] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[USTTPM] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_Candidate_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_Candidate_Status]
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_Region] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Region] ([RegionId])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_Region]
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_Roles]
GO
ALTER TABLE [dbo].[Roles]  WITH CHECK ADD  CONSTRAINT [FK_Roles_Permission] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[Permission] ([PermissionId])
GO
ALTER TABLE [dbo].[Roles] CHECK CONSTRAINT [FK_Roles_Permission]
GO
ALTER TABLE [dbo].[RoleScreens]  WITH CHECK ADD  CONSTRAINT [FK_RoleScreens_Screens] FOREIGN KEY([ScreenId])
REFERENCES [dbo].[Screens] ([ScreenId])
GO
ALTER TABLE [dbo].[RoleScreens] CHECK CONSTRAINT [FK_RoleScreens_Screens]
GO
ALTER TABLE [dbo].[SOW]  WITH CHECK ADD  CONSTRAINT [FK_SOW_DellManager] FOREIGN KEY([DellManagerId])
REFERENCES [dbo].[DellManager] ([DellManagerId])
GO
ALTER TABLE [dbo].[SOW] CHECK CONSTRAINT [FK_SOW_DellManager]
GO
ALTER TABLE [dbo].[SOW]  WITH CHECK ADD  CONSTRAINT [FK_SOW_Recruiter] FOREIGN KEY([RecruiterId])
REFERENCES [dbo].[Recruiter] ([RecruiterId])
GO
ALTER TABLE [dbo].[SOW] CHECK CONSTRAINT [FK_SOW_Recruiter]
GO
ALTER TABLE [dbo].[SOW]  WITH CHECK ADD  CONSTRAINT [FK_SOW_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[SOW] CHECK CONSTRAINT [FK_SOW_Status]
GO
ALTER TABLE [dbo].[SOW]  WITH CHECK ADD  CONSTRAINT [FK_SOW_Technology] FOREIGN KEY([TechnologyId])
REFERENCES [dbo].[Technology] ([TechnologyId])
GO
ALTER TABLE [dbo].[SOW] CHECK CONSTRAINT [FK_SOW_Technology]
GO
ALTER TABLE [dbo].[SOW]  WITH CHECK ADD  CONSTRAINT [FK_SOW_USTPOC] FOREIGN KEY([USTPOCId])
REFERENCES [dbo].[USTPOC] ([USTPOCId])
GO
ALTER TABLE [dbo].[SOW] CHECK CONSTRAINT [FK_SOW_USTPOC]
GO
ALTER TABLE [dbo].[SOW]  WITH CHECK ADD  CONSTRAINT [FK_SOW_USTTPM] FOREIGN KEY([USTTPMId])
REFERENCES [dbo].[USTTPM] ([USTTPMId])
GO
ALTER TABLE [dbo].[SOW] CHECK CONSTRAINT [FK_SOW_USTTPM]
GO
ALTER TABLE [dbo].[SOWCandidate]  WITH CHECK ADD  CONSTRAINT [FK_SOWCandidate_Candidate] FOREIGN KEY([CandidateId])
REFERENCES [dbo].[Candidate] ([CandidateId])
GO
ALTER TABLE [dbo].[SOWCandidate] CHECK CONSTRAINT [FK_SOWCandidate_Candidate]
GO
ALTER TABLE [dbo].[SOWCandidate]  WITH CHECK ADD  CONSTRAINT [FK_SOWCandidate_SOW] FOREIGN KEY([SowId])
REFERENCES [dbo].[SOW] ([SowId])
GO
ALTER TABLE [dbo].[SOWCandidate] CHECK CONSTRAINT [FK_SOWCandidate_SOW]
GO
ALTER TABLE [dbo].[SOWCandidate]  WITH CHECK ADD  CONSTRAINT [FK_SOWCandidate_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[SOWCandidate] CHECK CONSTRAINT [FK_SOWCandidate_Status]
GO
ALTER TABLE [dbo].[Technology]  WITH CHECK ADD  CONSTRAINT [FK_Technology_Domain] FOREIGN KEY([DomainId])
REFERENCES [dbo].[Domain] ([DomainId])
GO
ALTER TABLE [dbo].[Technology] CHECK CONSTRAINT [FK_Technology_Domain]
GO
/****** Object:  StoredProcedure [dbo].[Account_proc]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Account_proc]  
(  
@AccountId int,  
@AccountName nvarchar(100), 
@Type nvarchar(100)  
)  
AS BEGIN  
IF(@Type='post')  
BEGIN INSERT INTO Account(AccountId,AccountName)  
VALUES(@AccountId,@AccountName)  
END  
  
ELSE IF(@Type='get')      
BEGIN      
  SELECT * FROM Account where isDeleted=0 order by AccountId desc      
END     
  
  
ELSE IF(@Type='getid')      
BEGIN      
  SELECT * FROM Account where AccountId=@AccountId     
END   
  
ELSE IF(@Type='update')      
BEGIN      
update Account SET   
AccountName=@AccountName  WHERE AccountId=@AccountId  
  
END  
  
ELSE IF(@Type='Delete')      
BEGIN      
 
 update Account SET isDeleted=1 where AccountId=@AccountId

END   
  
  
END
GO
/****** Object:  StoredProcedure [dbo].[ChangePassword_proc]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     procedure [dbo].[ChangePassword_proc]  
(  
@EmailId Varchar(100),
@OldPassword varchar(50),
@NewPassword varchar(50)
)  
As
DECLARE @ReturnMsg NVARCHAR(200)=''
BEGIN
   IF Exists (SELECT * FROM [Login] where EmailId=@EmailId and LoginPassword=@OldPassword)

BEGIN 
   UPDATE LOGIN SET LoginPassword = @NewPassword WHERE EmailId=@EmailId and LoginPassword=@OldPassword;
   SET @ReturnMsg = 'New Password updated successfully'
END
  ELSE 
BEGIN
  SET @ReturnMsg = 'Old Password does not match'
  END SELECT @ReturnMsg as status END
GO
/****** Object:  StoredProcedure [dbo].[DashboardCandidateStats]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE       PROCEDURE [dbo].[DashboardCandidateStats]   
@PeriodType nvarchar (20)  
As 
DECLARE @StartDate DATE, @EndDate DATE
BEGIN

IF(@PeriodType='Weekly')
BEGIN 
SET @StartDate= DATEADD(DAY,1-DATEPART(WEEKDAY,GETDATE()),CAST(GETDATE() AS DATE));
--SET @EndDate= DATEADD(DAY,7-DATEPART(WEEKDAY,GETDATE()),CAST(GETDATE() AS DATE));
SET @EndDate= CAST(GETDATE() AS DATE);
END

ELSE IF(@PeriodType='Fortnight')
BEGIN 
SET @StartDate= DATEADD(wk,-2,DATEADD(wk,DATEDIFF(wk,6,GETDATE()),6));
SET @EndDate= DATEADD(DAY,DATEDIFF(DAY,5,GETDATE())/7*7,5);
END

ELSE IF(@PeriodType='Monthly')
BEGIN 
SET @StartDate= DATEADD(m,-1,DATEADD(mm, DATEDIFF(m,0,GETDATE()),0));
SET @EndDate= DATEADD(d,-1,DATEADD(mm, DATEDIFF(m,0,GETDATE()),0));
END

ELSE IF(@PeriodType='Quarterly')
BEGIN 
SET @StartDate= DATEADD(q,DATEDIFF(q,0,GETDATE()),0);
SET @EndDate= DATEADD(d,-1,DATEADD(q, DATEDIFF(q,0,GETDATE()) +1,0));
END

ELSE
BEGIN
SET @StartDate= DATEADD(DAY,1-DATEPART(WEEKDAY,GETDATE()),CAST(GETDATE() AS DATE));
--SET @EndDate= DATEADD(DAY,7-DATEPART(WEEKDAY,GETDATE()),CAST(GETDATE() AS DATE));
SET @EndDate= CAST(GETDATE() AS DATE);
END

--select @StartDate;
--select @EndDate;


SELECT DISTINCT 'SO' as Category, C.STATUS AS [NAME],count(*) AS [Count]  FROM [dbo].[Candidate] C 
                                           INNER JOIN [dbo].[SOWCandidate] SC ON C.CandidateId =SC.CandidateId
										   INNER JOIN [dbo].[SOW] S ON SC.SowId =S.SowId 
										   WHERE (convert(date,C.JoiningDate) >= @StartDate AND convert(date,C.JoiningDate) <= @EndDate ) and Isnull(C.isDeleted,0)=0 
										   GROUP BY STATUS
UNION ALL
SELECT DISTINCT 'Location' as Category, LOCATION AS [NAME], count(*) AS [Count] FROM [dbo].[Candidate] 
                                         where (convert(date,JoiningDate) >= @StartDate AND convert(date,JoiningDate) <= @EndDate ) 
										                       and Isnull(isDeleted,0)=0  GROUP BY LOCATION
                                                                 
End
GO
/****** Object:  StoredProcedure [dbo].[DashboardStats]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE      PROCEDURE [dbo].[DashboardStats]   
@PeriodType nvarchar (20)  
As 
DECLARE @StartDate DATE, @EndDate DATE
BEGIN

IF(@PeriodType='Weekly')
BEGIN 
SET @StartDate= DATEADD(DAY,1-DATEPART(WEEKDAY,GETDATE()),CAST(GETDATE() AS DATE));
--SET @EndDate= DATEADD(DAY,7-DATEPART(WEEKDAY,GETDATE()),CAST(GETDATE() AS DATE));
SET @EndDate= CAST(GETDATE() AS DATE);
END

ELSE IF(@PeriodType='Fortnight')
BEGIN 
SET @StartDate= DATEADD(wk,-2,DATEADD(wk,DATEDIFF(wk,6,GETDATE()),6));
SET @EndDate= DATEADD(DAY,DATEDIFF(DAY,5,GETDATE())/7*7,5);
END

ELSE IF(@PeriodType='Monthly')
BEGIN 
SET @StartDate= DATEADD(m,-1,DATEADD(mm, DATEDIFF(m,0,GETDATE()),0));
SET @EndDate= DATEADD(d,-1,DATEADD(mm, DATEDIFF(m,0,GETDATE()),0));
END

ELSE IF(@PeriodType='Quarterly')
BEGIN 
SET @StartDate= DATEADD(q,DATEDIFF(q,0,GETDATE()),0);
SET @EndDate= DATEADD(d,-1,DATEADD(q, DATEDIFF(q,0,GETDATE()) +1,0));
END

ELSE
BEGIN
SET @StartDate= DATEADD(DAY,1-DATEPART(WEEKDAY,GETDATE()),CAST(GETDATE() AS DATE));
--SET @EndDate= DATEADD(DAY,7-DATEPART(WEEKDAY,GETDATE()),CAST(GETDATE() AS DATE));
SET @EndDate= CAST(GETDATE() AS DATE);
END

--select @StartDate;
--select @EndDate;


SELECT 'Status' as Category,st.StatusName AS [Name] ,count(so.StatusId) AS [Count]     
FROM [dbo].[SOW] so     
RIGHT JOIN [dbo].[Status] st ON st.StatusId =so.StatusId AND Isnull(so.isDeleted,0)=0  
                                AND (Convert(date,so.RequestCreationDate) >= @StartDate AND Convert(date,so.RequestCreationDate) <= @EndDate)
								group by st.StatusName  
UNION ALL    
SELECT 'Technology' as Category,T.TechnologyName AS [Name],count(so.TechnologyId) AS [Count]     
FROM [dbo].[SOW] so     
RIGHT JOIN [dbo].[Technology] T ON T.TechnologyId =so.TechnologyId AND Isnull(so.isDeleted,0)=0  
                                   AND (convert(date,so.RequestCreationDate) >= @StartDate AND convert(date,so.RequestCreationDate) <= @EndDate)
                                   group by T.TechnologyName   
UNION ALL    
SELECT 'Region' as Category,R.Region AS [Name],count(so.RegionId) AS [Count]     
FROM [dbo].[SOW] so     
RIGHT JOIN [dbo].[Region] R ON R.RegionId =so.RegionId AND Isnull(so.isDeleted,0)=0 
                             AND (convert(date,so.RequestCreationDate) >= @StartDate AND convert(date,so.RequestCreationDate) <= @EndDate)
                             group by R.Region    
End
GO
/****** Object:  StoredProcedure [dbo].[DellManager_proc]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DellManager_proc]    
(    
@DellManagerId int,    
@DellManagerName nvarchar(100),    
@Type nvarchar(100)    
)    
AS BEGIN    
IF(@Type='post')    
BEGIN INSERT INTO DellManager(DellManagerName)    
VALUES(@DellManagerName)    
END    
    
ELSE IF(@Type='get')        
BEGIN        
  SELECT * FROM DellManager where isDeleted=0 order by DellManagerId desc        
END       
    
    
ELSE IF(@Type='getid')        
BEGIN        
  SELECT * FROM DellManager where DellManagerId= @DellManagerId     
END     
    
ELSE IF(@Type='update')        
BEGIN        
update DellManager SET     
DellManagerName=@DellManagerName  WHERE DellManagerId= @DellManagerId  
    
END    
    
ELSE IF(@Type='Delete')        
BEGIN           
  update DellManager SET isDeleted=1 where DellManagerId= @DellManagerId   
END     
    
    
END
GO
/****** Object:  StoredProcedure [dbo].[Domain_proc]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Domain_proc]      
(      
@DomainId int,      
@DomainName nvarchar(100),      
@Type nvarchar(100)      
)      
AS BEGIN      
IF(@Type='post')      
BEGIN INSERT INTO Domain(DomainName)      
VALUES(@DomainName)      
END      
   

ELSE IF(@Type='get')          
BEGIN          
  SELECT * FROM Domain where isDeleted=0 order by DomainId desc          
END         
      
 
ELSE IF(@Type='getid')          
BEGIN          
  SELECT * FROM Domain where DomainId=@DomainId        
END       
   
ELSE IF(@Type='update')          
BEGIN          
update Domain SET           
DomainName=@DomainName  where DomainId=@DomainId    
END      

        
ELSE IF(@Type='Delete')          
BEGIN          
 --DELETE FROM Domain  where DomainId=@DomainId    
 update Domain SET isDeleted=1 where DomainId=@DomainId 
END       
          
END
GO
/****** Object:  StoredProcedure [dbo].[editlogin]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editlogin]
@EmailId varchar(100),
@LoginPassword varchar(100),
@FailureAttempts int
as
begin
if Exists (SELECT * FROM [Login] where EmailId=@EmailId and LoginPassword=@LoginPassword)
    Begin
UPDATE Login
SET FailureAttempts=@FailureAttempts Where EmailId=@EmailId;
end   begin
  update login set islock=0 where FailureAttempts<3 
  end End
GO
/****** Object:  StoredProcedure [dbo].[Location_proc]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
     
CREATE procedure [dbo].[Location_proc]      
(      
@LocationId int,      
@Location nvarchar(50),  
@RegionId int,  
@Type nvarchar(100)      
)       
AS BEGIN      
IF(@Type='post')      
BEGIN   
INSERT INTO Location(Location,RegionId)      
VALUES(@Location,@RegionId)      
END      
      
ELSE IF(@Type='get')          
BEGIN          
  SELECT * FROM Location where isDeleted=0 order by LocationId desc          
END         
      
      
ELSE IF(@Type='getid')          
BEGIN          
  SELECT * FROM Location where LocationId=@LocationId         
END       
      
ELSE IF(@Type='update')          
BEGIN          
update Location SET       
Location=@Location,RegionId=@RegionId    where LocationId=@LocationId  
END      
      
ELSE IF(@Type='Delete')          
BEGIN          
-- DELETE FROM Location WHERE LocationId=@LocationId 
 update Location SET isDeleted=1 where LocationId=@LocationId 
END       
      
      
END
GO
/****** Object:  StoredProcedure [dbo].[loginproc]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[loginproc]  
(  
@EmailId Varchar(100),
@LoginPassword varchar(100)
)  
AS BEGIN 
DECLARE @FailureAttempts int;
    if Exists (SELECT * FROM [Login] where EmailId=@EmailId and LoginPassword=@LoginPassword and FailureAttempts<3 )
    Begin 
    DECLARE @listStr VARCHAR(MAX)
    SELECT @listStr = COALESCE(@listStr+',' ,'') + S.ScreenName
    FROM [Login] L INNER Join Roles R ON L.RoleId= R.RoleId 
    INNER Join RoleScreens RS ON R.RoleId=RS.RoleId 
    INNER JOIN Screens S ON RS.ScreenId=S.ScreenId
    where EmailId=@EmailId and LoginPassword=@LoginPassword 
    UPDATE Login SET FailureAttempts =0  where  EmailId=@EmailId and FailureAttempts<3 

    select DISTINCT L.LoginName, L.EmailId,R.RoleName,P.PermissionName,@listStr as 'ScreenNames','1' as [status],L.FailureAttempts 
    FROM [Login] L INNER Join Roles R ON L.RoleId= R.RoleId 
    INNER JOIN Permission P ON R.PermissionId=P.PermissionId
    INNER Join RoleScreens RS ON R.RoleId=RS.RoleId 
    INNER JOIN Screens S ON RS.ScreenId=S.ScreenId
    where EmailId=@EmailId and LoginPassword=@LoginPassword

 

    select @EmailId=EmailId from Login where EmailId=@EmailId and LoginPassword=@LoginPassword
    end  
else

 

  Begin 
  SELECT FailureAttempts from Login where EmailId=@EmailId
  UPDATE Login SET FailureAttempts = FailureAttempts + 1  where  EmailId=@EmailId
  select  '' as LoginName, '' as EmailId,'' as RoleName,'' as ScreenNames,'0' as [status];
  end
  if Exists (SELECT * FROM [Login] where EmailId=@EmailId )
  Begin 
  Update login set islock=1 where FailureAttempts>=3
  end     
END
GO
/****** Object:  StoredProcedure [dbo].[Recruiter_proc]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    
CREATE procedure [dbo].[Recruiter_proc]    
(    
@RecruiterId int,    
@RecruiterName nvarchar(100),    
@Type nvarchar(100)    
)    
AS BEGIN    
IF(@Type='post')    
BEGIN INSERT INTO Recruiter(RecruiterName)    
VALUES(@RecruiterName)    
END    
    
ELSE IF(@Type='get')        
BEGIN        
  SELECT * FROM Recruiter where isDeleted=0 order by RecruiterId desc        
END       
    
    
ELSE IF(@Type='getid')        
BEGIN        
  SELECT * FROM Recruiter where RecruiterId= @RecruiterId     
END     
    
ELSE IF(@Type='update')        
BEGIN        
update Recruiter SET     
RecruiterName=@RecruiterName  WHERE RecruiterId= @RecruiterId  
    
END    
    
ELSE IF(@Type='Delete')        
BEGIN        
 --DELETE FROM Recruiter WHERE RecruiterId= @RecruiterId  
  update Recruiter SET isDeleted=1 where RecruiterId= @RecruiterId  
END     
    
    
END
GO
/****** Object:  StoredProcedure [dbo].[Region_proc]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
      
CREATE procedure [dbo].[Region_proc]    
(    
@RegionId int,    
@Region nvarchar(100),    
@Type nvarchar(100)    
)    
AS BEGIN    
IF(@Type='post')    
BEGIN INSERT INTO Region(Region)    
VALUES(@Region)    
END    
    
ELSE IF(@Type='get')        
BEGIN        
  SELECT * FROM Region where isDeleted=0 order by RegionId desc        
END       
    
    
ELSE IF(@Type='getid')        
BEGIN        
  SELECT * FROM Region where RegionId=@RegionId       
END     
    
ELSE IF(@Type='update')        
BEGIN        
update Region SET     
    
Region=@Region  where RegionId=@RegionId  
END    
    
ELSE IF(@Type='Delete')        
BEGIN        
 --DELETE FROM Region  where RegionId=@RegionId 
 update Region SET isDeleted=1 where RegionId=@RegionId
END     
    
    
END
GO
/****** Object:  StoredProcedure [dbo].[Registration_proc]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[Registration_proc]  
(  
@LoginName nvarchar(50), 
@LoginPassword nvarchar(100), 
@EmailId nvarchar(100), 
@RoleId int, 
@LoginId int, 
@Type nvarchar(50),
@FailureAttempts int 
)  
AS 
BEGIN IF(@Type='post')  
BEGIN 
   INSERT INTO Login(LoginName,LoginPassword,EmailId,RoleId,FailureAttempts)  VALUES (@LoginName,@LoginPassword,@EmailId,@RoleId,@FailureAttempts);
END  
ELSE IF(@Type='get')       
BEGIN      
  SELECT RoleId,RoleName FROM roles;     
END    ELSE IF(@Type='getuser')      
BEGIN      
  SELECT  l.LoginId,l.LoginName , l.EmailId, r.RoleName,l.RoleId  FROM login l INNER  JOIN roles r  on L.RoleId = R.RoleId; 
END   ELSE IF(@Type='update')      
BEGIN      
UPDATE Login
  SET EmailId = @EmailId ,RoleId =@RoleId WHERE LoginId =@LoginId
END   ELSE IF(@Type='delete')      
BEGIN      
    DELETE FROM login WHERE LoginId =@LoginId
END 
END 
 
GO
/****** Object:  StoredProcedure [dbo].[sow_date]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sow_date]
(            
@SowId int,   
@SoName nvarchar(100) NULL,     
@JRCode nvarchar(10),            
@RequestCreationDate datetime,            
@AccountId int Null,            
@TechnologyId nvarchar(500) NULL,            
@Role nvarchar(100) NULL,            
@LocationId int null , 
@RegionId int null , 
@TargetOpenPositions int NULL,            
@PositionsTobeClosed int NULL,            
@USTPOCId   int null ,         
@RecruiterId  int null ,           
@USTTPMId    int null ,         
@DellManagerId   int null ,   
@StatusId int NULL,            
@Band nvarchar(100) NULL,            
@ProjectId nvarchar(100) NULL,            
@AccountManager nvarchar(200) NULL,            
@ExternalResource nvarchar(100) NULL,            
@InternalResource nvarchar(100) NULL,     
@StartDate datetime,
@EndDate  datetime,
@Type nvarchar(100))          
as            
Begin             

 

if(@Type='getdate')          
begin          
select
    SowId,
    SoName,
    JRCode,
    RequestCreationDate,
    sow.AccountId,
    sow.TechnologyId,
    [Role],
    sow.LocationId,
    sow.RegionId,
    TargetOpenPositions,
    PositionsTobeClosed,
    sow.USTPOCId,
    sow.RecruiterId,
    sow.USTTPMId,
    sow.DellManagerId,
    sow.StatusId,
    Band,
    ProjectId,
    AccountManager,
    ExternalResource,
    InternalResource,
    SOW.isDeleted,
    Account.AccountName,
    Technology.TechnologyName,
    [Location].[Location],
    Region.Region,
    USTPOC.USTPOCName,
    Recruiter.RecruiterName,
    USTTPM.USTTPMName,
    DellManager.DellManagerName,
    [Status].StatusName
from SOW 
inner join Account on sow.AccountId=Account.AccountId
inner join Technology on sow.TechnologyId=Technology.TechnologyId
inner join [Location] on sow.LocationId=[Location].LocationId
inner join Region on sow.RegionId=Region.RegionId
inner join USTPOC on sow.USTPOCId=USTPOC.USTPOCId
inner join Recruiter on sow.RecruiterId=Recruiter.RecruiterId
inner join USTTPM on sow.USTTPMId=USTTPM.USTTPMId
inner join DellManager on sow.DellManagerId=DellManager.DellManagerId
inner join [Status] on sow.StatusId=[Status].StatusId
where  CONVERT(date, RequestCreationDate) between  @StartDate and  @EndDate          
END 
end


GO
/****** Object:  StoredProcedure [dbo].[Sow_proc]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[Sow_proc](            
@SowId int,   
@SoName nvarchar(100) NULL,     
@JRCode nvarchar(10),            
@RequestCreationDate datetime,            
@AccountId int Null,            
@TechnologyId nvarchar(500) NULL,            
@Role nvarchar(100) NULL,            
@LocationId int null , 
@RegionId int null , 
@TargetOpenPositions int NULL,            
@PositionsTobeClosed int NULL,            
@USTPOCId   int null ,         
@RecruiterId  int null ,           
@USTTPMId    int null ,         
@DellManagerId   int null ,   
@StatusId int NULL,            
@Band nvarchar(100) NULL,            
@ProjectId nvarchar(100) NULL,            
@AccountManager nvarchar(200) NULL,            
@ExternalResource nvarchar(100) NULL,            
@InternalResource nvarchar(100) NULL,     
@Type nvarchar(100))          
as            
Begin             
If(@Type='insert')          
begin          
INSERT INTO
    SOW(
    SoName,
    JRCode,
    RequestCreationDate,
    AccountId,
    TechnologyId,
    [Role],
    LocationId,
    RegionId,
    TargetOpenPositions,
    PositionsTobeClosed,
    USTPOCId,
    RecruiterId,
    USTTPMId,
    DellManagerId,
    StatusId,
    Band,
    ProjectId,
    AccountManager,
    ExternalResource,
    InternalResource
   
    )
VALUES (
    @SoName,
    @JRCode,
    @RequestCreationDate,
    @AccountId,
    @TechnologyId,
    @Role,
    @LocationId,
    @RegionId,
    @TargetOpenPositions,
    @PositionsTobeClosed,
    @USTPOCId,
    @RecruiterId,
    @USTTPMId,
    @DellManagerId,
    @StatusId,
    @Band,
    @ProjectId,
    @AccountManager,
    @ExternalResource,
    @InternalResource
    
) 
END          
else if(@Type='get')          
begin          
select
    SowId,
    SoName,
    JRCode,
    RequestCreationDate,
    sow.AccountId,
    sow.TechnologyId,
    [Role],
    sow.LocationId,
    sow.RegionId,
    TargetOpenPositions,
    PositionsTobeClosed,
    sow.USTPOCId,
    sow.RecruiterId,
    sow.USTTPMId,
    sow.DellManagerId,
    sow.StatusId,
    Band,
    ProjectId,
    AccountManager,
    ExternalResource,
    InternalResource,
    SOW.isDeleted,
    Account.AccountName,
    Technology.TechnologyName,
    [Location].[Location],
    Region.Region,
    USTPOC.USTPOCName,
    Recruiter.RecruiterName,
    USTTPM.USTTPMName,
    DellManager.DellManagerName,
    [Status].StatusName
   
   
from SOW 
inner join Account on sow.AccountId=Account.AccountId
inner join Technology on sow.TechnologyId=Technology.TechnologyId
inner join [Location] on sow.LocationId=[Location].LocationId
inner join Region on sow.RegionId=Region.RegionId
inner join USTPOC on sow.USTPOCId=USTPOC.USTPOCId
inner join Recruiter on sow.RecruiterId=Recruiter.RecruiterId
inner join USTTPM on sow.USTTPMId=USTTPM.USTTPMId
inner join DellManager on sow.DellManagerId=DellManager.DellManagerId
inner join [Status] on sow.StatusId=[Status].StatusId
where SOW.isDeleted=0  order by SowId desc          
END   



else if(@Type='getid')          
begin          
select
    SowId,
    SoName,
    JRCode,
    RequestCreationDate,
    sow.AccountId,
    sow.TechnologyId,
    [Role],
    sow.LocationId,
    sow.RegionId,
    TargetOpenPositions,
    PositionsTobeClosed,
    sow.USTPOCId,
    sow.RecruiterId,
    sow.USTTPMId,
    sow.DellManagerId,
    sow.StatusId,
    Band,
    ProjectId,
    AccountManager,
    ExternalResource,
    InternalResource,
    SOW.isDeleted,
    Account.AccountName,
    Technology.TechnologyName,
    [Location].[Location],
    Region.Region,
    USTPOC.USTPOCName,
    Recruiter.RecruiterName,
    USTTPM.USTTPMName,
    DellManager.DellManagerName,
    [Status].StatusName
from SOW 
inner join Account on sow.AccountId=Account.AccountId
inner join Technology on sow.TechnologyId=Technology.TechnologyId
inner join [Location] on sow.LocationId=[Location].LocationId
inner join Region on sow.RegionId=Region.RegionId
inner join USTPOC on sow.USTPOCId=USTPOC.USTPOCId
inner join Recruiter on sow.RecruiterId=Recruiter.RecruiterId
inner join USTTPM on sow.USTTPMId=USTTPM.USTTPMId
inner join DellManager on sow.DellManagerId=DellManager.DellManagerId
inner join [Status] on sow.StatusId=[Status].StatusId
where SowId=@SowId          
END       



else if(@Type='update')          
begin          
UPDATE
SOW
SET
    SoName = @SoName,
    JRCode = @JRCode,
    RequestCreationDate = @RequestCreationDate,
    AccountId = @AccountId,
    TechnologyId = @TechnologyId,
    [Role] = @Role,
    LocationId = @LocationId,
    RegionId = @RegionId,
    TargetOpenPositions = @TargetOpenPositions,
    PositionsTobeClosed = @PositionsTobeClosed,
    USTPOCId = @USTPOCId,
    RecruiterId = @RecruiterId,
    USTTPMId = @USTTPMId,
    DellManagerId = @DellManagerId,
    StatusId = @StatusId,
    Band = @Band,
    ProjectId = @ProjectId,
    AccountManager = @AccountManager,
    ExternalResource = @ExternalResource,
    InternalResource = @InternalResource
WHERE SowId=@SowId     
END          
else if(@Type='Delete')          
begin          
update 
SOW 
SET 
    isDeleted=1 
where SowId=@SowId 
END          
end
GO
/****** Object:  StoredProcedure [dbo].[SowCandidate_proc]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[SowCandidate_proc]    
(    
@SOW_CandidateId int,    
@SowId int,    
@CandidateId int,    
@StatusId int,    
@Type nvarchar(100)    
)    
AS BEGIN    
IF(@Type='post')    
BEGIN 
INSERT INTO SOWCandidate(SowId,CandidateId,StatusId)    
VALUES(@SowId,@CandidateId,@StatusId)    
END    
    
ELSE IF(@Type='get')        
BEGIN        
  SELECT SOW_CandidateId
		,SOWCandidate.SowId
		,SOWCandidate.CandidateId
		,SOWCandidate.StatusId
		,SOWCandidate.isDeleted
		,SOW.SoName
		,Candidate.CandidateName
		,[Status].StatusName
	FROM SOWCandidate 
	inner join SOW on sow.SowId=SOWCandidate.SowId
	inner join Candidate on Candidate.CandidateId=SOWCandidate.CandidateId
	inner join [Status] on [Status].StatusId=SOWCandidate.StatusId
	where SOWCandidate.isDeleted=0 order by SOW_CandidateId desc        
END       
    
    
ELSE IF(@Type='getid')        
BEGIN        
  SELECT SOW_CandidateId
		,SOWCandidate.SowId
		,SOWCandidate.CandidateId
		,SOWCandidate.StatusId
		,SOWCandidate.isDeleted
		,SOW.SoName
		,Candidate.CandidateName
		,[Status].StatusName
	FROM SOWCandidate 
	inner join SOW on sow.SowId=SOWCandidate.SowId
	inner join Candidate on Candidate.CandidateId=SOWCandidate.CandidateId
	inner join [Status] on [Status].StatusId=SOWCandidate.StatusId
	where SOW_CandidateId=@SOW_CandidateId       
END     
    
ELSE IF(@Type='update')        
BEGIN        
update SOWCandidate SET     
SowId=@SowId,    
CandidateId=@CandidateId,StatusId=@StatusId   where SOW_CandidateId=@SOW_CandidateId
END    
    
ELSE IF(@Type='Delete')        
BEGIN        
 --DELETE FROM SOWCandidate WHERE SOW_CandidateId=@SOW_CandidateId
  update SOWCandidate SET isDeleted=1 where SOW_CandidateId=@SOW_CandidateId
END     
    
    
END
GO
/****** Object:  StoredProcedure [dbo].[Status_proc]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Status_proc]
(
	@StatusId	int,
	@StatusName nvarchar(100),
	@Type		nvarchar(100),
	@StatusType	nvarchar(100)
)
AS 
BEGIN
	IF(@Type='post')
	BEGIN 
		INSERT INTO Status(StatusName, [StatusType] ) VALUES (@StatusName, @StatusType)
	END

	ELSE IF(@Type='get')    
	BEGIN    
		SELECT * FROM Status where Isnull(IsDeleted,0) = 0 And UPPER([StatusType]) = UPPER(@StatusType) order by StatusId desc    
	END   

	ELSE IF(@Type='getid')    
	BEGIN    
		SELECT * FROM Status where StatusId = @StatusId
	END 

	ELSE IF(@Type='update')    
	BEGIN    
		update Status SET StatusName = @StatusName where StatusId = @StatusId
	END

	ELSE IF(@Type='Delete')    
	BEGIN    
	 update Status SET IsDeleted = 1 where StatusId = @StatusId
	END 
END
GO
/****** Object:  StoredProcedure [dbo].[Technology_proc]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Technology_proc]      
(      
@TechnologyId int,      
@TechnologyName nvarchar(100),   
@DomainId int,
@Type nvarchar(100)      
)      
AS BEGIN      
IF(@Type='post')      
BEGIN INSERT INTO Technology(TechnologyName,DomainId)
VALUES(@TechnologyName,@DomainId)      
END      
   

ELSE IF(@Type='get')          
BEGIN          
  SELECT TechnologyId, TechnologyName, tech.DomainId, DomainName FROM Technology tech
  Inner Join Domain On Tech.DomainId = Domain.DomainId
  where Isnull(tech.isDeleted,0) = 0 order by TechnologyId desc          
END         
      
 
ELSE IF(@Type='getid')          
BEGIN          
  SELECT * FROM Technology where TechnologyId=@TechnologyId        
END       
   
ELSE IF(@Type='update')          
BEGIN          
update Technology SET       
      
TechnologyName=@TechnologyName, DomainId=@DomainId  where TechnologyId=@TechnologyId    
END      

        
ELSE IF(@Type='Delete')          
BEGIN          
 --DELETE FROM Technology  where TechnologyId=@TechnologyId   
  update Technology SET IsDeleted=1 where TechnologyId=@TechnologyId   
END       
      
      
END
GO
/****** Object:  StoredProcedure [dbo].[usp_addCandidateData]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_addCandidateData]
@CandidateName nvarchar(100),
@MobileNo nvarchar(50),
@Gender nvarchar(20),
@DOB date,
@EmailId nvarchar(50),
@Location nvarchar(50),
@Pincode nvarchar(10),
@Address nvarchar(max),
@Status nvarchar(50),
@Skills nvarchar(max),
@JoiningDate datetime,
@IsInternal bit
as
begin
set nocount on
insert into Candidate(CandidateName,Gender,MobileNo,DOB,EmailId,Location,Pincode,Address,Status,Skills,JoiningDate,IsInternal)
values(@CandidateName,@Gender,@MobileNo,@DOB,@EmailId,@Location,@Pincode,@Address,@Status,@Skills,@JoiningDate,@IsInternal)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_candidateDataImport]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 

Create  PROCEDURE [dbo].[usp_candidateDataImport]  
(
  @Json NVARCHAR(MAX)
  )

  AS

  BEGIN
  SET NOCOUNT ON;
  BEGIN TRY
       BEGIN

        WITH JsonToTable AS 
        (

 

            SELECT * FROM OPENJSON (@Json) 
WITH (CandidateName nvarchar(100),MobileNo nvarchar(20),Gender nvarchar(50) ,DOB datetime,Email nvarchar(100),[Location] nvarchar(100) ,Skills nvarchar(MAX),JoiningDate datetime,[Address] nvarchar(MAX),[Status] int,Pincode nvarchar(10),isInternal bit)
        ) 

        MERGE Candidate AS TARGET 

 

        USING JsonToTable AS SOURCE 

 

        ON (TARGET.CandidateName = SOURCE.candidateName And TARGET.EmailId = SOURCE.email)

 
        WHEN NOT MATCHED THEN

            INSERT (CandidateName,Gender,MobileNo,DOB,EmailId,Location,Pincode,Address,Status,Skills,JoiningDate,IsInternal)

            VALUES

                (


                 SOURCE.candidateName,SOURCE.gender,SOURCE.mobileNo,SOURCE.dob,SOURCE.email,SOURCE.location,SOURCE.pincode,SOURCE.address,SOURCE.status,SOURCE.skills,SOURCE.joiningDate,SOURCE.isInternal


     );                 

    END

END TRY
BEGIN CATCH
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[usp_deleteCandidateData]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_deleteCandidateData]
@CandidateId int
as
begin

 update Candidate SET IsDeleted=1 where CandidateId=@CandidateId
end
GO
/****** Object:  StoredProcedure [dbo].[usp_editCandidateData]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_editCandidateData]
@CandidateId int,
@CandidateName nvarchar(100),
@MobileNo nvarchar(50),
@Gender nvarchar(20),
@DOB date,
@EmailId nvarchar(50),
@Location nvarchar(50),
@Pincode nvarchar(10),
@Address nvarchar(max),
@Status nvarchar(50),
@Skills nvarchar(max),
@JoiningDate datetime,
@IsInternal bit
as
begin
UPDATE Candidate
SET CandidateName=@CandidateName,
MobileNo=@MobileNo,Gender=@Gender,DOB=@DOB,EmailId=@EmailId,Location=@Location,Pincode=@Pincode,Address=@Address,Status=@Status,Skills=@Skills,
JoiningDate=@JoiningDate,IsInternal=@IsInternal
Where CandidateId=@CandidateId;
end
GO
/****** Object:  StoredProcedure [dbo].[usp_getAllCandidateData]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_getAllCandidateData]
as
begin
set nocount on
select CandidateId,CandidateName,MobileNo,DOB,EmailId,Location,Skills,JoiningDate,IsInternal,Address,B.StatusName Status,Pincode,Gender
from Candidate A
Inner Join [dbo].[Status] B On A.Status = B.StatusId
where Isnull(A.IsDeleted, 0) = 0 order by CandidateId desc

end
GO
/****** Object:  StoredProcedure [dbo].[usp_showCandidateData]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_showCandidateData]
@CandidateId int 
as
begin 
set nocount on
select CandidateId,CandidateName,Gender,MobileNo,DOB,EmailId,Location,Pincode,Address,Status,Skills,JoiningDate,IsInternal
from Candidate where CandidateId=@CandidateId
end
GO
/****** Object:  StoredProcedure [dbo].[usp_sowDataImport]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create  PROCEDURE [dbo].[usp_sowDataImport]
(
  @Json NVARCHAR(MAX)
)
AS
BEGIN
SET NOCOUNT ON
BEGIN TRY
BEGIN
WITH JsonToTable AS
(
SELECT * FROM OPENJSON (@Json)
WITH (SoName nvarchar(100),JRCode nvarchar(10),RequestCreationDate datetime,AccountId int,TechnologyId int,[Role] nvarchar(100),
LocationId int,RegionId int,TargetOpenPositions int,PositionsTobeClosed int,USTPOCId int,RecruiterId int,USTTPMId int,DellManagerId int,
StatusId int,Band nvarchar(100),ProjectId nvarchar(100),AccountManager nvarchar(200),ExternalResource nvarchar(100),InternalResource nvarchar(100))
)
MERGE SOW as TARGET
USING JsonToTable as SOURCE
ON (TARGET.SoName=SOURCE.soName )
WHEN NOT MATCHED THEN
INSERT (SoName,JRCode,RequestCreationDate,AccountId,TechnologyId,[Role],
LocationId,RegionId,TargetOpenPositions,PositionsTobeClosed,USTPOCId,RecruiterId,USTTPMId,DellManagerId,
StatusId,Band,ProjectId,AccountManager,ExternalResource,InternalResource
)
VALUES
(
SOURCE.soName,SOURCE.jrCode,SOURCE.requestCreationDate,SOURCE.accountId,SOURCE.technologyId,SOURCE.role,SOURCE.locationId,SOURCE.regionId
,SOURCE.targetOpenPositions,SOURCE.positionsTobeClosed,SOURCE.ustpocId,SOURCE.recruiterId,SOURCE.usttpmId,SOURCE.dellManagerId,
SOURCE.statusId,SOURCE.band,SOURCE.projectId,SOURCE.accountManager,SOURCE.externalResource,SOURCE.internalResource
);
END
END TRY
BEGIN CATCH
END CATCH
END 
GO
/****** Object:  StoredProcedure [dbo].[USTPOC_proc]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USTPOC_proc]    
(    
@USTPOCId int,    
@USTPOCName nvarchar(100),    
@Type nvarchar(100)    
)    
AS BEGIN    
IF(@Type='post')    
BEGIN INSERT INTO USTPOC(USTPOCName)    
VALUES(@USTPOCName)    
END    
    
ELSE IF(@Type='get')        
BEGIN        
  SELECT * FROM USTPOC where isDeleted=0 order by USTPOCId desc        
END       
    
    
ELSE IF(@Type='getid')        
BEGIN        
  SELECT * FROM USTPOC where USTPOCId= @USTPOCId     
END     
    
ELSE IF(@Type='update')        
BEGIN        
update USTPOC SET     
USTPOCName=@USTPOCName  WHERE USTPOCId= @USTPOCId   
    
END    
    
ELSE IF(@Type='Delete')        
BEGIN        
 --DELETE FROM USTPOC WHERE USTPOCId= @USTPOCId   
  update USTPOC SET isDeleted=1 where USTPOCId= @USTPOCId  
END     
    
    
END
GO
/****** Object:  StoredProcedure [dbo].[USTTPM_proc]    Script Date: 02-05-2023 18:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USTTPM_proc]    
(    
@USTTPMId int,    
@USTTPMName nvarchar(100),    
@Type nvarchar(100)    
)    
AS BEGIN    
IF(@Type='post')    
BEGIN INSERT INTO USTTPM(USTTPMName)    
VALUES(@USTTPMName)    
END    
    
ELSE IF(@Type='get')        
BEGIN        
  SELECT * FROM USTTPM where isDeleted=0 order by USTTPMId desc        
END       
    
    
ELSE IF(@Type='getid')        
BEGIN        
  SELECT * FROM USTTPM where USTTPMId= @USTTPMId     
END     
    
ELSE IF(@Type='update')        
BEGIN        
update  USTTPM SET     
USTTPMName=@USTTPMName  WHERE USTTPMId= @USTTPMId  
    
END    
    
ELSE IF(@Type='Delete')        
BEGIN        
 --DELETE FROM USTTPM where USTTPMId= @USTTPMId    
   update USTTPM SET isDeleted=1 where USTTPMId= @USTTPMId   
END     
    
    
END
GO
USE [master]
GO
ALTER DATABASE [SOW_Db] SET  READ_WRITE 
GO
