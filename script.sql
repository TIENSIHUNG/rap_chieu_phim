USE [master]
GO
/****** Object:  Database [RAPCHIEUPHIM]    Script Date: 3/23/2023 10:41:27 PM ******/
CREATE DATABASE [RAPCHIEUPHIM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RAPCHIEUPHIM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\RAPCHIEUPHIM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RAPCHIEUPHIM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\RAPCHIEUPHIM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RAPCHIEUPHIM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RAPCHIEUPHIM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RAPCHIEUPHIM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET ARITHABORT OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET RECOVERY FULL 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET  MULTI_USER 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RAPCHIEUPHIM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RAPCHIEUPHIM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'RAPCHIEUPHIM', N'ON'
GO
ALTER DATABASE [RAPCHIEUPHIM] SET QUERY_STORE = OFF
GO
USE [RAPCHIEUPHIM]
GO
/****** Object:  Table [dbo].[dinh_dang_phim]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dinh_dang_phim](
	[id] [int] NOT NULL,
	[ten] [nvarchar](max) NOT NULL,
	[phu_thu] [int] NOT NULL,
 CONSTRAINT [PK_dinh_dang_phim] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[do_an]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[do_an](
	[id] [int] NOT NULL,
	[ten] [nvarchar](max) NOT NULL,
	[dang_ban] [bit] NOT NULL,
	[loai_do_an_id] [int] NOT NULL,
 CONSTRAINT [PK_do_an] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[do_an_chi_tiet]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[do_an_chi_tiet](
	[id] [int] NOT NULL,
	[don_gia] [money] NOT NULL,
	[dang_ban] [bit] NOT NULL,
	[do_an_id] [int] NOT NULL,
	[kich_co_do_an_id] [int] NOT NULL,
 CONSTRAINT [PK_do_an_chi_tiet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ghe_ngoi]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ghe_ngoi](
	[id] [int] NOT NULL,
	[vi_tri_day] [nvarchar](max) NOT NULL,
	[vi_tri_cot] [nvarchar](max) NOT NULL,
	[da_chon] [bit] NOT NULL,
	[phong_chieu_id] [int] NOT NULL,
	[loai_ghe_id] [int] NOT NULL,
 CONSTRAINT [PK_ghe_ngoi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gia_ve]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gia_ve](
	[id] [int] NOT NULL,
	[ten] [nvarchar](max) NOT NULL,
	[don_gia] [money] NOT NULL,
 CONSTRAINT [PK_gia_ve] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don](
	[id] [int] NOT NULL,
	[ngay_ban] [date] NOT NULL,
	[nhan_vien_id] [int] NOT NULL,
 CONSTRAINT [PK_hoa_don] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don_chi_tiet]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don_chi_tiet](
	[id] [int] NOT NULL,
	[so_luong] [int] NOT NULL,
	[tong_tien] [money] NOT NULL,
	[do_an_chi_tiet] [int] NOT NULL,
	[hoa_don_id] [int] NOT NULL,
 CONSTRAINT [PK_hoa_don_chi_tiet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khach_hang]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khach_hang](
	[id] [int] NOT NULL,
	[ho_ten] [nvarchar](max) NOT NULL,
	[so_cmnd] [nvarchar](max) NOT NULL,
	[mat_khau] [nvarchar](max) NOT NULL,
	[so_dien_thoai] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[dia_chi] [nvarchar](max) NOT NULL,
	[ngay_dang_ky] [date] NOT NULL,
	[ngay_sinh] [date] NOT NULL,
	[gioi_tinh] [bit] NOT NULL,
 CONSTRAINT [PK_khach_hang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kich_co_do_an]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kich_co_do_an](
	[id] [int] NOT NULL,
	[ten] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_kich_co_do_an] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai_do_an]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai_do_an](
	[id] [int] NOT NULL,
	[ten] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_loai_do_an] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai_ghe]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai_ghe](
	[id] [int] NOT NULL,
	[ten_ghe] [nvarchar](max) NOT NULL,
	[phu_thu] [int] NOT NULL,
 CONSTRAINT [PK_loai_ghe] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai_phim]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai_phim](
	[id] [int] NOT NULL,
	[ten] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_loai_phim] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nguoi_dung]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguoi_dung](
	[id] [int] NOT NULL,
	[ho_ten] [nvarchar](max) NOT NULL,
	[mat_khau] [varchar](max) NOT NULL,
	[so_cmnd] [varchar](max) NOT NULL,
	[so_dien_thoai] [varchar](max) NOT NULL,
	[email] [varchar](max) NOT NULL,
	[dia_chi] [varchar](max) NOT NULL,
	[ngay_vao_lam] [date] NOT NULL,
	[gioi_tinh] [bit] NOT NULL,
	[dang_lam] [bit] NOT NULL,
	[vai_tro_id] [int] NOT NULL,
 CONSTRAINT [PK_nguoi_dung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phim]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phim](
	[id] [int] NOT NULL,
	[ten] [nvarchar](max) NOT NULL,
	[thoi_luong] [int] NOT NULL,
	[gioi_han_tuoi] [int] NOT NULL,
	[ngay_cong_chieu] [date] NOT NULL,
	[ngon_ngu] [nvarchar](max) NOT NULL,
	[dien_vien] [nvarchar](max) NOT NULL,
	[nha_san_xuat] [nvarchar](max) NOT NULL,
	[tom_tat] [nvarchar](max) NOT NULL,
	[trang_thai] [nvarchar](max) NOT NULL,
	[da_xoa] [bit] NOT NULL,
	[loai_phim_id] [int] NOT NULL,
 CONSTRAINT [PK_phim] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phong_chieu]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phong_chieu](
	[id] [int] NOT NULL,
	[so_luong_day] [int] NOT NULL,
	[so_luong_du] [int] NOT NULL,
 CONSTRAINT [PK_phong_chieu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[suat_chieu]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[suat_chieu](
	[id] [int] NOT NULL,
	[gio_bat_dau] [datetime] NOT NULL,
	[gio_ket_thuc] [datetime] NOT NULL,
	[ngay_chieu] [date] NOT NULL,
	[phim_id] [int] NOT NULL,
	[phong_chieu_id] [int] NOT NULL,
	[dinh_dang_phim_id] [int] NOT NULL,
 CONSTRAINT [PK_suat_chieu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vai_tro]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vai_tro](
	[id] [int] NOT NULL,
	[ten] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_vai_tro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ve_ban]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ve_ban](
	[id] [int] NOT NULL,
	[ngay_ban] [date] NOT NULL,
	[tong_tien] [money] NOT NULL,
	[suat_chieu_id] [int] NOT NULL,
	[gia_ve_id] [int] NOT NULL,
	[ghe_id] [int] NOT NULL,
	[nhan_vien_id] [int] NOT NULL,
 CONSTRAINT [PK_ve_ban] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ve_dat]    Script Date: 3/23/2023 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ve_dat](
	[id] [int] NOT NULL,
	[khach_hang_id] [int] NOT NULL,
 CONSTRAINT [PK_ve_dat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[do_an]  WITH CHECK ADD  CONSTRAINT [FK_do_an_loai_do_an] FOREIGN KEY([loai_do_an_id])
REFERENCES [dbo].[loai_do_an] ([id])
GO
ALTER TABLE [dbo].[do_an] CHECK CONSTRAINT [FK_do_an_loai_do_an]
GO
ALTER TABLE [dbo].[do_an_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK_do_an_chi_tiet_do_an] FOREIGN KEY([do_an_id])
REFERENCES [dbo].[do_an] ([id])
GO
ALTER TABLE [dbo].[do_an_chi_tiet] CHECK CONSTRAINT [FK_do_an_chi_tiet_do_an]
GO
ALTER TABLE [dbo].[do_an_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK_do_an_chi_tiet_kich_co_do_an] FOREIGN KEY([kich_co_do_an_id])
REFERENCES [dbo].[kich_co_do_an] ([id])
GO
ALTER TABLE [dbo].[do_an_chi_tiet] CHECK CONSTRAINT [FK_do_an_chi_tiet_kich_co_do_an]
GO
ALTER TABLE [dbo].[ghe_ngoi]  WITH CHECK ADD  CONSTRAINT [FK_ghe_ngoi_loai_ghe] FOREIGN KEY([loai_ghe_id])
REFERENCES [dbo].[loai_ghe] ([id])
GO
ALTER TABLE [dbo].[ghe_ngoi] CHECK CONSTRAINT [FK_ghe_ngoi_loai_ghe]
GO
ALTER TABLE [dbo].[ghe_ngoi]  WITH CHECK ADD  CONSTRAINT [FK_ghe_ngoi_phong_chieu] FOREIGN KEY([phong_chieu_id])
REFERENCES [dbo].[phong_chieu] ([id])
GO
ALTER TABLE [dbo].[ghe_ngoi] CHECK CONSTRAINT [FK_ghe_ngoi_phong_chieu]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FK_hoa_don_nguoi_dung] FOREIGN KEY([nhan_vien_id])
REFERENCES [dbo].[nguoi_dung] ([id])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FK_hoa_don_nguoi_dung]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK_hoa_don_chi_tiet_do_an_chi_tiet] FOREIGN KEY([do_an_chi_tiet])
REFERENCES [dbo].[do_an_chi_tiet] ([id])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] CHECK CONSTRAINT [FK_hoa_don_chi_tiet_do_an_chi_tiet]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK_hoa_don_chi_tiet_hoa_don] FOREIGN KEY([hoa_don_id])
REFERENCES [dbo].[hoa_don] ([id])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] CHECK CONSTRAINT [FK_hoa_don_chi_tiet_hoa_don]
GO
ALTER TABLE [dbo].[nguoi_dung]  WITH CHECK ADD  CONSTRAINT [FK_nguoi_dung_vai_tro] FOREIGN KEY([vai_tro_id])
REFERENCES [dbo].[vai_tro] ([id])
GO
ALTER TABLE [dbo].[nguoi_dung] CHECK CONSTRAINT [FK_nguoi_dung_vai_tro]
GO
ALTER TABLE [dbo].[phim]  WITH CHECK ADD  CONSTRAINT [FK_phim_loai_phim] FOREIGN KEY([loai_phim_id])
REFERENCES [dbo].[loai_phim] ([id])
GO
ALTER TABLE [dbo].[phim] CHECK CONSTRAINT [FK_phim_loai_phim]
GO
ALTER TABLE [dbo].[suat_chieu]  WITH CHECK ADD  CONSTRAINT [FK_suat_chieu_dinh_dang_phim] FOREIGN KEY([dinh_dang_phim_id])
REFERENCES [dbo].[dinh_dang_phim] ([id])
GO
ALTER TABLE [dbo].[suat_chieu] CHECK CONSTRAINT [FK_suat_chieu_dinh_dang_phim]
GO
ALTER TABLE [dbo].[suat_chieu]  WITH CHECK ADD  CONSTRAINT [FK_suat_chieu_phim] FOREIGN KEY([phim_id])
REFERENCES [dbo].[phim] ([id])
GO
ALTER TABLE [dbo].[suat_chieu] CHECK CONSTRAINT [FK_suat_chieu_phim]
GO
ALTER TABLE [dbo].[suat_chieu]  WITH CHECK ADD  CONSTRAINT [FK_suat_chieu_phong_chieu] FOREIGN KEY([phong_chieu_id])
REFERENCES [dbo].[phong_chieu] ([id])
GO
ALTER TABLE [dbo].[suat_chieu] CHECK CONSTRAINT [FK_suat_chieu_phong_chieu]
GO
ALTER TABLE [dbo].[ve_ban]  WITH CHECK ADD  CONSTRAINT [FK_ve_ban_ghe_ngoi] FOREIGN KEY([ghe_id])
REFERENCES [dbo].[ghe_ngoi] ([id])
GO
ALTER TABLE [dbo].[ve_ban] CHECK CONSTRAINT [FK_ve_ban_ghe_ngoi]
GO
ALTER TABLE [dbo].[ve_ban]  WITH CHECK ADD  CONSTRAINT [FK_ve_ban_gia_ve] FOREIGN KEY([gia_ve_id])
REFERENCES [dbo].[gia_ve] ([id])
GO
ALTER TABLE [dbo].[ve_ban] CHECK CONSTRAINT [FK_ve_ban_gia_ve]
GO
ALTER TABLE [dbo].[ve_ban]  WITH CHECK ADD  CONSTRAINT [FK_ve_ban_nguoi_dung] FOREIGN KEY([nhan_vien_id])
REFERENCES [dbo].[nguoi_dung] ([id])
GO
ALTER TABLE [dbo].[ve_ban] CHECK CONSTRAINT [FK_ve_ban_nguoi_dung]
GO
ALTER TABLE [dbo].[ve_ban]  WITH CHECK ADD  CONSTRAINT [FK_ve_ban_suat_chieu] FOREIGN KEY([suat_chieu_id])
REFERENCES [dbo].[suat_chieu] ([id])
GO
ALTER TABLE [dbo].[ve_ban] CHECK CONSTRAINT [FK_ve_ban_suat_chieu]
GO
ALTER TABLE [dbo].[ve_ban]  WITH CHECK ADD  CONSTRAINT [FK_ve_ban_ve_dat] FOREIGN KEY([id])
REFERENCES [dbo].[ve_dat] ([id])
GO
ALTER TABLE [dbo].[ve_ban] CHECK CONSTRAINT [FK_ve_ban_ve_dat]
GO
ALTER TABLE [dbo].[ve_dat]  WITH CHECK ADD  CONSTRAINT [FK_ve_dat_khach_hang] FOREIGN KEY([khach_hang_id])
REFERENCES [dbo].[khach_hang] ([id])
GO
ALTER TABLE [dbo].[ve_dat] CHECK CONSTRAINT [FK_ve_dat_khach_hang]
GO
USE [master]
GO
ALTER DATABASE [RAPCHIEUPHIM] SET  READ_WRITE 
GO
