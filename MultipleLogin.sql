USE [master]
GO
/****** Object:  Database [MultipleLogin]    Script Date: 8/5/2019 4:54:51 PM ******/
CREATE DATABASE [MultipleLogin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MultipleLogin', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MultipleLogin.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MultipleLogin_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MultipleLogin_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MultipleLogin] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MultipleLogin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MultipleLogin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MultipleLogin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MultipleLogin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MultipleLogin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MultipleLogin] SET ARITHABORT OFF 
GO
ALTER DATABASE [MultipleLogin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MultipleLogin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MultipleLogin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MultipleLogin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MultipleLogin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MultipleLogin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MultipleLogin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MultipleLogin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MultipleLogin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MultipleLogin] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MultipleLogin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MultipleLogin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MultipleLogin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MultipleLogin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MultipleLogin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MultipleLogin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MultipleLogin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MultipleLogin] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MultipleLogin] SET  MULTI_USER 
GO
ALTER DATABASE [MultipleLogin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MultipleLogin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MultipleLogin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MultipleLogin] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MultipleLogin] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MultipleLogin] SET QUERY_STORE = OFF
GO
USE [MultipleLogin]
GO
/****** Object:  Table [dbo].[tblMain]    Script Date: 8/5/2019 4:54:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMain](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](20) NOT NULL,
	[PersonName] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Type] [varchar](5) NOT NULL,
 CONSTRAINT [PK_tblMain_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMultipleLogin]    Script Date: 8/5/2019 4:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMultipleLogin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](20) NOT NULL,
	[Password] [varchar](8) NOT NULL,
	[Type] [varchar](5) NOT NULL,
 CONSTRAINT [PK_tblMultipleLogin] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRegister]    Script Date: 8/5/2019 4:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRegister](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](50) NOT NULL,
	[UserName] [varchar](20) NOT NULL,
	[Password] [varchar](8) NOT NULL,
	[Type] [varchar](5) NOT NULL,
 CONSTRAINT [PK_tblRegister] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblMain] ON 

INSERT [dbo].[tblMain] ([Id], [UserName], [PersonName], [PhoneNumber], [Type]) VALUES (1, N'baba', N'Prince', N'01845988081', N'User')
INSERT [dbo].[tblMain] ([Id], [UserName], [PersonName], [PhoneNumber], [Type]) VALUES (7, N'baba', N'Porosh', N'01672896992', N'User')
INSERT [dbo].[tblMain] ([Id], [UserName], [PersonName], [PhoneNumber], [Type]) VALUES (8, N'baba', N'Ma', N'01874374110', N'User')
INSERT [dbo].[tblMain] ([Id], [UserName], [PersonName], [PhoneNumber], [Type]) VALUES (9, N'baba', N'dthd', N'fghf3146', N'User')
INSERT [dbo].[tblMain] ([Id], [UserName], [PersonName], [PhoneNumber], [Type]) VALUES (10, N'prince', N'Prince', N'01845988081', N'User')
INSERT [dbo].[tblMain] ([Id], [UserName], [PersonName], [PhoneNumber], [Type]) VALUES (11, N'prince', N'Porosh', N'01672896992', N'User')
INSERT [dbo].[tblMain] ([Id], [UserName], [PersonName], [PhoneNumber], [Type]) VALUES (12, N'prince', N'Ma', N'01874374110', N'User')
INSERT [dbo].[tblMain] ([Id], [UserName], [PersonName], [PhoneNumber], [Type]) VALUES (13, N'admin', N'cgfh', N'fghf', N'Admin')
INSERT [dbo].[tblMain] ([Id], [UserName], [PersonName], [PhoneNumber], [Type]) VALUES (15, N'1', N'lp', N'04354', N'User')
INSERT [dbo].[tblMain] ([Id], [UserName], [PersonName], [PhoneNumber], [Type]) VALUES (16, N'1', N'5', N'456', N'User')
SET IDENTITY_INSERT [dbo].[tblMain] OFF
SET IDENTITY_INSERT [dbo].[tblMultipleLogin] ON 

INSERT [dbo].[tblMultipleLogin] ([Id], [UserName], [Password], [Type]) VALUES (5, N'1', N'1', N'User')
INSERT [dbo].[tblMultipleLogin] ([Id], [UserName], [Password], [Type]) VALUES (4, N'admin', N'admin', N'Admin')
INSERT [dbo].[tblMultipleLogin] ([Id], [UserName], [Password], [Type]) VALUES (1, N'baba', N'baba', N'User')
INSERT [dbo].[tblMultipleLogin] ([Id], [UserName], [Password], [Type]) VALUES (3, N'porosh', N'porosh', N'User')
INSERT [dbo].[tblMultipleLogin] ([Id], [UserName], [Password], [Type]) VALUES (2, N'prince', N'prince', N'User')
SET IDENTITY_INSERT [dbo].[tblMultipleLogin] OFF
SET IDENTITY_INSERT [dbo].[tblRegister] ON 

INSERT [dbo].[tblRegister] ([Id], [FullName], [UserName], [Password], [Type]) VALUES (7, N'dfgdfg', N'1', N'1', N'User')
INSERT [dbo].[tblRegister] ([Id], [FullName], [UserName], [Password], [Type]) VALUES (6, N'Adnministration', N'admin', N'admin', N'Admin')
INSERT [dbo].[tblRegister] ([Id], [FullName], [UserName], [Password], [Type]) VALUES (1, N'My Father', N'baba', N'baba', N'User')
INSERT [dbo].[tblRegister] ([Id], [FullName], [UserName], [Password], [Type]) VALUES (5, N'porosh', N'porosh', N'porosh', N'User')
INSERT [dbo].[tblRegister] ([Id], [FullName], [UserName], [Password], [Type]) VALUES (4, N'Prince Developer', N'prince', N'prince', N'User')
SET IDENTITY_INSERT [dbo].[tblRegister] OFF
USE [master]
GO
ALTER DATABASE [MultipleLogin] SET  READ_WRITE 
GO
