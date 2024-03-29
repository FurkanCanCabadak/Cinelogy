USE [master]
GO
/****** Object:  Database [CinelogyDb]    Script Date: 16.12.2022 15:17:06 ******/
CREATE DATABASE [CinelogyDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CinelogyDb', FILENAME = N'C:\Users\erhan.kaya\CinelogyDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CinelogyDb_log', FILENAME = N'C:\Users\erhan.kaya\CinelogyDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CinelogyDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CinelogyDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CinelogyDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CinelogyDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CinelogyDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CinelogyDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CinelogyDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [CinelogyDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CinelogyDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CinelogyDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CinelogyDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CinelogyDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CinelogyDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CinelogyDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CinelogyDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CinelogyDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CinelogyDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CinelogyDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CinelogyDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CinelogyDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CinelogyDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CinelogyDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CinelogyDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CinelogyDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CinelogyDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CinelogyDb] SET  MULTI_USER 
GO
ALTER DATABASE [CinelogyDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CinelogyDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CinelogyDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CinelogyDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CinelogyDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CinelogyDb] SET QUERY_STORE = OFF
GO
USE [CinelogyDb]
GO
/****** Object:  Table [dbo].[Actor]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Surname] [nvarchar](100) NULL,
	[Age] [int] NULL,
	[Gander] [nvarchar](20) NULL,
	[Image] [nvarchar](500) NULL,
	[Description] [ntext] NULL,
	[IsStatus] [bit] NULL,
	[IsDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Surname] [nvarchar](100) NULL,
	[Balance] [float] NULL,
	[Email] [nvarchar](250) NULL,
	[Phone] [nvarchar](14) NULL,
	[CustomerTypeId] [int] NULL,
	[RegisterDate] [datetime] NULL,
	[IsStatus] [bit] NULL,
	[IsDelete] [bit] NULL,
	[CustomerNumber] [nvarchar](100) NULL,
 CONSTRAINT [PK__Customer__3214EC071B170A94] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerType]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Rate] [float] NULL,
	[IsStatus] [bit] NULL,
	[IsDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Image] [nvarchar](500) NULL,
	[IsStatus] [bit] NULL,
	[IsDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[MovieTypeId] [int] NULL,
	[Description] [ntext] NULL,
	[Director] [nvarchar](250) NULL,
	[Image] [nvarchar](500) NULL,
	[ReleaseDate] [date] NULL,
	[IsStatus] [bit] NULL,
	[IsDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieActor]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieActor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NULL,
	[ActorId] [int] NULL,
	[IsStatus] [bit] NULL,
	[IsDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieSession]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieSession](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SessionTime] [time](7) NULL,
	[IsStatus] [bit] NULL,
	[IsDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieType]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [ntext] NULL,
	[Image] [nvarchar](500) NULL,
	[IsStatus] [bit] NULL,
	[IsDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MSSL]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MSSL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NULL,
	[SallonId] [int] NULL,
	[MovieSessionId] [int] NULL,
	[LanguageId] [int] NULL,
	[Price] [float] NULL,
	[MovieDate] [date] NULL,
	[IsStatus] [bit] NULL,
	[IsDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sallon]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sallon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[SeatCount] [int] NULL,
	[IsStatus] [bit] NULL,
	[IsDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicketSold]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicketSold](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MSSLId] [int] NULL,
	[CustomerId] [int] NULL,
	[SoldDateTime] [datetime] NULL,
	[SeatNumber] [int] NULL,
	[TicketQuantity] [int] NULL,
	[IsStatus] [bit] NULL,
	[IsDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Surname] [nvarchar](100) NULL,
	[UserName] [nvarchar](150) NULL,
	[Password] [nvarchar](150) NULL,
	[Image] [nvarchar](500) NULL,
	[Email] [nvarchar](250) NULL,
	[Phone] [nvarchar](14) NULL,
	[RegisterDate] [datetime] NULL,
	[IsStatus] [bit] NULL,
	[IsDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Name], [Surname], [Balance], [Email], [Phone], [CustomerTypeId], [RegisterDate], [IsStatus], [IsDelete], [CustomerNumber]) VALUES (1, N'İrem', N'Erbaş', 6565, N'i.e@gmail.com', N'05554443322', 3, CAST(N'2022-02-12T00:00:00.000' AS DateTime), 1, 0, N'CNM-2022-1')
INSERT [dbo].[Customer] ([Id], [Name], [Surname], [Balance], [Email], [Phone], [CustomerTypeId], [RegisterDate], [IsStatus], [IsDelete], [CustomerNumber]) VALUES (2, N'İdil', N'Karadağlı', 2000000, N'ik@gmail.com', N'05553332244', 6, CAST(N'2022-12-08T00:00:00.000' AS DateTime), 1, 0, N'CNM-2022-2')
INSERT [dbo].[Customer] ([Id], [Name], [Surname], [Balance], [Email], [Phone], [CustomerTypeId], [RegisterDate], [IsStatus], [IsDelete], [CustomerNumber]) VALUES (1002, N'Ayhan', N'Işık', 152000, N'ayhan@gmail.com', N'05323232323', 6, CAST(N'2022-12-09T00:00:00.000' AS DateTime), 1, 0, N'CNM-2022-3')
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[CustomerType] ON 

INSERT [dbo].[CustomerType] ([Id], [Name], [Rate], [IsStatus], [IsDelete]) VALUES (1, N'Standart', 0, 1, 0)
INSERT [dbo].[CustomerType] ([Id], [Name], [Rate], [IsStatus], [IsDelete]) VALUES (2, N'Bronze', 5, 1, 0)
INSERT [dbo].[CustomerType] ([Id], [Name], [Rate], [IsStatus], [IsDelete]) VALUES (3, N'Silver', 15, 1, 0)
INSERT [dbo].[CustomerType] ([Id], [Name], [Rate], [IsStatus], [IsDelete]) VALUES (4, N'Gold', 25, 1, 0)
INSERT [dbo].[CustomerType] ([Id], [Name], [Rate], [IsStatus], [IsDelete]) VALUES (5, N'Platinium', 35, 1, 0)
INSERT [dbo].[CustomerType] ([Id], [Name], [Rate], [IsStatus], [IsDelete]) VALUES (6, N'Diamond', 50, 1, 0)
SET IDENTITY_INSERT [dbo].[CustomerType] OFF
SET IDENTITY_INSERT [dbo].[Language] ON 

INSERT [dbo].[Language] ([Id], [Name], [Image], [IsStatus], [IsDelete]) VALUES (1, N'Türkçe', N'tr.png', 1, 0)
INSERT [dbo].[Language] ([Id], [Name], [Image], [IsStatus], [IsDelete]) VALUES (2, N'İngilizce', N'en.png', 1, 0)
INSERT [dbo].[Language] ([Id], [Name], [Image], [IsStatus], [IsDelete]) VALUES (3, N'Film', N'25aa154d-1529-4fa2-b253-d99cd74a344d-mainTicket.png', 1, 1)
SET IDENTITY_INSERT [dbo].[Language] OFF
SET IDENTITY_INSERT [dbo].[Movie] ON 

INSERT [dbo].[Movie] ([Id], [Name], [MovieTypeId], [Description], [Director], [Image], [ReleaseDate], [IsStatus], [IsDelete]) VALUES (1, N'Harry Potter 12', 1, N'Harry Potter2', N'Chris Columbus2', N'a435355c-86b0-4a44-92ea-f5e4d2246b81-914MHuDfMSL.jpg', CAST(N'1997-06-06' AS Date), 1, 0)
INSERT [dbo].[Movie] ([Id], [Name], [MovieTypeId], [Description], [Director], [Image], [ReleaseDate], [IsStatus], [IsDelete]) VALUES (2, N'Black Widow', 1, N'A guide to Marvel Studios'' Black Widow movie. Includes all-new interviews with the cast and talent behind the cameras! Experience the interviews with', N'Cate Shortland', N'20719f7f-ec61-4fb6-87e7-085339699b37-914MHuDfMSL.jpg', CAST(N'2021-07-09' AS Date), 0, 0)
INSERT [dbo].[Movie] ([Id], [Name], [MovieTypeId], [Description], [Director], [Image], [ReleaseDate], [IsStatus], [IsDelete]) VALUES (3, N'wednesday', 2, N'Wednesday is an American coming-of-age supernatural comedy horror television series based upon the character Wednesday Addams from The Addams Family. ', N'Alfred Gough', N'86567ccc-54cd-440d-a704-c9f49534445f-Wednesday22netflix.jpg', CAST(N'2022-11-23' AS Date), 1, 0)
INSERT [dbo].[Movie] ([Id], [Name], [MovieTypeId], [Description], [Director], [Image], [ReleaseDate], [IsStatus], [IsDelete]) VALUES (4, N'96 saat', 1, N'96 saat', N'Pierre Morel', N'9c42ac09-0100-4a75-9d77-263889cb688a-images.jpg', CAST(N'2008-05-09' AS Date), 1, 0)
SET IDENTITY_INSERT [dbo].[Movie] OFF
SET IDENTITY_INSERT [dbo].[MovieSession] ON 

INSERT [dbo].[MovieSession] ([Id], [SessionTime], [IsStatus], [IsDelete]) VALUES (1, CAST(N'10:00:00' AS Time), 1, 0)
INSERT [dbo].[MovieSession] ([Id], [SessionTime], [IsStatus], [IsDelete]) VALUES (2, CAST(N'12:00:00' AS Time), 1, 1)
INSERT [dbo].[MovieSession] ([Id], [SessionTime], [IsStatus], [IsDelete]) VALUES (3, CAST(N'13:00:00' AS Time), 1, 1)
SET IDENTITY_INSERT [dbo].[MovieSession] OFF
SET IDENTITY_INSERT [dbo].[MovieType] ON 

INSERT [dbo].[MovieType] ([Id], [Name], [Description], [Image], [IsStatus], [IsDelete]) VALUES (1, N'Action', N'Action', N'action.png', 1, 0)
INSERT [dbo].[MovieType] ([Id], [Name], [Description], [Image], [IsStatus], [IsDelete]) VALUES (2, N'Fantastic', N'Fantastic', N'fantastic.png', 1, 0)
SET IDENTITY_INSERT [dbo].[MovieType] OFF
SET IDENTITY_INSERT [dbo].[MSSL] ON 

INSERT [dbo].[MSSL] ([Id], [MovieId], [SallonId], [MovieSessionId], [LanguageId], [Price], [MovieDate], [IsStatus], [IsDelete]) VALUES (1, 1, 1, 1, 1, 25, CAST(N'2022-12-14' AS Date), 1, 0)
INSERT [dbo].[MSSL] ([Id], [MovieId], [SallonId], [MovieSessionId], [LanguageId], [Price], [MovieDate], [IsStatus], [IsDelete]) VALUES (2, 3, 1, 1, 1, 80, CAST(N'2022-12-16' AS Date), 1, 0)
INSERT [dbo].[MSSL] ([Id], [MovieId], [SallonId], [MovieSessionId], [LanguageId], [Price], [MovieDate], [IsStatus], [IsDelete]) VALUES (3, 4, 1, 1, 2, 70, CAST(N'2022-12-17' AS Date), 1, 0)
INSERT [dbo].[MSSL] ([Id], [MovieId], [SallonId], [MovieSessionId], [LanguageId], [Price], [MovieDate], [IsStatus], [IsDelete]) VALUES (4, 4, 1, 1, 1, 60, CAST(N'2022-12-18' AS Date), 1, 0)
SET IDENTITY_INSERT [dbo].[MSSL] OFF
SET IDENTITY_INSERT [dbo].[Sallon] ON 

INSERT [dbo].[Sallon] ([Id], [Name], [SeatCount], [IsStatus], [IsDelete]) VALUES (1, N'Salon A', 32, 1, 0)
INSERT [dbo].[Sallon] ([Id], [Name], [SeatCount], [IsStatus], [IsDelete]) VALUES (2, N'Salon c', 35, 1, 1)
SET IDENTITY_INSERT [dbo].[Sallon] OFF
SET IDENTITY_INSERT [dbo].[TicketSold] ON 

INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (1, 1, 1, CAST(N'2022-12-16T00:00:00.000' AS DateTime), 4, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (2, 1, 2, CAST(N'2022-12-16T00:00:00.000' AS DateTime), 25, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (3, 1, 1002, CAST(N'2022-12-16T00:00:00.000' AS DateTime), 12, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (4, 1, 1, CAST(N'2022-12-16T14:24:14.970' AS DateTime), 27, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (5, 1, 1, CAST(N'2022-12-16T14:24:19.717' AS DateTime), 28, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (6, 1, 1, CAST(N'2022-12-16T14:24:21.550' AS DateTime), 29, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (7, 1, 1, CAST(N'2022-12-16T14:25:58.553' AS DateTime), 1, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (8, 1, 1, CAST(N'2022-12-16T14:25:58.557' AS DateTime), 2, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (9, 1, 1, CAST(N'2022-12-16T14:25:58.557' AS DateTime), 32, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (10, 1, 1, CAST(N'2022-12-16T14:25:58.560' AS DateTime), 31, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (11, 1, 1, CAST(N'2022-12-16T14:25:58.560' AS DateTime), 30, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (12, 1, 1, CAST(N'2022-12-16T14:25:58.560' AS DateTime), 7, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (13, 1, 1, CAST(N'2022-12-16T14:25:58.560' AS DateTime), 8, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (14, 1, 1, CAST(N'2022-12-16T14:25:58.560' AS DateTime), 26, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (15, 1, 1, CAST(N'2022-12-16T14:32:30.070' AS DateTime), 21, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (16, 1, 2, CAST(N'2022-12-16T14:38:37.453' AS DateTime), 24, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (17, 1, 1002, CAST(N'2022-12-16T14:38:46.747' AS DateTime), 18, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (18, 1, 1002, CAST(N'2022-12-16T14:40:15.860' AS DateTime), 13, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (19, 1, 2, CAST(N'2022-12-16T14:41:27.363' AS DateTime), 16, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (20, 1, 1002, CAST(N'2022-12-16T14:42:55.387' AS DateTime), 15, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (21, 1, 1002, CAST(N'2022-12-16T14:43:45.610' AS DateTime), 19, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (22, 1, 2, CAST(N'2022-12-16T15:04:54.860' AS DateTime), 3, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (23, 1, 2, CAST(N'2022-12-16T15:04:54.860' AS DateTime), 5, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (24, 1, 2, CAST(N'2022-12-16T15:04:54.863' AS DateTime), 17, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (25, 2, 2, CAST(N'2022-12-16T15:06:45.477' AS DateTime), 16, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (26, 2, 2, CAST(N'2022-12-16T15:06:45.480' AS DateTime), 17, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (27, 2, 2, CAST(N'2022-12-16T15:12:58.910' AS DateTime), 29, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (28, 2, 2, CAST(N'2022-12-16T15:12:58.913' AS DateTime), 28, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (29, 3, 2, CAST(N'2022-12-16T15:14:41.413' AS DateTime), 17, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (30, 3, 2, CAST(N'2022-12-16T15:14:41.417' AS DateTime), 18, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (31, 3, 2, CAST(N'2022-12-16T15:15:07.627' AS DateTime), 27, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (32, 3, 2, CAST(N'2022-12-16T15:15:07.630' AS DateTime), 29, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (33, 3, 2, CAST(N'2022-12-16T15:15:07.630' AS DateTime), 28, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (34, 2, 2, CAST(N'2022-12-16T15:15:36.407' AS DateTime), 25, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (35, 2, 2, CAST(N'2022-12-16T15:15:36.407' AS DateTime), 26, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (36, 2, 1002, CAST(N'2022-12-16T15:15:53.197' AS DateTime), 20, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (37, 2, 1002, CAST(N'2022-12-16T15:15:53.197' AS DateTime), 21, 1, 1, 0)
INSERT [dbo].[TicketSold] ([Id], [MSSLId], [CustomerId], [SoldDateTime], [SeatNumber], [TicketQuantity], [IsStatus], [IsDelete]) VALUES (38, 2, 1002, CAST(N'2022-12-16T15:15:53.197' AS DateTime), 22, 1, 1, 0)
SET IDENTITY_INSERT [dbo].[TicketSold] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Surname], [UserName], [Password], [Image], [Email], [Phone], [RegisterDate], [IsStatus], [IsDelete]) VALUES (1, N'erhan', N'kaya', N'erhan', N'123', N'user.png', N'erhan@kaya.com', N'1234567890000', CAST(N'2022-12-05T10:18:36.220' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Actor] ADD  DEFAULT ('actor.png') FOR [Image]
GO
ALTER TABLE [dbo].[Actor] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[Actor] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__Balanc__300424B4]  DEFAULT ((0)) FOR [Balance]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__Custom__30F848ED]  DEFAULT ((1)) FOR [CustomerTypeId]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__Regist__31EC6D26]  DEFAULT (getdate()) FOR [RegisterDate]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsStat__32E0915F]  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsDele__33D4B598]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[CustomerType] ADD  DEFAULT ((0)) FOR [Rate]
GO
ALTER TABLE [dbo].[CustomerType] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[CustomerType] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[Language] ADD  DEFAULT ('language.png') FOR [Image]
GO
ALTER TABLE [dbo].[Language] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[Language] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[Movie] ADD  DEFAULT ('movie.png') FOR [Image]
GO
ALTER TABLE [dbo].[Movie] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[Movie] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[MovieActor] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[MovieActor] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[MovieSession] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[MovieSession] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[MovieType] ADD  DEFAULT ('movie-type.png') FOR [Image]
GO
ALTER TABLE [dbo].[MovieType] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[MovieType] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[MSSL] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[MSSL] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[Sallon] ADD  DEFAULT ((0)) FOR [SeatCount]
GO
ALTER TABLE [dbo].[Sallon] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[Sallon] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[TicketSold] ADD  DEFAULT (getdate()) FOR [SoldDateTime]
GO
ALTER TABLE [dbo].[TicketSold] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[TicketSold] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('Cinelogy123') FOR [Password]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('user.png') FOR [Image]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [RegisterDate]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_CustomerType] FOREIGN KEY([CustomerTypeId])
REFERENCES [dbo].[CustomerType] ([Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_CustomerType]
GO
ALTER TABLE [dbo].[Movie]  WITH CHECK ADD  CONSTRAINT [FK_Movie_MovieType] FOREIGN KEY([MovieTypeId])
REFERENCES [dbo].[MovieType] ([Id])
GO
ALTER TABLE [dbo].[Movie] CHECK CONSTRAINT [FK_Movie_MovieType]
GO
ALTER TABLE [dbo].[MovieActor]  WITH CHECK ADD  CONSTRAINT [FK_MovieActor_Actor] FOREIGN KEY([ActorId])
REFERENCES [dbo].[Actor] ([Id])
GO
ALTER TABLE [dbo].[MovieActor] CHECK CONSTRAINT [FK_MovieActor_Actor]
GO
ALTER TABLE [dbo].[MovieActor]  WITH CHECK ADD  CONSTRAINT [FK_MovieActor_Movie] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movie] ([Id])
GO
ALTER TABLE [dbo].[MovieActor] CHECK CONSTRAINT [FK_MovieActor_Movie]
GO
ALTER TABLE [dbo].[MSSL]  WITH CHECK ADD  CONSTRAINT [FK_MSSL_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
GO
ALTER TABLE [dbo].[MSSL] CHECK CONSTRAINT [FK_MSSL_Language]
GO
ALTER TABLE [dbo].[MSSL]  WITH CHECK ADD  CONSTRAINT [FK_MSSL_Movie] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movie] ([Id])
GO
ALTER TABLE [dbo].[MSSL] CHECK CONSTRAINT [FK_MSSL_Movie]
GO
ALTER TABLE [dbo].[MSSL]  WITH CHECK ADD  CONSTRAINT [FK_MSSL_MovieSession] FOREIGN KEY([MovieSessionId])
REFERENCES [dbo].[MovieSession] ([Id])
GO
ALTER TABLE [dbo].[MSSL] CHECK CONSTRAINT [FK_MSSL_MovieSession]
GO
ALTER TABLE [dbo].[MSSL]  WITH CHECK ADD  CONSTRAINT [FK_MSSL_Sallon] FOREIGN KEY([SallonId])
REFERENCES [dbo].[Sallon] ([Id])
GO
ALTER TABLE [dbo].[MSSL] CHECK CONSTRAINT [FK_MSSL_Sallon]
GO
ALTER TABLE [dbo].[TicketSold]  WITH CHECK ADD  CONSTRAINT [FK_TicketSold_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[TicketSold] CHECK CONSTRAINT [FK_TicketSold_Customer]
GO
ALTER TABLE [dbo].[TicketSold]  WITH CHECK ADD  CONSTRAINT [FK_TicketSold_MSSL] FOREIGN KEY([MSSLId])
REFERENCES [dbo].[MSSL] ([Id])
GO
ALTER TABLE [dbo].[TicketSold] CHECK CONSTRAINT [FK_TicketSold_MSSL]
GO
/****** Object:  StoredProcedure [dbo].[AddLanguage]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddLanguage]
@Name nvarchar(100),
@Image nvarchar(500),
@Status bit
as
begin
	declare  @IsLanguage int
	
	begin try
		insert into [Language]([Name],Image,IsStatus)
		values(@Name,@Image,@Status)

		set @IsLanguage=1
	end try
	begin catch
			set @IsLanguage=0
	end catch


	return @IsLanguage
end
GO
/****** Object:  StoredProcedure [dbo].[AddMovie]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AddMovie]
@Name nvarchar(100),
@Description ntext,
@Director nvarchar(250),
@Image nvarchar(500),
@ReleaseDate Date,
@MovieTypeId int,
@Status bit
as
begin
	declare  @IsMovie int
	begin try
		--transection kullanımı
		begin tran addMovieTran
			
			insert into Movie([Name],[Description],Director,[Image],ReleaseDate,IsStatus,MovieTypeId)
			values(@Name,@Description,@Director,@Image,@ReleaseDate,@Status,@MovieTypeId)

		--işlem başarlı ise kodlar çalıştırılacak
		commit tran addMovieTran
		set @IsMovie=1
	end try
	begin catch
		--işlem başarısız ise yapılan bütün işlemler geri alınacak
		rollback tran addMovieTran
		set @IsMovie=0
	end catch

	return @IsMovie
end
GO
/****** Object:  StoredProcedure [dbo].[AddMSSL]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AddMSSL]
@MovieId int,
@SessionId int,
@SalonId int,
@LanguageId int,
@MovieDate date,
@Price float,
@Status bit
as
begin
	declare  @IsMovie int
	begin try
		--transection kullanımı
		begin tran addMovieTran
			
			insert into MSSL(MovieId,MovieSessionId,LanguageId,SallonId,Price,MovieDate,IsStatus)
			values(@MovieId,@SessionId,@LanguageId,@SalonId,@Price,@MovieDate,@Status)

		--işlem başarlı ise kodlar çalıştırılacak
		commit tran addMovieTran
		set @IsMovie=1
	end try
	begin catch
		--işlem başarısız ise yapılan bütün işlemler geri alınacak
		rollback tran addMovieTran
		set @IsMovie=0
	end catch

	return @IsMovie
end
GO
/****** Object:  StoredProcedure [dbo].[AddSallon]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddSallon]
@Name nvarchar(100),
@SeatCount int,
@Status bit
as
begin
	declare  @IsSallon int
	
	begin try
		insert into Sallon([Name],SeatCount,IsStatus)
		values(@Name,@SeatCount,@Status)

		set @IsSallon=1
	end try
	begin catch
			set @IsSallon=0
	end catch


	return @IsSallon
end
GO
/****** Object:  StoredProcedure [dbo].[AddSession]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AddSession]
@SessionTime time,
@Status bit
as
begin
	declare  @IsSession int
	
	begin try
		insert into MovieSession(SessionTime,IsStatus)
		values(@SessionTime,@Status)

		set @IsSession=1
	end try
	begin catch
		set @IsSession=0
	end catch

	return @IsSession
end
GO
/****** Object:  StoredProcedure [dbo].[AddUser]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AddUser]
@Name nvarchar(100),
@Surname nvarchar(100),
@UserName nvarchar(200),
@Email nvarchar(250),
@Phone nvarchar(14)
as
begin
	declare @IsUser int
	set @IsUser=(select count(Id) from Users where Email=@Email or UserName=@UserName)
	
	if @IsUser=0 begin
		insert into Users([Name],Surname,UserName,Email,Phone)
		values(@Name,@Surname,@UserName,@Email,@Phone)
		Print 'User Added Successful'
	end
	else begin
		Print 'Warning! This User Is Registered. Please Continue With Another User Information.'
	end
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteCusomer]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteCusomer]
@Id int
as
begin
	declare @IsCustomer int
	set @IsCustomer=(select count(Id) from Customer where Id=@Id)

	if @IsCustomer>0 begin
		update Customer set IsDelete=1 where Id=@Id

		print 'User Deleted Successful'
	end
	else begin
		print 'Not Found User'
	end

	return @IsCustomer
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteLanguage]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteLanguage]
@Id int
as
begin
	declare  @IsLanguage int
	
	
	set @IsLanguage=(select count(Id) from [Language] where Id=@Id)

	if @IsLanguage>0 begin
		update [Language] set IsDelete=1 where Id=@Id

		print 'Language Deleted Successful'
	end
	else begin
		print 'Not Found Language'
	end

	return @IsLanguage
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteMovie]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteMovie]
@Id int
as
begin
	declare @IsMovie int
	set @IsMovie=(select count(Id) from Movie where Id=@Id)

	if @IsMovie>0 begin
		update Movie set IsDelete=1 where Id=@Id

		print 'Movie Deleted Successful'
	end
	else begin
		print 'Not Found Movie'
	end

	return @IsMovie
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteMSSL]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteMSSL]
@Id int
as
begin
	declare  @IsMSSL int
	
	
	set @IsMSSL=(select count(Id) from MSSL where Id=@Id)

	if @IsMSSL>0 begin
		update MSSL set IsDelete=1 where Id=@Id

		print 'MSSL Deleted Successful'
	end
	else begin
		print 'Not Found MSSL'
	end

	return @IsMSSL
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteSallon]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteSallon]
@Id int
as
begin
	declare  @IsSallon int
	
	
	set @IsSallon=(select count(Id) from Sallon where Id=@Id)

	if @IsSallon>0 begin
		update Sallon set IsDelete=1 where Id=@Id

		print 'Sallon Deleted Successful'
	end
	else begin
		print 'Not Found Movie Sallon'
	end

	return @IsSallon
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteSession]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteSession]
@Id int
as
begin
	declare  @IsSession int
	
	set @IsSession=(select count(Id) from MovieSession where Id=@Id)

	if @IsSession>0 begin
		update MovieSession set IsDelete=1 where Id=@Id

		print 'Movie Session Deleted Successful'
	end
	else begin
		print 'Not Found Movie Session'
	end


	return @IsSession
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteUser]
@Id int
as
begin
	declare @IsUser int
	set @IsUser=(select count(Id) from Users where Id=@Id)

	if @IsUser>0 begin
		update Users set IsDelete=1 where Id=@Id

		print 'User Deleted Successful'
	end
	else begin
		print 'Not Found User'
	end
end
GO
/****** Object:  StoredProcedure [dbo].[EditCustomer]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[EditCustomer]
@Id int,
@Name nvarchar(100),
@Surname nvarchar(100),
@Balance float,
@Email nvarchar(250),
@Phone nvarchar(14),
@CustomerTypeId int,
@Status bit
as
begin
	declare  @IsCustomer int
	set @IsCustomer=(Select count(Id) from Customer where Id=@Id)

	if @IsCustomer=1 begin
		update Customer set 
			[Name]=@Name,
			Surname=@Surname,
			Phone=@Phone,
			Email=@Email,
			CustomerTypeId=@CustomerTypeId,
			Balance=@Balance,
			IsStatus=@Status 
			where Id=@Id
		print 'Customer Edited Successful'
	end
	else begin
		print 'Not Found Customer'
	end

	return @IsCustomer
end
GO
/****** Object:  StoredProcedure [dbo].[EditLanguage]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[EditLanguage]
@Id int,
@Name nvarchar(100),
@Image nvarchar(500),
@Status bit
as
begin
	declare  @IsLanguage int
	
	set @IsLanguage=(select count(Id) from [Language] where Id=@Id)

	if @IsLanguage>0 begin
		update [Language] set IsStatus=@Status,Name=@Name, Image=@Image where Id=@Id

		print 'Language Deleted Successful'
	end
	else begin
		print 'Not Found Movie Language'
	end


	return @IsLanguage
end
GO
/****** Object:  StoredProcedure [dbo].[EditMovie]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[EditMovie]
@Id int,
@Name nvarchar(100),
@Description ntext,
@Director nvarchar(250),
@Image nvarchar(500),
@ReleaseDate date,
@MovieTypeId int,
@Status bit
as
begin
	declare  @IsMovie int
	set @IsMovie=(Select count(Id) from Movie where Id=@Id)

	if @IsMovie=1 begin
		update Movie set 
			[Name]=@Name,
			Director=@Director,
			[Description]=@Description,
			[Image]=@Image,
			MovieTypeId=@MovieTypeId,
			ReleaseDate=@ReleaseDate,
			IsStatus=@Status 
			where Id=@Id
		print 'Movie Edited Successful'
	end
	else begin
		print 'Not Found Movie'
	end

	return @IsMovie
end
GO
/****** Object:  StoredProcedure [dbo].[EditSallon]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[EditSallon]
@Id int,
@Name nvarchar(100),
@SeatCount int,
@Status bit
as
begin
	declare  @IsSallon int
	
	set @IsSallon=(select count(Id) from Sallon where Id=@Id)

	if @IsSallon>0 begin
		update Sallon set IsStatus=@Status,Name=@Name, SeatCount=@SeatCount where Id=@Id

		print 'Sallon Deleted Successful'
	end
	else begin
		print 'Not Found Movie Sallon'
	end


	return @IsSallon
end
GO
/****** Object:  StoredProcedure [dbo].[EditSession]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[EditSession]
@Id int,
@SessionTime time,
@Status bit
as
begin
	declare  @IsSession int
	
	set @IsSession=(select count(Id) from MovieSession where Id=@Id)

	if @IsSession>0 begin
		update MovieSession set IsStatus=@Status,SessionTime=@SessionTime where Id=@Id

		print 'Movie Session Deleted Successful'
	end
	else begin
		print 'Not Found Movie Session'
	end


	return @IsSession
end
GO
/****** Object:  StoredProcedure [dbo].[EditUser]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[EditUser]
@Id int,
@Name nvarchar(100),
@Surname nvarchar(100),
@Image nvarchar(500),
@Phone nvarchar(14),
@Status bit
as
begin
	declare  @IsUser int
	set @IsUser=(Select count(Id) from Users where Id=@Id)

	if @IsUser>0 begin
		update Users set 
			[Name]=@Name,
			Surname=@Surname,
			[Image]=@Image,
			Phone=@Phone,
			IsStatus=@Status 
			where Id=@Id
		print 'User Edited Successful'
	end
	else begin
		print 'Not Found User'
	end
end
GO
/****** Object:  StoredProcedure [dbo].[GetUsers]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetUsers]
as
begin
	select * from Users where IsDelete=0
end
GO
/****** Object:  StoredProcedure [dbo].[PasswordChange]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PasswordChange]
@Id int,
@OldPassword nvarchar(100),
@NewPassword nvarchar(100),
@NewPasswordRepeat nvarchar(100)
as
begin
	Declare @IsUser int
	set @IsUser=(select count(Id) from Users where Id=@Id)

	if @IsUser>0 begin
		Declare @PasswordControl nvarchar(100)
		select @PasswordControl=[Password] from Users where Id=@Id

		if @OldPassword=@PasswordControl begin
			if @NewPassword=@NewPasswordRepeat begin
				update Users set [Password]=@NewPassword where Id=@Id
				Print 'Passwors Changed Successful'
			end
			else begin
				Print 'New Passwords Do Not Match'
			end
		end
		else begin
			Print 'Old Password Incorrect'
		end

	end
	else begin
		print 'Not Found User'
	end

end
GO
/****** Object:  StoredProcedure [dbo].[SellTicket]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SellTicket]
@CustomerNumber nvarchar(100),
@MSSLId int,
@SeatNumber int
as
begin
	declare @IsCustomer int
	select @IsCustomer=Id from Customer where CustomerNumber=@CustomerNumber and IsStatus=1 and IsDelete=0

	declare @IsCustomerId int
	select @IsCustomerId=Count(Id) from Customer where CustomerNumber=@CustomerNumber and IsStatus=1 and IsDelete=0
	
	begin try
		--transection kullanımı
		begin tran sellTicletTran
			if @IsCustomerId=1 begin
			insert into TicketSold(MSSLId,CustomerId,SoldDateTime,IsStatus,SeatNumber,TicketQuantity)
			values(@MSSLId,@IsCustomer,GETDATE(),1,@SeatNumber,1)
			end
		--işlem başarlı ise kodlar çalıştırılacak
		commit tran sellTicletTran
		
	end try
	begin catch
		--işlem başarısız ise yapılan bütün işlemler geri alınacak
		rollback tran sellTicletTran
		set @IsCustomerId=2
	end catch

	return @IsCustomerId
end
GO
/****** Object:  StoredProcedure [dbo].[UserLogin]    Script Date: 16.12.2022 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UserLogin]
@UserName nvarchar(200),
@Password nvarchar(200)
as
begin
	Declare @LoginControl int
	Declare @LoginUserName nvarchar(250)
	select @LoginControl=Id,@LoginUserName=UserName from Users where UserName=@UserName and [Password]=@Password
	if @LoginControl>0 begin
		Print 'Success'
	end
	else begin
		Print 'Error'
		
	end
	return @LoginControl
end
GO
USE [master]
GO
ALTER DATABASE [CinelogyDb] SET  READ_WRITE 
GO
