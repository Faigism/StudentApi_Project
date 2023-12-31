USE [master]
GO
/****** Object:  Database [ApiStudentProject]    Script Date: 7/31/2023 11:10:34 AM ******/
CREATE DATABASE [ApiStudentProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ApiStudentProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ApiStudentProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ApiStudentProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ApiStudentProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ApiStudentProject] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ApiStudentProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ApiStudentProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ApiStudentProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ApiStudentProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ApiStudentProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ApiStudentProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [ApiStudentProject] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ApiStudentProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ApiStudentProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ApiStudentProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ApiStudentProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ApiStudentProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ApiStudentProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ApiStudentProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ApiStudentProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ApiStudentProject] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ApiStudentProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ApiStudentProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ApiStudentProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ApiStudentProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ApiStudentProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ApiStudentProject] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ApiStudentProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ApiStudentProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ApiStudentProject] SET  MULTI_USER 
GO
ALTER DATABASE [ApiStudentProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ApiStudentProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ApiStudentProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ApiStudentProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ApiStudentProject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ApiStudentProject] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ApiStudentProject] SET QUERY_STORE = ON
GO
ALTER DATABASE [ApiStudentProject] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ApiStudentProject]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/31/2023 11:10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/31/2023 11:10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/31/2023 11:10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/31/2023 11:10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/31/2023 11:10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/31/2023 11:10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/31/2023 11:10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/31/2023 11:10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 7/31/2023 11:10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 7/31/2023 11:10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Point] [decimal](5, 2) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230725063017_CreateStudentandGroupTables', N'6.0.20')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230725095835_UpdateTables', N'6.0.20')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230726132700_GroupTableNoUpdateName', N'6.0.20')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230727201232_AppUserTableCreate', N'6.0.20')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'887ac089-9881-4080-bb34-6b872a46440d', N'Member', N'MEMBER', N'708e0b5a-a7af-439e-b3dd-6b8478c4eb67')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8ce45e94-6030-48cc-89bf-c5bc347729d1', N'Admin', N'ADMIN', N'a3919913-8250-4a4b-8179-372de262f2fc')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c895512e-a2a3-43f5-9631-5980d2e1a5d6', N'8ce45e94-6030-48cc-89bf-c5bc347729d1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fb5093cb-c7f5-4819-b201-3c77fed847b5', N'8ce45e94-6030-48cc-89bf-c5bc347729d1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c895512e-a2a3-43f5-9631-5980d2e1a5d6', N'AppUser', N'Faiq Ismayilov', N'Faiqlee', N'FAIQLEE', N'faiq1998@gmail.com', N'FAIQ1998@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFnJyFD0joCIToMKQneNlD5bPppCmyA7wF7YmEb0mTodal6pbAAlZKrTiHRdiWrYhg==', N'TIWECCUSPHJ4AT75WETVYJJERQY6B5RO', N'8f0abb6f-e144-4f4d-a0d0-d9d474c86abb', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fb5093cb-c7f5-4819-b201-3c77fed847b5', N'AppUser', N'Faiq Ismayilov', N'Faiqlee2', N'FAIQLEE2', N'faiq1998@gmail.com', N'FAIQ1998@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEFXrtozGanjGon60xg/ugOjFLGauiXpRnZDJNCgtYklxWE9MXI6qoK8EcpHrmdGRg==', N'UNQE4N6I2D5UHVH5R5UPUSK5C6LOVVKD', N'213d357a-7ad8-45e5-b4df-291f5d8d9d7d', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([Id], [Name]) VALUES (1, N'P200')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (2, N'P1400')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (3, N'P140')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (4, N'f12421')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (8, N'S400')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (11, N'P222')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (12, N'EL222')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (13, N'el555')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (14, N'S100')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (15, N'Sa100')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (16, N'EL800')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (17, N'A200')
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [GroupId], [FullName], [Point], [CreatedAt], [ModifiedAt]) VALUES (1, 2, N'Faiq Ismayilov', CAST(46.46 AS Decimal(5, 2)), CAST(N'2023-07-25T15:09:46.0286281' AS DateTime2), CAST(N'2023-07-25T15:09:46.0287577' AS DateTime2))
INSERT [dbo].[Students] ([Id], [GroupId], [FullName], [Point], [CreatedAt], [ModifiedAt]) VALUES (2, 3, N'Faiq Ismayilov', CAST(46.46 AS Decimal(5, 2)), CAST(N'2023-07-25T15:11:12.4093592' AS DateTime2), CAST(N'2023-07-25T15:11:12.4093604' AS DateTime2))
INSERT [dbo].[Students] ([Id], [GroupId], [FullName], [Point], [CreatedAt], [ModifiedAt]) VALUES (4, 1, N'Aydan Ceferova', CAST(55.11 AS Decimal(5, 2)), CAST(N'2023-07-26T13:53:52.4350231' AS DateTime2), CAST(N'2023-07-26T13:53:52.4350237' AS DateTime2))
INSERT [dbo].[Students] ([Id], [GroupId], [FullName], [Point], [CreatedAt], [ModifiedAt]) VALUES (5, 1, N'Aytac Abbaszade', CAST(52.88 AS Decimal(5, 2)), CAST(N'2023-07-26T13:55:05.9985863' AS DateTime2), CAST(N'2023-07-26T13:55:05.9985864' AS DateTime2))
INSERT [dbo].[Students] ([Id], [GroupId], [FullName], [Point], [CreatedAt], [ModifiedAt]) VALUES (7, 8, N'Hikmet Abbasov', CAST(79.55 AS Decimal(5, 2)), CAST(N'2023-07-27T15:54:30.8118037' AS DateTime2), CAST(N'2023-07-27T15:54:30.8118054' AS DateTime2))
INSERT [dbo].[Students] ([Id], [GroupId], [FullName], [Point], [CreatedAt], [ModifiedAt]) VALUES (8, 16, N'String', CAST(70.00 AS Decimal(5, 2)), CAST(N'2023-07-27T18:22:52.6998078' AS DateTime2), CAST(N'2023-07-27T18:22:52.6998081' AS DateTime2))
INSERT [dbo].[Students] ([Id], [GroupId], [FullName], [Point], [CreatedAt], [ModifiedAt]) VALUES (9, 17, N'faiQ feyZullayev', CAST(76.00 AS Decimal(5, 2)), CAST(N'2023-07-27T19:26:45.2100239' AS DateTime2), CAST(N'2023-07-27T19:26:45.2100252' AS DateTime2))
INSERT [dbo].[Students] ([Id], [GroupId], [FullName], [Point], [CreatedAt], [ModifiedAt]) VALUES (10, 17, N'Faiq', CAST(100.00 AS Decimal(5, 2)), CAST(N'2023-07-27T19:54:30.5974284' AS DateTime2), CAST(N'2023-07-27T19:54:30.5974291' AS DateTime2))
INSERT [dbo].[Students] ([Id], [GroupId], [FullName], [Point], [CreatedAt], [ModifiedAt]) VALUES (12, 17, N'Faiq Qasimov 123', CAST(100.00 AS Decimal(5, 2)), CAST(N'2023-07-27T19:56:30.9517662' AS DateTime2), CAST(N'2023-07-27T19:56:30.9517663' AS DateTime2))
INSERT [dbo].[Students] ([Id], [GroupId], [FullName], [Point], [CreatedAt], [ModifiedAt]) VALUES (13, 17, N'Faiq Isi', CAST(100.00 AS Decimal(5, 2)), CAST(N'2023-07-27T20:00:07.4715373' AS DateTime2), CAST(N'2023-07-27T20:00:07.4715378' AS DateTime2))
INSERT [dbo].[Students] ([Id], [GroupId], [FullName], [Point], [CreatedAt], [ModifiedAt]) VALUES (14, 11, N'String-adad', CAST(33.12 AS Decimal(5, 2)), CAST(N'2023-07-28T06:20:31.3547035' AS DateTime2), CAST(N'2023-07-28T06:20:31.3547039' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 7/31/2023 11:10:35 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/31/2023 11:10:35 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 7/31/2023 11:10:35 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 7/31/2023 11:10:35 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 7/31/2023 11:10:35 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 7/31/2023 11:10:35 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/31/2023 11:10:35 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Students_GroupId]    Script Date: 7/31/2023 11:10:35 AM ******/
CREATE NONCLUSTERED INDEX [IX_Students_GroupId] ON [dbo].[Students]
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Students] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Students] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [ModifiedAt]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Groups_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Groups_GroupId]
GO
USE [master]
GO
ALTER DATABASE [ApiStudentProject] SET  READ_WRITE 
GO
