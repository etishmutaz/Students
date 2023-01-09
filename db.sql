USE [master]
GO
/****** Object:  Database [Students]    Script Date: 09/01/2023 14:31:11 ******/
CREATE DATABASE [Students]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Students', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Students.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Students_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Students_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Students] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Students].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Students] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Students] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Students] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Students] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Students] SET ARITHABORT OFF 
GO
ALTER DATABASE [Students] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Students] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Students] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Students] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Students] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Students] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Students] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Students] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Students] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Students] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Students] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Students] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Students] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Students] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Students] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Students] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Students] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Students] SET RECOVERY FULL 
GO
ALTER DATABASE [Students] SET  MULTI_USER 
GO
ALTER DATABASE [Students] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Students] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Students] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Students] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Students] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Students] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Students', N'ON'
GO
ALTER DATABASE [Students] SET QUERY_STORE = OFF
GO
USE [Students]
GO
/****** Object:  Table [dbo].[City]    Script Date: 09/01/2023 14:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 09/01/2023 14:31:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[DateOfBitrh] [datetime] NOT NULL,
	[IsraeliID] [decimal](9, 0) NOT NULL,
	[CityID] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([CityID], [CityName]) VALUES (1, N'בני ברק')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (2, N'ירושלים')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (3, N'פתח תקוה')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (4, N'מודיעין עילית')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (5, N'אלעד')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [DateOfBitrh], [IsraeliID], [CityID]) VALUES (1, N'חנה', N'כהן', CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(312582344 AS Decimal(9, 0)), 1)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [DateOfBitrh], [IsraeliID], [CityID]) VALUES (2, N'שרה', N'לוי', CAST(N'1999-02-05T00:00:00.000' AS DateTime), CAST(244567891 AS Decimal(9, 0)), 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [DateOfBitrh], [IsraeliID], [CityID]) VALUES (3, N'תהילה', N'ישראלי', CAST(N'1998-08-02T00:00:00.000' AS DateTime), CAST(341267985 AS Decimal(9, 0)), 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [DateOfBitrh], [IsraeliID], [CityID]) VALUES (4, N'שירה', N'יחזקאל', CAST(N'2001-01-03T00:00:00.000' AS DateTime), CAST(142343248 AS Decimal(9, 0)), 3)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [DateOfBitrh], [IsraeliID], [CityID]) VALUES (5, N'תמר', N'לוין', CAST(N'2002-12-12T00:00:00.000' AS DateTime), CAST(231321332 AS Decimal(9, 0)), 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [DateOfBitrh], [IsraeliID], [CityID]) VALUES (6, N'אפרת', N'מרגלית', CAST(N'2000-04-03T00:00:00.000' AS DateTime), CAST(231432948 AS Decimal(9, 0)), 3)
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
USE [master]
GO
ALTER DATABASE [Students] SET  READ_WRITE 
GO
