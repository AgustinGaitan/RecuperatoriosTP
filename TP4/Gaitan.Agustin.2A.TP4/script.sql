USE [master]
GO
/****** Object:  Database [gimnasio]    Script Date: 21/11/2020 22:27:46 ******/
CREATE DATABASE [gimnasio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gimnasio', FILENAME = N'D:\gimnasio.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'gimnasio_log', FILENAME = N'D:\gimnasio_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [gimnasio] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gimnasio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [gimnasio] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [gimnasio] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [gimnasio] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [gimnasio] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [gimnasio] SET ARITHABORT OFF 
GO
ALTER DATABASE [gimnasio] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [gimnasio] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [gimnasio] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [gimnasio] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [gimnasio] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [gimnasio] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [gimnasio] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [gimnasio] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [gimnasio] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [gimnasio] SET  DISABLE_BROKER 
GO
ALTER DATABASE [gimnasio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [gimnasio] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [gimnasio] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [gimnasio] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [gimnasio] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [gimnasio] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [gimnasio] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [gimnasio] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [gimnasio] SET  MULTI_USER 
GO
ALTER DATABASE [gimnasio] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [gimnasio] SET DB_CHAINING OFF 
GO
ALTER DATABASE [gimnasio] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [gimnasio] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [gimnasio] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [gimnasio] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [gimnasio] SET QUERY_STORE = OFF
GO
USE [gimnasio]
GO
/****** Object:  Table [dbo].[tablaaerobico]    Script Date: 21/11/2020 22:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tablaaerobico](
	[id] [int] IDENTITY(7,1) NOT NULL,
	[producto] [varchar](50) NULL,
	[color] [varchar](50) NULL,
	[precio] [int] NULL,
 CONSTRAINT [PK_tablaaerobico] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tablaproductos]    Script Date: 21/11/2020 22:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tablaproductos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[producto] [varchar](50) NULL,
	[caracteristica] [int] NULL,
	[precio] [int] NULL,
 CONSTRAINT [PK_tablaproductos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tablaaerobico] ON 

INSERT [dbo].[tablaaerobico] ([id], [producto], [color], [precio]) VALUES (7, N'colchoneta', N'azul', 1000)
INSERT [dbo].[tablaaerobico] ([id], [producto], [color], [precio]) VALUES (8, N'colchoneta', N'roja', 3000)
INSERT [dbo].[tablaaerobico] ([id], [producto], [color], [precio]) VALUES (9, N'colchoneta', N'verde', 5000)
INSERT [dbo].[tablaaerobico] ([id], [producto], [color], [precio]) VALUES (10, N'bici', N'purpura', 5000)
INSERT [dbo].[tablaaerobico] ([id], [producto], [color], [precio]) VALUES (11, N'bici', N'naranja', 5000)
INSERT [dbo].[tablaaerobico] ([id], [producto], [color], [precio]) VALUES (12, N'bici', N'celeste', 5000)
SET IDENTITY_INSERT [dbo].[tablaaerobico] OFF
GO
SET IDENTITY_INSERT [dbo].[tablaproductos] ON 

INSERT [dbo].[tablaproductos] ([id], [producto], [caracteristica], [precio]) VALUES (1, N'barra', 2, 2000)
INSERT [dbo].[tablaproductos] ([id], [producto], [caracteristica], [precio]) VALUES (2, N'barra', 3, 4000)
INSERT [dbo].[tablaproductos] ([id], [producto], [caracteristica], [precio]) VALUES (3, N'barra', 5, 7500)
INSERT [dbo].[tablaproductos] ([id], [producto], [caracteristica], [precio]) VALUES (4, N'mancuerna', 2, 1000)
INSERT [dbo].[tablaproductos] ([id], [producto], [caracteristica], [precio]) VALUES (5, N'mancuerna', 5, 2000)
INSERT [dbo].[tablaproductos] ([id], [producto], [caracteristica], [precio]) VALUES (6, N'mancuerna', 10, 5000)
SET IDENTITY_INSERT [dbo].[tablaproductos] OFF
GO
USE [master]
GO
ALTER DATABASE [gimnasio] SET  READ_WRITE 
GO
