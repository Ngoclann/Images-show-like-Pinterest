USE [master]
GO
/****** Object:  Database [Pinterest]    Script Date: 10/14/2020 3:45:02 PM ******/
CREATE DATABASE [Pinterest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pinterest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Pinterest.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Pinterest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Pinterest_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Pinterest] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pinterest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pinterest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pinterest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pinterest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pinterest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pinterest] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pinterest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pinterest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pinterest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pinterest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pinterest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pinterest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pinterest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pinterest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pinterest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pinterest] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Pinterest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pinterest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pinterest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pinterest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pinterest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pinterest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pinterest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pinterest] SET RECOVERY FULL 
GO
ALTER DATABASE [Pinterest] SET  MULTI_USER 
GO
ALTER DATABASE [Pinterest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pinterest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pinterest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pinterest] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Pinterest] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Pinterest', N'ON'
GO
ALTER DATABASE [Pinterest] SET QUERY_STORE = OFF
GO
USE [Pinterest]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 10/14/2020 3:45:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](255) NOT NULL,
	[description] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Article] ON 

INSERT [dbo].[Article] ([id], [image], [description]) VALUES (1, N'i1.jpg', N'Black and Green Bug')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (2, N'i2.png', N'Noshery')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (3, N'i3.jpg', N'White Coral')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (4, N'i4.png', N'DC Database')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (5, N'i5.jpg', N'14 Good Educational Website')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (6, N'i6.jpg', N'Superman vs Superwoman')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (7, N'i7.png', N'Paper car')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (8, N'i8.jpg', N'House on stone')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (9, N'i9.jpg', N'Radio')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (10, N'i10.jpg', N'Magic trick')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (11, N'i11.jpg', N'3D typo')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (12, N'i34.jpg', N'Superman through the years')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (13, N'i13.jpg', N'Hot dogs')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (14, N'i14.jpg', N'Superman')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (15, N'i15.jpg', N'Yoga Asanas To Reduce Belly Fat')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (16, N'i16.jpg', N'Batman vs Superman')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (17, N'i17.jpg', N'Superwoman')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (18, N'i18.jpg', N'Lovers')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (19, N'i19.jpg', N'Fashion to art')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (20, N'i20.jpg', N'beAwesome')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (21, N'i21.jpg', N'Lower Back Pain')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (22, N'i22.jpg', N'Chaturanga')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (23, N'i23.jpg', N'Workout')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (24, N'i24.png', N'M:')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (25, N'i25.png', N'Triangle')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (26, N'i26.jpg', N'Yoga1')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (27, N'i27.jpg', N'Yoga for beginners')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (28, N'i28.jpg', N'Yoga2')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (29, N'i29.jpg', N'Web2carz')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (30, N'i30.jpg', N'Text')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (31, N'i31.jpg', N'Figure')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (32, N'i35.jpg', N'MFD')
INSERT [dbo].[Article] ([id], [image], [description]) VALUES (33, N'i33.jpg', N'How to add comfort')
SET IDENTITY_INSERT [dbo].[Article] OFF
USE [master]
GO
ALTER DATABASE [Pinterest] SET  READ_WRITE 
GO
