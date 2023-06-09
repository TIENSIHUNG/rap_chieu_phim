USE [master]
GO
/****** Object:  Database [Quanlybanvephim]    Script Date: 3/26/2023 5:42:20 PM ******/
CREATE DATABASE [Quanlybanvephim]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Quanlybanvephim', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Quanlybanvephim.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Quanlybanvephim_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Quanlybanvephim_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Quanlybanvephim] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Quanlybanvephim].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Quanlybanvephim] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET ARITHABORT OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Quanlybanvephim] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Quanlybanvephim] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Quanlybanvephim] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Quanlybanvephim] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET RECOVERY FULL 
GO
ALTER DATABASE [Quanlybanvephim] SET  MULTI_USER 
GO
ALTER DATABASE [Quanlybanvephim] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Quanlybanvephim] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Quanlybanvephim] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Quanlybanvephim] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Quanlybanvephim] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Quanlybanvephim] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Quanlybanvephim', N'ON'
GO
ALTER DATABASE [Quanlybanvephim] SET QUERY_STORE = OFF
GO
USE [Quanlybanvephim]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhapTV] [varchar](30) NULL,
	[MaPhim] [varchar](10) NULL,
	[NoiDungBinhLuan] [ntext] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietGhe]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGhe](
	[SoGhe] [varchar](5) NOT NULL,
 CONSTRAINT [PK_ChiTietGhe] PRIMARY KEY CLUSTERED 
(
	[SoGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangPhim]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangPhim](
	[MaDangPhim] [varchar](5) NOT NULL,
	[TenDangPhim] [nvarchar](15) NULL,
 CONSTRAINT [PK_DangPhim] PRIMARY KEY CLUSTERED 
(
	[MaDangPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangPhong]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangPhong](
	[MaDangPhong] [varchar](5) NOT NULL,
	[TenDangPhong] [nvarchar](30) NULL,
 CONSTRAINT [PK_DangPhong] PRIMARY KEY CLUSTERED 
(
	[MaDangPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhSachDatVeOnline]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachDatVeOnline](
	[MaXacNhan] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhapTV] [varchar](30) NULL,
	[MaXuatChieu] [int] NULL,
	[MaPhim] [varchar](10) NULL,
	[SoLuongVeThuong] [int] NULL,
	[SoLuongVeVip] [int] NULL,
	[MaLichChieu] [int] NULL,
	[TrangThaiDatVe] [varchar](50) NULL,
 CONSTRAINT [PK_DanhSachDatVeOnline] PRIMARY KEY CLUSTERED 
(
	[MaXacNhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ghe]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ghe](
	[SoGhe] [varchar](5) NOT NULL,
	[MaPhong] [varchar](5) NOT NULL,
	[MaLoaiGhe] [varchar](5) NULL,
	[MaTinhTrang] [varchar](5) NULL,
 CONSTRAINT [PK_Ghe] PRIMARY KEY CLUSTERED 
(
	[SoGhe] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ghe_LichChieu]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ghe_LichChieu](
	[SoGhe] [varchar](5) NOT NULL,
	[MaLichChieu] [int] NOT NULL,
	[MaXuatChieu] [int] NOT NULL,
	[MaPhong] [varchar](5) NOT NULL,
	[TrangThaiGhe] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ghe_LichChieu] PRIMARY KEY CLUSTERED 
(
	[SoGhe] ASC,
	[MaLichChieu] ASC,
	[MaXuatChieu] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gia]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gia](
	[MaGia] [varchar](5) NOT NULL,
	[MaLoaiGhe] [varchar](5) NULL,
	[MaDangPhim] [varchar](5) NULL,
	[SoTien] [int] NULL,
 CONSTRAINT [PK_Gia] PRIMARY KEY CLUSTERED 
(
	[MaGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichChieu]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichChieu](
	[MaLichChieu] [int] IDENTITY(1,1) NOT NULL,
	[MaPhong] [varchar](5) NULL,
	[MaXuatChieu] [int] NULL,
	[NgayChieu] [datetime] NULL,
 CONSTRAINT [PK_LichChieu] PRIMARY KEY CLUSTERED 
(
	[MaLichChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiGhe]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiGhe](
	[MaLoaiGhe] [varchar](5) NOT NULL,
	[TenLoaiGhe] [ntext] NULL,
 CONSTRAINT [PK_LoaiGhe] PRIMARY KEY CLUSTERED 
(
	[MaLoaiGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhim]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhim](
	[MaLoaiPhim] [varchar](5) NOT NULL,
	[TenLoaiPhim] [nvarchar](30) NULL,
 CONSTRAINT [PK_LoaiPhim] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[TenDangNhapNV] [varchar](10) NOT NULL,
	[MatKhauNV] [varchar](30) NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[MaQuyen] [varchar](5) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[TenDangNhapNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[MaPhim] [varchar](10) NOT NULL,
	[TenPhim] [nvarchar](200) NULL,
	[MaDangPhim] [varchar](5) NULL,
	[MaLoaiPhim] [varchar](5) NULL,
	[DoDaiGio] [int] NULL,
	[DoDaiPhut] [int] NULL,
	[MaQuocGia] [varchar](50) NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[AnhDaiDien] [varchar](100) NULL,
	[GhiChu] [ntext] NULL,
	[MoTaPhim] [ntext] NULL,
 CONSTRAINT [PK_Phim] PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [varchar](5) NOT NULL,
	[TenPhong] [ntext] NULL,
	[MaDangPhong] [varchar](5) NULL,
	[TrangThaiPhong] [ntext] NULL,
	[SoLuongDayGheToiDa] [numeric](2, 0) NULL,
	[SoLuongGheToiDaOMoiDay] [numeric](2, 0) NULL,
	[GhiChu] [ntext] NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuocGia]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuocGia](
	[MaQuocGia] [varchar](50) NOT NULL,
	[TenQuocGia] [nvarchar](30) NULL,
 CONSTRAINT [PK_QuocGia] PRIMARY KEY CLUSTERED 
(
	[MaQuocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [varchar](5) NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuKien]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuKien](
	[MaSuKien] [varchar](5) NOT NULL,
	[TenSuKien] [nvarchar](100) NULL,
	[NoiDung] [ntext] NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[HinhAnhSuKien] [varchar](100) NULL,
	[MucGiamGia] [nvarchar](5) NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_SuKien] PRIMARY KEY CLUSTERED 
(
	[MaSuKien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[TenDangNhapTV] [varchar](30) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[MatKhau] [varchar](30) NULL,
	[SoDienThoai] [varchar](11) NULL,
	[Email] [varchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[TenDangNhapTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhTrang]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrang](
	[MaTinhTrang] [varchar](5) NOT NULL,
	[TinhTrangGhe] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinhTrang] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[MaVe] [int] IDENTITY(1,1) NOT NULL,
	[MaXuatChieu] [int] NULL,
	[MaPhong] [varchar](5) NULL,
	[TenDangNhapNV] [varchar](10) NULL,
	[MaGia] [varchar](5) NULL,
	[MaSuKien] [varchar](5) NULL,
	[DonGia] [int] NULL,
	[SoGhe] [varchar](5) NULL,
	[MaLichChieu] [int] NULL,
	[MaPhim] [varchar](10) NULL,
 CONSTRAINT [PK_Ve] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XuatChieu]    Script Date: 3/26/2023 5:42:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XuatChieu](
	[MaXuatChieu] [int] IDENTITY(1,1) NOT NULL,
	[MaPhim] [varchar](10) NULL,
	[GioChieu] [int] NULL,
	[PhutChieu] [int] NOT NULL,
 CONSTRAINT [PK_XuatChieu] PRIMARY KEY CLUSTERED 
(
	[MaXuatChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_Phim]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_ThanhVien] FOREIGN KEY([TenDangNhapTV])
REFERENCES [dbo].[ThanhVien] ([TenDangNhapTV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_ThanhVien]
GO
ALTER TABLE [dbo].[DanhSachDatVeOnline]  WITH CHECK ADD  CONSTRAINT [FK_DanhSachDatVeOnline_ThanhVien] FOREIGN KEY([TenDangNhapTV])
REFERENCES [dbo].[ThanhVien] ([TenDangNhapTV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DanhSachDatVeOnline] CHECK CONSTRAINT [FK_DanhSachDatVeOnline_ThanhVien]
GO
ALTER TABLE [dbo].[DanhSachDatVeOnline]  WITH CHECK ADD  CONSTRAINT [FK_DanhSachDatVeOnline_XuatChieu] FOREIGN KEY([MaXuatChieu])
REFERENCES [dbo].[XuatChieu] ([MaXuatChieu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DanhSachDatVeOnline] CHECK CONSTRAINT [FK_DanhSachDatVeOnline_XuatChieu]
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_ChiTietGhe] FOREIGN KEY([SoGhe])
REFERENCES [dbo].[ChiTietGhe] ([SoGhe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_ChiTietGhe]
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_LoaiGhe] FOREIGN KEY([MaLoaiGhe])
REFERENCES [dbo].[LoaiGhe] ([MaLoaiGhe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_LoaiGhe]
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_Phong]
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_TinhTrang] FOREIGN KEY([MaTinhTrang])
REFERENCES [dbo].[TinhTrang] ([MaTinhTrang])
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_TinhTrang]
GO
ALTER TABLE [dbo].[Ghe_LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_LichChieu_ChiTietGhe] FOREIGN KEY([SoGhe])
REFERENCES [dbo].[ChiTietGhe] ([SoGhe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ghe_LichChieu] CHECK CONSTRAINT [FK_Ghe_LichChieu_ChiTietGhe]
GO
ALTER TABLE [dbo].[Ghe_LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_LichChieu_LichChieu] FOREIGN KEY([MaLichChieu])
REFERENCES [dbo].[LichChieu] ([MaLichChieu])
GO
ALTER TABLE [dbo].[Ghe_LichChieu] CHECK CONSTRAINT [FK_Ghe_LichChieu_LichChieu]
GO
ALTER TABLE [dbo].[Ghe_LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_LichChieu_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ghe_LichChieu] CHECK CONSTRAINT [FK_Ghe_LichChieu_Phong]
GO
ALTER TABLE [dbo].[Ghe_LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_LichChieu_XuatChieu] FOREIGN KEY([MaXuatChieu])
REFERENCES [dbo].[XuatChieu] ([MaXuatChieu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ghe_LichChieu] CHECK CONSTRAINT [FK_Ghe_LichChieu_XuatChieu]
GO
ALTER TABLE [dbo].[Gia]  WITH CHECK ADD  CONSTRAINT [FK_Gia_DangPhim] FOREIGN KEY([MaDangPhim])
REFERENCES [dbo].[DangPhim] ([MaDangPhim])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Gia] CHECK CONSTRAINT [FK_Gia_DangPhim]
GO
ALTER TABLE [dbo].[Gia]  WITH CHECK ADD  CONSTRAINT [FK_Gia_LoaiGhe] FOREIGN KEY([MaLoaiGhe])
REFERENCES [dbo].[LoaiGhe] ([MaLoaiGhe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Gia] CHECK CONSTRAINT [FK_Gia_LoaiGhe]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_Phong]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_XuatChieu] FOREIGN KEY([MaXuatChieu])
REFERENCES [dbo].[XuatChieu] ([MaXuatChieu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_XuatChieu]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_Quyen]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_DangPhim] FOREIGN KEY([MaDangPhim])
REFERENCES [dbo].[DangPhim] ([MaDangPhim])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_DangPhim]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_LoaiPhim] FOREIGN KEY([MaLoaiPhim])
REFERENCES [dbo].[LoaiPhim] ([MaLoaiPhim])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_LoaiPhim]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_QuocGia] FOREIGN KEY([MaQuocGia])
REFERENCES [dbo].[QuocGia] ([MaQuocGia])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_QuocGia]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_DangPhong] FOREIGN KEY([MaDangPhong])
REFERENCES [dbo].[DangPhong] ([MaDangPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_DangPhong]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_ChiTietGhe] FOREIGN KEY([SoGhe])
REFERENCES [dbo].[ChiTietGhe] ([SoGhe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_ChiTietGhe]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Gia] FOREIGN KEY([MaGia])
REFERENCES [dbo].[Gia] ([MaGia])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_Gia]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_LichChieu] FOREIGN KEY([MaLichChieu])
REFERENCES [dbo].[LichChieu] ([MaLichChieu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_LichChieu]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_NhanVien] FOREIGN KEY([TenDangNhapNV])
REFERENCES [dbo].[NhanVien] ([TenDangNhapNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_NhanVien]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_Phong]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_SuKien] FOREIGN KEY([MaSuKien])
REFERENCES [dbo].[SuKien] ([MaSuKien])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_SuKien]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_XuatChieu] FOREIGN KEY([MaXuatChieu])
REFERENCES [dbo].[XuatChieu] ([MaXuatChieu])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_XuatChieu]
GO
ALTER TABLE [dbo].[XuatChieu]  WITH CHECK ADD  CONSTRAINT [FK_XuatChieu_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[XuatChieu] CHECK CONSTRAINT [FK_XuatChieu_Phim]
GO
USE [master]
GO
ALTER DATABASE [Quanlybanvephim] SET  READ_WRITE 
GO
