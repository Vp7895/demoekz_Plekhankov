USE [master]
GO
/****** Object:  Database [Plekhankov_DemoEkz]    Script Date: 27.05.2022 13:38:30 ******/
CREATE DATABASE [Plekhankov_DemoEkz]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Plekhankov_DemoEkz', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Plekhankov_DemoEkz.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Plekhankov_DemoEkz_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Plekhankov_DemoEkz_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Plekhankov_DemoEkz].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET ARITHABORT OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET RECOVERY FULL 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET  MULTI_USER 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Plekhankov_DemoEkz', N'ON'
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET QUERY_STORE = OFF
GO
USE [Plekhankov_DemoEkz]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 27.05.2022 13:38:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[dogovor] [int] NOT NULL,
	[date_pokupki] [date] NOT NULL,
	[phone] [nvarchar](11) NOT NULL,
	[adres] [nvarchar](50) NOT NULL,
	[id_model] [int] NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modeli_auto]    Script Date: 27.05.2022 13:38:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modeli_auto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name_model] [nvarchar](50) NOT NULL,
	[color] [nvarchar](50) NOT NULL,
	[obivka] [nvarchar](50) NOT NULL,
	[date_vipuska] [date] NOT NULL,
	[kolvo_door] [nchar](10) NULL,
	[mochnost] [nvarchar](50) NOT NULL,
	[korobka_peredach] [nvarchar](50) NOT NULL,
	[price] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Modeli_auto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nacenki]    Script Date: 27.05.2022 13:38:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nacenki](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[znachenie] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_nacenki] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postavchiki]    Script Date: 27.05.2022 13:38:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postavchiki](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name_firma] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[adress_site] [nvarchar](50) NULL,
 CONSTRAINT [PK_Postavchiki] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[postavka]    Script Date: 27.05.2022 13:38:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[postavka](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_postavchik] [int] NOT NULL,
	[id_model] [int] NOT NULL,
 CONSTRAINT [PK_postavka] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[priceKurant]    Script Date: 27.05.2022 13:38:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[priceKurant](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_model] [int] NOT NULL,
	[price] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_priceKurant] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sdelka]    Script Date: 27.05.2022 13:38:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sdelka](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_client] [int] NOT NULL,
	[id_model] [int] NOT NULL,
 CONSTRAINT [PK_Sdelka] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([id], [FIO], [dogovor], [date_pokupki], [phone], [adres], [id_model]) VALUES (1, N'Плеханков И.В.', 23, CAST(N'2001-12-23' AS Date), N'88888', N'улица Пушкина', 1)
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Modeli_auto] ON 

INSERT [dbo].[Modeli_auto] ([id], [name_model], [color], [obivka], [date_vipuska], [kolvo_door], [mochnost], [korobka_peredach], [price]) VALUES (1, N'Polo', N'черный', N'не знаю', CAST(N'2022-01-02' AS Date), N'4         ', N'134', N'автомат', N'1 000 000')
SET IDENTITY_INSERT [dbo].[Modeli_auto] OFF
GO
SET IDENTITY_INSERT [dbo].[nacenki] ON 

INSERT [dbo].[nacenki] ([id], [type], [znachenie]) VALUES (1, N'test', N'test')
SET IDENTITY_INSERT [dbo].[nacenki] OFF
GO
SET IDENTITY_INSERT [dbo].[Postavchiki] ON 

INSERT [dbo].[Postavchiki] ([id], [name_firma], [phone], [email], [adress_site]) VALUES (1, N'test', N'test', N'test', N'test')
SET IDENTITY_INSERT [dbo].[Postavchiki] OFF
GO
SET IDENTITY_INSERT [dbo].[priceKurant] ON 

INSERT [dbo].[priceKurant] ([id], [id_model], [price]) VALUES (1, 1, N'1000000')
SET IDENTITY_INSERT [dbo].[priceKurant] OFF
GO
SET IDENTITY_INSERT [dbo].[Sdelka] ON 

INSERT [dbo].[Sdelka] ([id], [id_client], [id_model]) VALUES (4, 1, 1)
SET IDENTITY_INSERT [dbo].[Sdelka] OFF
GO
ALTER TABLE [dbo].[postavka]  WITH CHECK ADD  CONSTRAINT [FK_postavka_Modeli_auto] FOREIGN KEY([id_model])
REFERENCES [dbo].[Modeli_auto] ([id])
GO
ALTER TABLE [dbo].[postavka] CHECK CONSTRAINT [FK_postavka_Modeli_auto]
GO
ALTER TABLE [dbo].[postavka]  WITH CHECK ADD  CONSTRAINT [FK_postavka_Postavchiki] FOREIGN KEY([id_postavchik])
REFERENCES [dbo].[Postavchiki] ([id])
GO
ALTER TABLE [dbo].[postavka] CHECK CONSTRAINT [FK_postavka_Postavchiki]
GO
ALTER TABLE [dbo].[priceKurant]  WITH CHECK ADD  CONSTRAINT [FK_priceKurant_Modeli_auto] FOREIGN KEY([id_model])
REFERENCES [dbo].[Modeli_auto] ([id])
GO
ALTER TABLE [dbo].[priceKurant] CHECK CONSTRAINT [FK_priceKurant_Modeli_auto]
GO
ALTER TABLE [dbo].[Sdelka]  WITH CHECK ADD  CONSTRAINT [FK_Sdelka_Client] FOREIGN KEY([id_client])
REFERENCES [dbo].[Client] ([id])
GO
ALTER TABLE [dbo].[Sdelka] CHECK CONSTRAINT [FK_Sdelka_Client]
GO
ALTER TABLE [dbo].[Sdelka]  WITH CHECK ADD  CONSTRAINT [FK_Sdelka_Modeli_auto] FOREIGN KEY([id_model])
REFERENCES [dbo].[Modeli_auto] ([id])
GO
ALTER TABLE [dbo].[Sdelka] CHECK CONSTRAINT [FK_Sdelka_Modeli_auto]
GO
USE [master]
GO
ALTER DATABASE [Plekhankov_DemoEkz] SET  READ_WRITE 
GO
