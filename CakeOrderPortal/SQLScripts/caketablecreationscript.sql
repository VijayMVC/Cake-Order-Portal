USE [master]
GO
/****** Object:  Database [CakeDeliveryDetails]    Script Date: 2018-03-12 8:23:25 PM ******/
CREATE DATABASE [CakeDeliveryDetails]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CakeDeliveryDetails', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CakeDeliveryDetails.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CakeDeliveryDetails_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CakeDeliveryDetails_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CakeDeliveryDetails] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CakeDeliveryDetails].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CakeDeliveryDetails] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET ARITHABORT OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CakeDeliveryDetails] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CakeDeliveryDetails] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CakeDeliveryDetails] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CakeDeliveryDetails] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET RECOVERY FULL 
GO
ALTER DATABASE [CakeDeliveryDetails] SET  MULTI_USER 
GO
ALTER DATABASE [CakeDeliveryDetails] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CakeDeliveryDetails] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CakeDeliveryDetails] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CakeDeliveryDetails] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CakeDeliveryDetails] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CakeDeliveryDetails', N'ON'
GO
ALTER DATABASE [CakeDeliveryDetails] SET QUERY_STORE = OFF
GO
USE [CakeDeliveryDetails]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [CakeDeliveryDetails]
GO
/****** Object:  Table [dbo].[CakeOrderDetails]    Script Date: 2018-03-12 8:23:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CakeOrderDetails](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CakeName] [varchar](256) NULL,
	[CakeType] [varchar](256) NULL,
	[Weight] [varchar](50) NULL,
	[DeliveryDate] [datetime] NULL,
	[DeliveryTime] [time](7) NULL,
	[FirstName] [varchar](256) NULL,
	[LastName] [varchar](256) NULL,
	[StreetNumber] [varchar](50) NULL,
	[Address] [varchar](256) NULL,
	[City] [varchar](256) NULL,
	[Province] [varchar](256) NULL,
	[Country] [varchar](256) NULL,
	[PostalCode] [varchar](256) NULL,
 CONSTRAINT [PK__CakeOrde__C3905BCFA65E873A] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentInformation]    Script Date: 2018-03-12 8:23:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentInformation](
	[EmailAddress] [varchar](256) NOT NULL,
	[PhoneNumber] [varchar](256) NULL,
	[CreditCardType] [varchar](256) NOT NULL,
	[Name] [varchar](256) NULL,
	[CreditCardNumber] [varchar](256) NULL,
	[ExpirationDate] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CakeOrderDetails] ON 

INSERT [dbo].[CakeOrderDetails] ([OrderId], [CakeName], [CakeType], [Weight], [DeliveryDate], [DeliveryTime], [FirstName], [LastName], [StreetNumber], [Address], [City], [Province], [Country], [PostalCode]) VALUES (1, N'Red Velvet Fresh Cream Cake', N'EGG', N'1 KG', CAST(N'2018-03-28T00:00:00.000' AS DateTime), CAST(N'09:00:00' AS Time), N'Dinesh', N'Kumar', N'2155', N'Monastery Lane', N'Halifax', N'Nova Scotia', N'Canada', N'B3L 4P9')
INSERT [dbo].[CakeOrderDetails] ([OrderId], [CakeName], [CakeType], [Weight], [DeliveryDate], [DeliveryTime], [FirstName], [LastName], [StreetNumber], [Address], [City], [Province], [Country], [PostalCode]) VALUES (2, N'Rich Fruit Cake', N'EGGLESS', N'2 KG', CAST(N'2018-03-27T00:00:00.000' AS DateTime), CAST(N'10:00:00' AS Time), N'Meghana', N'Chillal', N'1030', N'Somerset Apartments', N'Halifax', N'Nova Scotia', N'Canada', N'B3L 4P9')
SET IDENTITY_INSERT [dbo].[CakeOrderDetails] OFF
INSERT [dbo].[PaymentInformation] ([EmailAddress], [PhoneNumber], [CreditCardType], [Name], [CreditCardNumber], [ExpirationDate]) VALUES (N'meghana.chillal@gmail.com', N'9024127196', N'Master Card', N'Meghana Chillal', N'5332607335371084', CAST(N'2018-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[PaymentInformation] ([EmailAddress], [PhoneNumber], [CreditCardType], [Name], [CreditCardNumber], [ExpirationDate]) VALUES (N'dkdinesh7171@gmail.com', N'9024127247', N'Visa', N'Dinesh Kumar ', N'4024007135751047', CAST(N'2029-12-01T00:00:00.000' AS DateTime))
USE [master]
GO
ALTER DATABASE [CakeDeliveryDetails] SET  READ_WRITE 
GO
