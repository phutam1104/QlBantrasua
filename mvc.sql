CREATE DATABASE QLBantrasua
CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBantrasua', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLBantrasua.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLBantrasuai_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLBantrasua_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLBantrasua] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBantrasua].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBantrasua] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBantrasua] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBantrasua] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBantrasua] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBantrasua] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBantrasua] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLBantrasua] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBantrasua] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBantrasua] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBantrasua] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBantrasua] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBantrasua] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBantrasua] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBantrasua] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBantrasua] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBantrasua] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBantrasua] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBantrasua] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBantrasua] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBantrasua] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBantrasua] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBantrasua] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBantrasua] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBantrasua] SET  MULTI_USER 
GO
ALTER DATABASE [QLBantrasua] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBantrasua] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBantrasua] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBantrasua] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBantrasua] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBantrasua] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLBantrasua] SET QUERY_STORE = OFF
GO
use [QLBantrasua]
go
/****** Object:  Table [dbo].[Chitietdonhang]***/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietdonhang](
	[Madon] [int] NOT NULL,
	[Masp] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Chitietdonhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC,
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donhang] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donhang](
	[Madon] [int] NOT NULL,
	[Ngaydat] [datetime] NULL,
	[Tinhtrang] [int] NULL,
	[MaNguoidung] [int] NULL,
 CONSTRAINT [PK_Donhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoidung]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 5/20/2021 9:27:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[Maloai] [int] IDENTITY(1,1) NOT NULL,
	[Tenloai] [nchar](10) NULL,
 CONSTRAINT [PK_Hedieuhanh] PRIMARY KEY CLUSTERED 
(
	[Maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Nguoidung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Dienthoai] [nchar](10) NULL,
	[Matkhau] [varchar](50) NULL,
	[IDQuyen] [int] NULL,
	[Diachi] [nvarchar](100) NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[IDQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[Masp] [int] IDENTITY(1,1) NOT NULL,
	[Tensp] [nvarchar](50) NULL,
	[Giatien] [decimal](18, 0) NULL,
	[Soluong] [int] NULL,
	[Mota] [ntext] NULL,
	[Anhbia] [nvarchar](30) NULL,
	[Maloai] [int] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/**** Insert data ******/
SET IDENTITY_INSERT [dbo].[Nguoidung] ON 

INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (14, N'Nguyen Phu Tam', N'Admin@gmail.com', N'0866060755', N'123456789', 2, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (15, N'Nguyen Phu Tam', N'nguyenphutam201@gmail.com', N'090612087', N'123456789', NULL, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (16, N'Tâm 123', N'Khach@gmail.com', N'0866060755', N'123456789', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Nguoidung] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (1, N'Member')
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Sanpham] ON 
insert [dbo].[Sanpham](Masp,Tensp,Giatien,Soluong,Mota,Anhbia,Maloai) values(1,N'Trà Sữa Truyền Thống',CAST(20000 AS Decimal(18, 0)),1,N'Trà Sữa',N'trasua.jpg',1)
insert [dbo].[Sanpham](Masp,Tensp,Giatien,Soluong,Mota,Anhbia,Maloai) values(2,N'Trà Sữa Matcha',CAST(20000 AS Decimal(18, 0)),1,N'Trà Sữa',N'tsmc.jpg,',1)
insert [dbo].[Sanpham](Masp,Tensp,Giatien,Soluong,Mota,Anhbia,Maloai) values(3,N'Trà Sữa Socola',CAST(20000 AS Decimal(18, 0)),1,N'Trà Sữa',N'tssc.jpg',1)
insert [dbo].[Sanpham](Masp,Tensp,Giatien,Soluong,Mota,Anhbia,Maloai) values(4,N'Trà Đào',CAST(20000 AS Decimal(18, 0)),1,N'Trà',N'tradao.jpg',2)
insert [dbo].[Sanpham](Masp,Tensp,Giatien,Soluong,Mota,Anhbia,Maloai) values(5,N'Trà Vải',CAST(20000 AS Decimal(18, 0)),1,N'Trà',N'travai.jpg',2)
SET IDENTITY_INSERT [dbo].[Sanpham] OFF
SET IDENTITY_INSERT [dbo].[Loai] ON 
INSERT [dbo].[Loai] ([Maloai], [Tenloai]) VALUES (1, N'Trà sữa')
INSERT [dbo].[Loai] ([Maloai], [Tenloai]) VALUES (2, N'Trà    ')
SET IDENTITY_INSERT [dbo].[Loai] OFF
GO
GO
ALTER TABLE [dbo].[Nguoidung] ADD  CONSTRAINT [DF_Nguoidung_IDQuyen]  DEFAULT ((0)) FOR [IDQuyen]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Donhang] FOREIGN KEY([Madon])
REFERENCES [dbo].[Donhang] ([Madon])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Donhang]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Sanpham] FOREIGN KEY([Masp])
REFERENCES [dbo].[Sanpham] ([Masp])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Sanpham]
GO
ALTER TABLE [dbo].[Donhang]  WITH CHECK ADD  CONSTRAINT [FK_Donhang_Khachhang] FOREIGN KEY([MaNguoidung])
REFERENCES [dbo].[Nguoidung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[Donhang] CHECK CONSTRAINT [FK_Donhang_Khachhang]
GO
ALTER TABLE [dbo].[Nguoidung]  WITH CHECK ADD  CONSTRAINT [FK_Nguoidung_Nguoidung] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[PhanQuyen] ([IDQuyen])
GO
ALTER TABLE [dbo].[Nguoidung] CHECK CONSTRAINT [FK_Nguoidung_Nguoidung]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Loai] FOREIGN KEY([Maloai])
REFERENCES [dbo].[Loai] ([Maloai])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Loai]
GO
GO
USE [master]
GO
ALTER DATABASE [QLdienthoai] SET  READ_WRITE 
GO

