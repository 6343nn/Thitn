USE [master]
GO
/****** Object:  Database [THITRACNGHIEM]    Script Date: 24/11/2021 10:47:01 AM ******/
CREATE DATABASE [THITRACNGHIEM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'THITRACNGHIEM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\THITRACNGHIEM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'THITRACNGHIEM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\THITRACNGHIEM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [THITRACNGHIEM] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [THITRACNGHIEM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [THITRACNGHIEM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET ARITHABORT OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [THITRACNGHIEM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [THITRACNGHIEM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [THITRACNGHIEM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [THITRACNGHIEM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [THITRACNGHIEM] SET  MULTI_USER 
GO
ALTER DATABASE [THITRACNGHIEM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [THITRACNGHIEM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [THITRACNGHIEM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [THITRACNGHIEM] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [THITRACNGHIEM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [THITRACNGHIEM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [THITRACNGHIEM] SET QUERY_STORE = OFF
GO
USE [THITRACNGHIEM]
GO
/****** Object:  Table [dbo].[BAILAM]    Script Date: 24/11/2021 10:47:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAILAM](
	[MaSV] [char](8) NULL,
	[MaCH] [varchar](10) NULL,
	[Traloi] [char](1) NULL,
	[Ngaythi] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAUHOI]    Script Date: 24/11/2021 10:47:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAUHOI](
	[MaCH] [varchar](10) NOT NULL,
	[MaM] [varchar](10) NULL,
	[Noidung] [nvarchar](2000) NULL,
	[Dapan] [char](1) NULL,
 CONSTRAINT [PK_CAUHOI] PRIMARY KEY CLUSTERED 
(
	[MaCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GV]    Script Date: 24/11/2021 10:47:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GV](
	[ID_gv] [varchar](10) NOT NULL,
	[Tengv] [nvarchar](30) NULL,
	[Pass] [varchar](10) NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[ID_gv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KETQUA]    Script Date: 24/11/2021 10:47:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KETQUA](
	[MaSV] [char](8) NOT NULL,
	[MaM] [varchar](10) NOT NULL,
	[Diem] [float] NULL,
	[Lanthi] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 24/11/2021 10:47:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[MaL] [varchar](10) NOT NULL,
	[TenL] [nvarchar](120) NULL,
	[MaM] [varchar](10) NOT NULL,
 CONSTRAINT [PK_LOP_1] PRIMARY KEY CLUSTERED 
(
	[MaL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOPSV]    Script Date: 24/11/2021 10:47:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOPSV](
	[MaSV] [char](8) NULL,
	[MaL] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONTHI]    Script Date: 24/11/2021 10:47:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONTHI](
	[MaM] [varchar](10) NOT NULL,
	[Tenmon] [nvarchar](50) NULL,
	[Socau] [int] NOT NULL,
	[TGlambai] [int] NULL,
	[Thoigianthi] [date] NULL,
 CONSTRAINT [PK_MONTHI] PRIMARY KEY CLUSTERED 
(
	[MaM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SV]    Script Date: 24/11/2021 10:47:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SV](
	[MaSV] [char](8) NOT NULL,
	[Hodem] [nvarchar](30) NULL,
	[Ten] [nchar](15) NULL,
	[Ngaysinh] [date] NULL,
	[Matkhau] [varchar](50) NULL,
 CONSTRAINT [PK_SV_1] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T64', N'B', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T79', N'B', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T76', N'A', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T11', N'D', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T14', N'B', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T31', N'A', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T75', N'C', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T45', N'B', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T19', N'C', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T62', N'C', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T24', N'C', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T37', N'C', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T48', N'A', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T36', N'A', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T90', N'A', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T02', N'B', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T63', N'D', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T35', N'B', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T10', N'B', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T21', N'A', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T44', N' ', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T12', N' ', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T15', N' ', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T70', N' ', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T72', N'f', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T50', N'f', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T47', N'f', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T26', N'f', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T09', N'f', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T67', N'f', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T52', N'f', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T53', N'f', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T29', N'f', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T05', N'f', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T16', N'f', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T65', N'f', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T51', N'f', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T46', N'f', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T27', N'f', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T34', N'f', CAST(N'2021-11-22' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA41', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA68', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA11', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T79', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T45', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T21', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T46', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T09', N'A', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T49', N'D', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T07', N'A', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T18', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T58', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T42', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T39', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T29', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T15', N'A', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T19', N'D', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T03', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T48', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T40', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T54', N'D', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T71', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T80', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T74', N' ', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T69', N' ', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T68', N' ', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T72', N' ', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T55', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T23', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T56', N'D', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T67', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T14', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T47', N'D', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T11', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T20', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T30', N'A', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T04', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T05', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T22', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T02', N'A', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T24', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T06', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T70', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T59', N'A', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T32', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T90', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T42', N'A', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T08', N'D', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T23', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T54', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T36', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T50', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T17', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T51', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T12', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T74', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T80', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T21', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T72', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T05', N'f', CAST(N'2021-11-23' AS Date))
GO
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T70', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T58', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T61', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T76', N' ', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T06', N' ', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T03', N' ', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T66', N' ', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T68', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T46', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T45', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T13', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T67', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T77', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T57', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T25', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T53', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T39', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T26', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T10', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T60', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T31', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T52', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T79', N'f', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T45', N'C', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T80', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T55', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T19', N'D', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T09', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T78', N'C', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T12', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T47', N'D', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T59', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T64', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T60', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T14', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T76', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T34', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T75', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T56', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T33', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T44', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T38', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T50', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T03', N' ', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T13', N' ', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T30', N' ', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T62', N' ', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T40', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T31', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T71', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T10', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T61', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T15', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T35', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T73', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T21', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T36', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T54', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T23', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T22', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T43', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T69', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T66', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA04', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA47', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA05', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA79', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA42', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA33', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA77', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA45', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA73', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA20', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA66', N'A', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA38', N'C', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA03', N'A', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA54', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA58', N'A', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA74', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA75', N'A', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA06', N' ', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA12', N' ', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA35', N' ', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA65', N' ', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11191057', N'TA25', N'B', CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T22', N'D', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T51', N'B', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T39', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T28', N'D', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T12', N'A', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T47', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T68', N'D', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T32', N'C', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T49', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T07', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T70', N'f', CAST(N'2021-11-24' AS Date))
GO
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T33', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T80', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T08', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T56', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T15', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T43', N' ', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T67', N' ', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T02', N' ', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T75', N' ', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T65', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T79', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T09', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T40', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T18', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T26', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T10', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T55', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T23', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T25', N'B', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T77', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T53', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T17', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T30', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T05', N'f', CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BAILAM] ([MaSV], [MaCH], [Traloi], [Ngaythi]) VALUES (N'11190658', N'T72', N'f', CAST(N'2021-11-24' AS Date))
GO
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T02', N'Toan', N'Tinh 5+6 =?   
A.  10     
B.   11   
C.   14     
D.   9', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T03', N'Toan', N'Giá trị của biểu thức 8 x a với =100 là:        
A.     8100 
B.     800 
C.     1008 
D.     1800', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T04', N'Toan', N'Tinh 7+7 =?   
A.     10     
B.     11    
C.     14     
D.     9', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T05', N'Toan', N'2+2 = ?   
A.     4         
B.     5               
C.     6           
D.     7', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T06', N'Toan', N'Giá trị của biểu thức: 876 – m với m = 432 là:
A.    444 
B.    434 
C.    424 
D.    414', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T07', N'Toan', N'Giá trị của biểu thức 8 x a với =1000 là:    
A.      8000 
B.      800 
C.      1008 
D.      1800', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T08', N'Toan', N'Tính chu vi hình vuông cạnh a với a = 9 cm            
A.      18 cm 
B.       81 cm 
C.       36 cm 
D.      63 cm', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T09', N'Toan', N'Số 870549 đọc là:             
A. Tám mươi bảy nghìn năm trăm bốn mươi chín.    
B. Tám trăm bảy mươi nghìn bốn trăm năm mươi chín.    C. Tám trăm linh bảy nghìn năm trăm bốn mươi chín.  
 D. Tám trăm bảy mươi nghìn năm trăm bốn mươi chín.', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T10', N'Toan', N'Số bé nhất trong các số sau: 785432; 784532; 785342; 785324 là:     
A.       785432 
B.       784532 
C.       785342       
D.       785234', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T11', N'Toan', N'Các số ở dòng nào được viết theo thứ tự từ bé đến lớn.    A.   567899; 567898; 567897; 567896.
B.    865742; 865842; 865942; 865043.
C.   978653; 979653; 970653; 980653.
D.   754219; 764219; 774219; 775219.', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T12', N'Toan', N'Số gồm 6 trăm nghìn, 6 trăm, 4 chục và 3 đơn vị viết là:   A.       664300   
B.       606430 
C.       600643
D.       600000', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T13', N'Toan', N'Chữ số 6 trong số 986738 thuộc hàng nào? lớp nào?
A. Hàng nghìn, lớp nghìn.
B. Hàng trăm, lớp nghìn 
C. Hàng chục nghìn, lớp nghìn.. 
D. Hàng trăm, lớp đơn vị.', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T14', N'Toan', N'Kết quả của phép trừ: 865847 – 376758 = ?  
A.  488089 
B.  489089 
C.   479089 
D.  489189.', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T15', N'Toan', N'Giá trị của chữ số 5 trong số sau: 765430.        
A.  50000     
B.  500000    
C.  5000     
D.  500', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T16', N'Toan', N'Số có 6 chữ số lớn nhất là:       
A.  999999 
B.  666666 
C.  777777   
D.  888888', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T17', N'Toan', N'Số bảy trăm triệu có bao nhiêu chữ số 0:                  
A.  7 
B.  10       
C.  9    
D.  8', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T18', N'Toan', N'Đọc số sau: 325600608          
A. Ba trăm hai mươi lăm triệu sáu mươi nghìn sáu trăm linh tám.          
B. Ba trăm hai mươi lăm triệu sáu trăm nghìn sáu trăm linh tám.       
C. Ba trăm hai mươi lăm triệu sáu nghìn sáu trăm linh tám.          
D. Ba trăm hai mươi lăm triệu sáu trăm nghìn sáu trăm tám mươi.', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T19', N'Toan', N'Giá trị của chữ số 8 trong số sau: 45873246.        
A.  8 000 
B.  80 000 
C.  800 000 
D.   8 000 000', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T20', N'Toan', N'Số tự nhiên liền số: 3004 là:        
A.  3003. 
B.  3033 
C.  3005 
D.  3014', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T21', N'Toan', N'Số tự nhiên liền số: 3004 là:          
A.  3003. 
B.  3033 
C.  3005 
D.  3014', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T22', N'Toan', N' Số tự nhiên liền trứơc số 10001 là:         
A.  10011. 
B.  10002 
C.   10021 
D.  10000', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T23', N'Toan', N' Chọn số nào để được số tự nhiên liên tiếp 99998;........100000.       
A.  99997 
B.  9999 
C.  99999 
D. 100 001', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T24', N'Toan', N'Tìm số tròn chục x, biết: 58 < x < 70      
A.  40 
B.  50 
C.  60 
D.  69', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T25', N'Toan', N'Một trại nuôi bò sữa lần đầu thu được m lít sữa, lần thứ hai thu đượ n lít sữa. Hỏi cả hai lần thu được bao nhiêu lít sũa? Biết m = 897 ; n = 754.           
A.  1551 lít 
B.  1651 lít 
C.  1615 lít 
D.  1515 lít', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T26', N'Toan', N'Một cửa hàng bán gạo ngày thứ nhất bán được m kg gạo, ngày thứ hai bán được n kg gạo, ngày thứ ba bán được p kg gạo. Hỏi cả ba ngày của hàng bán được bao nhiêu ki- lô-gam gạo? Biết m = 587 ; n = 450 ; p = 500.    A.  1537 kg 
B.   1437 kg 
C.   1527 kg 
D.   1427 kg.', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T27', N'Toan', N'Tìm hai số khi biết tổng và hiệu của chúng là: 42 và 18.     A.   24 và 12 
 B.   6 và 12 
 C.   12 và 30 
 D.   24 và 6.', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T28', N'Toan', N'Số bốn mươi lăm nghìn ba trăm linh tám được viết là:        A.  45307 
 B.  45308 
 C.  45380 
 D.  45038', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T29', N'Toan', N'Bố hơn con 36 tuổi và tuổi bố gấp 7 lần tuổi con. Tính tuổi bố, tuổi con?        
A.   36 tuổi và 6 tuổi. 
C.   36 tuổi và 7 tuổi.
B.   42 tuổi và 6 tuổi. 
D.   42 tuổi và 7 tuổi.', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T30', N'Toan', N' Giá trị của biểu thức 8 x a với =111 là:           
A. 8100 
B. 800 
C. 888 
D. 1800', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T31', N'Toan', N'Giá trị của biểu thức: 876 – m với m = 400 là:      
A.  444 
B.  476
C.  424 
D.  414', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T32', N'Toan', N'Mỗi bao gạo nặng 3 tạ .Một ô tô chở 9 tấn gạo thì chở được bao nhiêu bao như vậy?             
A.  90 bao 
B.  900 bao 
C.  30 bao 
D. 270 bao', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T33', N'Toan', N'Giá trị của biểu thức 8 x a với =1111 là:         
A. 8100 
B. 8888
C. 1008 
D. 1800', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T34', N'Toan', N' Một cửa hàng trong hai ngày bán được 620 kg gạo. Hỏi trong 7 ngày cửa hàng bán được bao nhiêu ki-lô-gam gạo? (Biết rằng số gạo mỗi ngày bán được là như nhau).   A.  4340 kg 
 B.   434 kg 
 C.   217 kg 
 D.   2170 kg', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T35', N'Toan', N'Giá trị của biểu thức 8 x a với =100 là:         
A. 8100 
B. 800 
C. 1008 
D. 1800', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T36', N'Toan', N'Giá trị của biểu thức: 876 – m với m = 430 là:      
A.  446 
B.  434 
C.  424 
D.  414', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T37', N'Toan', N'Trung bình cộng của các số: 43 ; 166 ; 151 ; là:      
A.  360 
B.  180 
C.   120 
D.  12', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T38', N'Toan', N'Số trung bình cộng của hai số bằng 40. Biết rằng một trong hai số đó bằng 58. Tìm số kia?         
A.  98 
B.  18 
C.   49 
D.  22', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T39', N'Toan', N'Trung bình cộng của các số: 43 ; 166 ; 151 ; là:            
A.  360 
B.  180 
C.   120 
D.  12', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T40', N'Toan', N' Trung bình cộng của các số: 43 ; 166 ; 151 ; là:          
A.  360 
B.  180 
C.  120 
D.  12', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T41', N'Toan', N' Số trung bình cộng của hai số bằng 14. Biết một trong hai số đó bằng 17. Tìm số kia?        
A.  3 
B.  21 
C.  11 
D.  31', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T42', N'Toan', N' Số trung bình cộng của hai số bằng 40. Biết rằng một trong hai số đó bằng 58. Tìm số kia?     
A.  98 
B.  18 
C.  49 
D.  22', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T43', N'Toan', N'Một đội đắp đường, một ngày đắp được 150 m. Ngày thứ hai đắp được 100 m. ngày thứ ba đắp được gấp hai lần ngày thứ hai. Hỏi trung bình mỗi ngày đội đó đắp được bao nhiêu mét đường?         
A.  15 m 
B.   150 m 
C.   250 m 
D.  500m', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T44', N'Toan', N'Số đo chiều cao của 5 học sinh lớp Năm lần lượt là: 148 cm; 146 cm ; 144 cm ; 142 cm; 140 cm. Hỏi trung bình số đo chiều cao của mỗi cm là bao nhiêu xăng-ti-mét?         A.  144 cm 
B.  142 cm 
C.   145 cm 
D. 146 cm', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T45', N'Toan', N'Số bốn mươi lăm nghìn ba trăm linh tám được viết là:        A.  45307 
 B.  45308 
 C.   45380 
 D.  45038', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T46', N'Toan', N' Kết quả của phép cộng: 697583 +245736 =?     
A.  843319 
B.   942319 
C.   943219 
D.   943319', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T47', N'Toan', N' Kết quả của phép cộng: 697583 +245736 =?          A.  843319 B.  942319 C.   943219 D.  943319', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T48', N'Toan', N' Tìm x biết: 549 + x = 976.         
A.   x = 427 
B.   x = 327 
C.   x = 437 
D.   x = 337', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T49', N'Toan', N'Một phân xưởng lắp xe đạp, sáu tháng đầu lắp được 36900 xe đạp, sáu tháng cuối năm lắp được nhiều hơn sáu tháng đầu năm 6900 xe đạp. Hỏi cả năm phân xưởng lắp được bao nhiêu xe đạp?          
A. 43800 xe đạp.    
C.  80700 xe đạp     
B.  70700 xe đạp  
D.  50700 xe đạp', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T50', N'Toan', N'Kết quả của phép trừ: 865847 – 376758 = ?          
A.  488089 
B.  489089 
C.  479089 
D.  489189.', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T51', N'Toan', N'Kết quả của phép trừ: 865847 – 376758 = ?      
A.  488089 
B.  489089 
C.  479089 
D.  489189.', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T52', N'Toan', N'Năm nay học sinh của một trường A trồng được 325900 cây. Năm ngoái trồng được nhiều hơn năm nay 91700 cây. Hỏi cả hai năm học sinh trường A trồng được bao nhiêu cây?          
A.   417600 cây 
B.   509300 cây 
C.   733500 cây 
D.   743500 cây.', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T53', N'Toan', N'Tính giá trị của m x n nếu m = 34 và n = 8.          
A.  42 
B.  262 
C.  282 
D.  272.', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T54', N'Toan', N'Tính: (m + n) x p biết m = 30 ; m = 40 ; p = 8 .              
A.  350 
B.  78 
C.  560 
D.  56', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T55', N'Toan', N'Tính giá trị của m x n nếu m = 34 và n = 8.               
A.  42 
B.  262 
C.  282 
D.  272.', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T56', N'Toan', N' Chọn số thích hợp: 563 + 856 = 856 + ......?            
A.  856 
B.  563 
C.  1419 
D.  293', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T57', N'Toan', N'Tính: a x b x c. Nếu a = 12 ; b = 4 ; c = 2.             
A.  96 
B.  50 
C.  72 
D.  32.', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T58', N'Toan', N' Tính: (m + n) x p biết m = 30 ; m = 40 ; p = 8 .            
A.  350 
B.  78 
C.  560 
D.  56', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T59', N'Toan', N'Tính 34+34 =?    
A.67    
B.68    
C.69     
D.70', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T60', N'Toan', N' Một trại nuôi bò sữa lần đầu thu được m lít sữa, lần thứ hai thu đượ n lít sữa. Hỏi cả hai lần thu được bao nhiêu lít sũa? Biết m = 897 ; n = 754.              
A.  1551 lít 
B.  1651 lít 
C.  1615 lít 
D.  1515 lít.', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T61', N'Toan', N' Một cửa hàng bán gạo ngày thứ nhất bán được m kg gạo, ngày thứ hai bán được n kg gạo, ngày thứ ba bán được p kg gạo. Hỏi cả ba ngày của hàng bán được bao nhiêu ki- lô-gam gạo? Biết m = 587 ; n = 450 ; p = 500.    A.   1537 kg 
B.   1437 kg 
C.   1527 kg 
D.   1427 kg.', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T62', N'Toan', N' Tìm hai số khi biết tổng và hiệu của chúng là: 42 và 18.     A.   24 và 12
  B.    6 và 12 
  C.   12 và 30 
  D.    24 và 6.', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T63', N'Toan', N'Hai đội công nhân cùng đào một con đường dài 900 m, đội thứ nhất đào ít hơn đội thứ hai 164 m. Hỏi mỗi đội đào được bao nhiêu mét đường?          
A.   204 m và 368 m 
C.   386 m và 523 m         
B.   532 m và 696 m      
D.   368 mvà 532 m', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T64', N'Toan', N'Tìm hai số khi biết tổng và hiệu của chúng là: 1200 và 120.                
A.   660 và 780       
C.   420 và 540            
B.   540 và 660        
D.   540 và 606', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T65', N'Toan', N'Tuổi chị và tuổi em cộng lại được 45 tuổi. chị hơn em 11 tuổi. Hỏi chị bao nhiêu tuổi, em bao nhiêu tuổi?      
A. 28 tuổi và 17 tuổi         
C. 17 tuổi và 6 tuổi         
B. 39 tuổi và 28 tuổi     
D. 39 tuổi và 17 tuổi', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T66', N'Toan', N'Tính 50+50 = ?         
A.100 
B.101   
C.99    
D.105', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T67', N'Toan', N'Thu hoạch ở 2 thửa ruộng được 6 tấn 4 tạ thóc. Thu hoạch ở thửa ruộng thứ nhất được nhiều hơn thửa ruộng thứ hai là 10 tạ thóc. Hỏi thu hoạch ở mỗi thửa ruộng được bao nhiêu ki-lô-gam thóc?     
A.   27kg và 37kg       
C.   270kg và 370kg          
B.   2700kg và 3700kg          
D.   4700kg và 3700k', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T68', N'Toan', N'Tìm hai số khi biết tổng và hiệu của chúng là: 485 và 45.  A.   175 và 220.       
 B.   265 và 310       
 C.   175 và 265         
 D.   220 và 265', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T69', N'Toan', N' Người thợ may lấy ra một tấm vải dài để cắt may 4 bộ quần áo, mỗi áo hết 300 cm và mỗi quần hết 325 cm. Sau khi cắt xong thì tấm vải còn lại dài 2 m. Hỏi tấm vải ban đầu vải dài bao nhiêu cen-ti-mét?             
A.  2502cm          
B.  2520cm         
C.  4500cm       
D.  2700cm', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T70', N'Toan', N'Tìm x biết: x : 200 = 3460         
A.   x = 69200       
B.   x = 692000        
C.   x = 6920      
D.   x = 692', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T71', N'Toan', N' Một kho lương thực, đợt 1 nhập 40 bao gạo, mỗi bao nặng 70 kg. Đơt hai nhập 65 bao mỗi bao nặng 50 kg. Hỏi cả hai đợt kho nhập bao nhiêu ki-lô-gam?       
A.  3530     
B.   3125     
C.   5050      
 D.  6050', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T72', N'Toan', N'Tính 45+55=?     
A.   95    
B.   100 
C.   105   
D.    90', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T73', N'Toan', N'Tìm hai số khi biết tổng và hiệu của chúng là: 485 và 45.  A.   175 và 220.        
 B.   265 và 310       
 C.   175 và 265         
 D. 220 và 265', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T74', N'Toan', N'Tìm hai số khi biết tổng và hiệu của chúng là: 1200 và 120.                
A.   660 và 780       
C.   420 và 540             
B.   540 và 660        
D.   540 và 606', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T75', N'Toan', N' Số thích hợp điền vào chỗ chấm:       85 x 6 – 85 x 3 = (6-3) x ………?          
A.  3     
B.  6     
C.  85    
 D.  255', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T76', N'Toan', N'Tìm x biết: x : 98 = 76            
A.   x = 6764. 
B.   x = 1157 
C.   x = 7764 
D.   x = 6774', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T77', N'Toan', N'Một quyển vở có 64 trang giấy. Hỏi 11 quyển vở cùng loại có bao nhiêu trang giấy?               
A.  110 trang. 
B.  704 trang. 
C.  740 trang. 
D.  604 trang.', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T78', N'Toan', N'Kết quả phép nhân: 608 x 467 =?           
A.   284936 
B.   55056 
C.   283936 
D.   65056', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T79', N'Toan', N'Tính 150 + 150 = ?       
A.    290     
B.    300      
C.    305      
D.    360', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T80', N'Toan', N' Kết quả của phép chia: 97875 : 9 = ?            
A.  10875 
B.   1875 
C.   18075 
D.   1785', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'T90', N'Toan', N'Tính: 5 + 12 = ?
A. 17
B. 18
C. 19
D.20', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA01', N'Anh', N'They are ..... tennis      A. play B. Plays C. Playing D. to playing', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA02', N'Anh', N'What  do you do      your free time?                       A. in B . at C. to D. on', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA03', N'Anh', N' How     does she read ?A. many B. often C. long D. far', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA04', N'Anh', N' We go to the zoo       a month A. one B. one time C . once D. once time', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA05', N'Anh', N'My mother         jogging every morningA. does B. is C. goes D. plays', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA06', N'Anh', N' he like spotrs ?A. does B. do C is D. why', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA07', N'Anh', N'What about        by bikeA. go B. to  go C . To going D. going', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA08', N'Anh', N'are you going to do tonight ?A. what B. who C. which D. when', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA09', N'Anh', N'Mai        cool weatherA. like B. likes C. liking D. to like', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA10', N'Anh', N'Which sports does he play ?A. He plays table tennis B. he is playing table tennis C. He is going to play table tennis D. yes , he does', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA11', N'Anh', N'I am going to  the CitadelA . come B . stay C. look D. visit', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA12', N'Anh', N'How many      are there in a week ?A. hours B . weeks C. days D. years', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA13', N'Anh', N'What     she like? She’d like a glass of milk.A. is B. would C. do D. does', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA14', N'Anh', N'My sister doesn’t like fish.She…….fruit,chocolate and vegetables.A. like B. is like C. likes D. would', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA15', N'Anh', N' Is there anything to drink? I’m …... .A. hungry B. tired C. thirsty D. cold', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA16', N'Anh', N'What do you …... in your free time? I play soccer.A. do B. go C. like D. are', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA17', N'Anh', N'How …...  do you  brush your teeth? Twice a day.A. many B. much C. often D. old', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA18', N'Anh', N'They are…..football, now.A. play B. playing C. watch D. watches', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA19', N'Anh', N' .…..sports does  your brother play?  Badminton and swimming A . Who B. What C. How D. Which', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA20', N'Anh', N'What’s the weather like in the….. ? It’s hot.A. spring B. winter C. summer D. Fall', N'A')
GO
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA21', N'Anh', N'…...  sports do you play?A. What’s B. Which C. How D. Where', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA22', N'Anh', N'We need a tent to go  …..     A. fishing B. camping C. swimming D. jogging', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA23', N'Anh', N'…... weather do you like?A. What B. What’s C. When D. What time', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA24', N'Anh', N'I’m going to ….. my friends on Sundays  A. visits B. visit C. visiting D. to visit', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA25', N'Anh', N'Nam does…….  home word in the evening.   A. her b. his c. my d. your', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA26', N'Anh', N'Mr Ba travels to work ….. Motobike    A. at b. for c. in d. by', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA27', N'Anh', N'Lan has beautiful teeth. Her teeth are…..  .      A. not white b. brown c. white d. black', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA28', N'Anh', N'His father is not  but he is …... .         A. tall, tall b. fat, fat c. short, tall D.short, short', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA29', N'Anh', N'…... is the weather like?      A. how b. what c. who d. how much', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA30', N'Anh', N'Lan is in grade 6 and she ….. at Hung Vuong school now.        A. learns B. to learn C. learning D. is learning', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA31', N'Anh', N'Mr Phong ….. his truck to our farm everydayA. drive B. driving C. drives D. to drive', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA32', N'Anh', N'You….. can  here         A. parking B. to park C. parks D. are parking', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA33', N'Anh', N'Mary (not work…....  today because it’s Sunday           A. isn’t work B. don’t work C. doesn’t work D. don’t working', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA34', N'Anh', N'How …. she …. to school everyday?            A. do she go B. is she go C. does she goes D. does she go', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA35', N'Anh', N'There are four…..  in a year in our country.      A. season B. seasons C. reason D. reasons', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA36', N'Anh', N' There …... many flowers in this summer.     A. is B. are C. am D. be', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA37', N'Anh', N'Hoa goes to school …... bike.         A. by B. on C. at D. with', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA38', N'Anh', N' I lives ….. Le Loi street.         A. on B. in C. at D. around', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA39', N'Anh', N' How often ….. she go to the library?        A. is B. does C. do D. are', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA40', N'Anh', N'It’s cool in the ……. .        A. spring B. summer C. fall D. winter', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA41', N'Anh', N' What …... do you want? – Green.          A. size B. shirt C. kind D. color', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA42', N'Anh', N' How long are they going to stay there? …...  a week.           A. for B. at C. in D. on', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA43', N'Anh', N' I sometimes fly …... kites in the summer.           A. he B. his C. their D. my', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA44', N'Anh', N' He usually goes …... in the winter.            A. to jog B. jogging C. joging D. jogs', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA45', N'Anh', N'What’s the …... like in the fall?          A. seasons B.weather C. sport D. free time', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA46', N'Anh', N'It’s usually ….. in the summer.          A. cold B. cool C. hot D. warm', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA47', N'Anh', N'Which sports do you ……. ?         A. play B. have C. do D. read', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA48', N'Anh', N' What about ……. by bike?         A. go B. goes C. to go D. going', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA49', N'Anh', N'Hoa and Lan ……. their grandfather and gradmother tomorrow?         A. sees B. is going to see C.see D. are going to see', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA50', N'Anh', N'Ho Chi Minh City is …... than the capital.         A. big B. small C. bigger D. the biggest ', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA51', N'Anh', N'Ho Chi Minh City is …... than the capital.         A. big B. small C. bigger D. the biggest ', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA52', N'Anh', N'  ……. there any newspapers on the desk ?A. Is B. Do C. Are D. Have', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA53', N'Anh', N' He ……. brown eyes .             A. is B. has C. have D . don’t have', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA54', N'Anh', N' Peter would ……. some fish .          A. like B. to like C. likes D. liked', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA55', N'Anh', N' Would you like ……. chicken ?          A. any B. some C. an D. to', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA56', N'Anh', N' He wants …... big apple .           A. a B. an C. any D. some', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA57', N'Anh', N'There ….. two glasses of milk on the table .         A. are B. is C. have D. some', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA58', N'Anh', N' They can ……. English songs .         A. to sing B. singing C. sing D. sings', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA59', N'Anh', N'  …….. your brother like ice – cream ? - Yes , he does .           A.Do  B. does C would D. Is ', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA60', N'Anh', N'…….  is that desk ? _ Brown .         A. What B. How much C. How D. What colour', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA61', N'Anh', N' Can I ….. you ? – Yes , please ! I’d like some oranges .        A. have B. help C. play D. do', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA62', N'Anh', N' How …... milk do you want ?          A. many B. old C. much D. any', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA63', N'Anh', N' ……. there any tea ?          A. Are B. Is C. Do D. Does', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA64', N'Anh', N' Nam and Minh ……. volleyball at the moment .         A. are playing B is playing C. play D. plays', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA65', N'Anh', N' My father ……. in the morning .     A. isn’t jog B. doesn’t jogging C. doesn’t jog D. not jog', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA66', N'Anh', N'……. you like beef ? – No , thank .          A. Do B. How much C. Would D. Are', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA67', N'Anh', N' She ……... aerobics at the moment .          A. doing B. is doing C. does D. do', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA68', N'Anh', N' I like……. . I have a rope .          A. swimming B. skipping C. jogging D. playing', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA69', N'Anh', N' Susan …….. to music every night .          A. listen B. listening C. listens D. is listening', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA70', N'Anh', N' How often do you go to the zoo ?  - ……. a month .           A. two B. one C. three D. Twice', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA71', N'Anh', N' What do you do ……... your free time ?           A. in B.at C. for D. on', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA72', N'Anh', N' John …….. fishing on Sundays .            A. goes B. going C is going D. go', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA73', N'Anh', N' ……..  does your grandfather go jogging ? - in the afternoon .           A. When B. What time C. How often D. How', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA74', N'Anh', N'…..... do you go to the movies ?– I sometimes go to the movies .          A. How often B. When C. How D. What', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA75', N'Anh', N' Thomas ……. walking .             A. goes B. likes C. plays D.takes', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA76', N'Anh', N' Hoa’s family lives …….. a small city .              A. at B. on C. in D. of', N'A')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA77', N'Anh', N' Would you like ……. lemonade ?            A. some B. any C. many D a', N'C')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA78', N'Anh', N' There aren’t ……. eggs in the box .           A. some B. an C. any D. much ', N'B')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA79', N'Anh', N'……... is that bar of soap ? – It’s 12,300 dong .           A. What B. Where C How many D. How much', N'D')
INSERT [dbo].[CAUHOI] ([MaCH], [MaM], [Noidung], [Dapan]) VALUES (N'TA80', N'Anh', N'……. she …….. in the gardent every afternoon .          A. Is _ skipping B. Is – skips C. Does _ skip D. Do _ skip', N'B')
GO
INSERT [dbo].[GV] ([ID_gv], [Tengv], [Pass]) VALUES (N'admin', N'admin', N'admin')
INSERT [dbo].[GV] ([ID_gv], [Tengv], [Pass]) VALUES (N'GV', N'Tạ Thị Uyên', N'1')
GO
INSERT [dbo].[KETQUA] ([MaSV], [MaM], [Diem], [Lanthi]) VALUES (N'11190658', N'Toan', 1, 1)
INSERT [dbo].[KETQUA] ([MaSV], [MaM], [Diem], [Lanthi]) VALUES (N'11190658', N'Toan', 2, 2)
INSERT [dbo].[KETQUA] ([MaSV], [MaM], [Diem], [Lanthi]) VALUES (N'11190658', N'Toan', 0, 3)
GO
INSERT [dbo].[LOP] ([MaL], [TenL], [MaM]) VALUES (N'ENL1', N'Tiếng anh 1', N'Anh')
INSERT [dbo].[LOP] ([MaL], [TenL], [MaM]) VALUES (N'ENL2', N'Tiếng anh 2', N'Anh')
INSERT [dbo].[LOP] ([MaL], [TenL], [MaM]) VALUES (N'ENL3', N'Tiếng anh 3', N'Anh')
INSERT [dbo].[LOP] ([MaL], [TenL], [MaM]) VALUES (N'ENL4', N'Tiếng anh 4', N'Anh')
INSERT [dbo].[LOP] ([MaL], [TenL], [MaM]) VALUES (N'ENL5', N'Tiếng anh 5', N'Anh')
INSERT [dbo].[LOP] ([MaL], [TenL], [MaM]) VALUES (N'ENL6', N'Tiếng anh 6', N'Anh')
INSERT [dbo].[LOP] ([MaL], [TenL], [MaM]) VALUES (N'TCC1', N'Toán cao cấp 2', N'Toan')
INSERT [dbo].[LOP] ([MaL], [TenL], [MaM]) VALUES (N'TCC2', N'Toán cao cấp 1', N'Toan')
INSERT [dbo].[LOP] ([MaL], [TenL], [MaM]) VALUES (N'TCC3', N'Toán cao cấp 3', N'Toan')
INSERT [dbo].[LOP] ([MaL], [TenL], [MaM]) VALUES (N'TCC4', N'Toán cao cấp 4', N'Toan')
GO
INSERT [dbo].[LOPSV] ([MaSV], [MaL]) VALUES (N'11190116', N'ENL3')
INSERT [dbo].[LOPSV] ([MaSV], [MaL]) VALUES (N'11190116', N'TCC1')
INSERT [dbo].[LOPSV] ([MaSV], [MaL]) VALUES (N'11190220', N'ENL1')
INSERT [dbo].[LOPSV] ([MaSV], [MaL]) VALUES (N'11190281', N'ENL2')
INSERT [dbo].[LOPSV] ([MaSV], [MaL]) VALUES (N'11190281', N'TCC2')
INSERT [dbo].[LOPSV] ([MaSV], [MaL]) VALUES (N'11190347', N'TCC1')
INSERT [dbo].[LOPSV] ([MaSV], [MaL]) VALUES (N'11190347', N'ENL6')
INSERT [dbo].[LOPSV] ([MaSV], [MaL]) VALUES (N'11190488', N'TCC2')
INSERT [dbo].[LOPSV] ([MaSV], [MaL]) VALUES (N'11190576', N'ENL3')
INSERT [dbo].[LOPSV] ([MaSV], [MaL]) VALUES (N'11190576', N'TCC1')
INSERT [dbo].[LOPSV] ([MaSV], [MaL]) VALUES (N'11190647', N'TCC2')
INSERT [dbo].[LOPSV] ([MaSV], [MaL]) VALUES (N'11190650', N'TCC1')
INSERT [dbo].[LOPSV] ([MaSV], [MaL]) VALUES (N'11190658', N'ENL2')
INSERT [dbo].[LOPSV] ([MaSV], [MaL]) VALUES (N'11191057', N'ENL1')
INSERT [dbo].[LOPSV] ([MaSV], [MaL]) VALUES (N'11191057', N'TCC1')
GO
INSERT [dbo].[MONTHI] ([MaM], [Tenmon], [Socau], [TGlambai], [Thoigianthi]) VALUES (N'Anh', N'Tiếng Anh', 25, 15, CAST(N'2021-11-22' AS Date))
INSERT [dbo].[MONTHI] ([MaM], [Tenmon], [Socau], [TGlambai], [Thoigianthi]) VALUES (N'Toan', N'Toán', 40, 60, CAST(N'2021-11-24' AS Date))
GO
INSERT [dbo].[SV] ([MaSV], [Hodem], [Ten], [Ngaysinh], [Matkhau]) VALUES (N'11190116', N'Đỗ Thị Hoàng', N' Anh           ', CAST(N'2001-11-25' AS Date), N'111111
')
INSERT [dbo].[SV] ([MaSV], [Hodem], [Ten], [Ngaysinh], [Matkhau]) VALUES (N'11190220', N'Lưu Quý Huệ', N' Anh           ', CAST(N'2001-03-10' AS Date), N'111111
')
INSERT [dbo].[SV] ([MaSV], [Hodem], [Ten], [Ngaysinh], [Matkhau]) VALUES (N'11190281', N'Nguyễn Mỹ ', N'Anh            ', CAST(N'2001-02-13' AS Date), N'111111
')
INSERT [dbo].[SV] ([MaSV], [Hodem], [Ten], [Ngaysinh], [Matkhau]) VALUES (N'11190347', N'Nguyễn Quỳnh ', N'Anh            ', CAST(N'2001-11-12' AS Date), N'111111
')
INSERT [dbo].[SV] ([MaSV], [Hodem], [Ten], [Ngaysinh], [Matkhau]) VALUES (N'11190488', N'Phạm Thị Lan ', N'Anh            ', CAST(N'2001-12-10' AS Date), N'111111
')
INSERT [dbo].[SV] ([MaSV], [Hodem], [Ten], [Ngaysinh], [Matkhau]) VALUES (N'11190576', N'Trịnh Quỳnh', N' Anh           ', CAST(N'2001-09-30' AS Date), N'111111')
INSERT [dbo].[SV] ([MaSV], [Hodem], [Ten], [Ngaysinh], [Matkhau]) VALUES (N'11190647', N'Lê Ngọc ', N'Ánh            ', CAST(N'2001-11-01' AS Date), N'111111')
INSERT [dbo].[SV] ([MaSV], [Hodem], [Ten], [Ngaysinh], [Matkhau]) VALUES (N'11190650', N'Nguyễn Thị Kim ', N'Chi            ', CAST(N'2001-08-17' AS Date), N'111111')
INSERT [dbo].[SV] ([MaSV], [Hodem], [Ten], [Ngaysinh], [Matkhau]) VALUES (N'11190658', N'Nguyễn Thị ', N'Ánh            ', CAST(N'2001-04-16' AS Date), N'111111')
INSERT [dbo].[SV] ([MaSV], [Hodem], [Ten], [Ngaysinh], [Matkhau]) VALUES (N'11191057', N'Vũ Thị ', N'Diệu           ', CAST(N'2001-04-05' AS Date), N'111111')
GO
ALTER TABLE [dbo].[BAILAM]  WITH CHECK ADD  CONSTRAINT [FK_BAILAM_CAUHOI] FOREIGN KEY([MaCH])
REFERENCES [dbo].[CAUHOI] ([MaCH])
GO
ALTER TABLE [dbo].[BAILAM] CHECK CONSTRAINT [FK_BAILAM_CAUHOI]
GO
ALTER TABLE [dbo].[BAILAM]  WITH CHECK ADD  CONSTRAINT [FK_BAILAM_SV] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SV] ([MaSV])
GO
ALTER TABLE [dbo].[BAILAM] CHECK CONSTRAINT [FK_BAILAM_SV]
GO
ALTER TABLE [dbo].[CAUHOI]  WITH CHECK ADD  CONSTRAINT [FK_CAUHOI_MONTHI] FOREIGN KEY([MaM])
REFERENCES [dbo].[MONTHI] ([MaM])
GO
ALTER TABLE [dbo].[CAUHOI] CHECK CONSTRAINT [FK_CAUHOI_MONTHI]
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD  CONSTRAINT [FK_LOP_MONTHI] FOREIGN KEY([MaM])
REFERENCES [dbo].[MONTHI] ([MaM])
GO
ALTER TABLE [dbo].[LOP] CHECK CONSTRAINT [FK_LOP_MONTHI]
GO
ALTER TABLE [dbo].[LOPSV]  WITH CHECK ADD  CONSTRAINT [FK_LOPSV_LOP] FOREIGN KEY([MaL])
REFERENCES [dbo].[LOP] ([MaL])
GO
ALTER TABLE [dbo].[LOPSV] CHECK CONSTRAINT [FK_LOPSV_LOP]
GO
ALTER TABLE [dbo].[LOPSV]  WITH CHECK ADD  CONSTRAINT [FK_LOPSV_SV] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SV] ([MaSV])
GO
ALTER TABLE [dbo].[LOPSV] CHECK CONSTRAINT [FK_LOPSV_SV]
GO
USE [master]
GO
ALTER DATABASE [THITRACNGHIEM] SET  READ_WRITE 
GO
