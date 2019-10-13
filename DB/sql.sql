USE [master]
GO
/****** Object:  Database [QLCD]    Script Date: 10/13/2019 20:10:42 ******/
CREATE DATABASE [QLCD] ON  PRIMARY 
( NAME = N'QLCD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QLCD.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLCD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QLCD_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLCD] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLCD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLCD] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QLCD] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QLCD] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QLCD] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QLCD] SET ARITHABORT OFF
GO
ALTER DATABASE [QLCD] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QLCD] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QLCD] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QLCD] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QLCD] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QLCD] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QLCD] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QLCD] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QLCD] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QLCD] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QLCD] SET  DISABLE_BROKER
GO
ALTER DATABASE [QLCD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QLCD] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QLCD] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QLCD] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QLCD] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QLCD] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QLCD] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QLCD] SET  READ_WRITE
GO
ALTER DATABASE [QLCD] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QLCD] SET  MULTI_USER
GO
ALTER DATABASE [QLCD] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QLCD] SET DB_CHAINING OFF
GO
USE [QLCD]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 10/13/2019 20:10:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[IdDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](50) NULL,
	[TrangThaiXoa] [bit] NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[IdDanhMuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON
INSERT [dbo].[DanhMuc] ([IdDanhMuc], [TenDanhMuc], [TrangThaiXoa]) VALUES (1, N'Phim', 0)
INSERT [dbo].[DanhMuc] ([IdDanhMuc], [TenDanhMuc], [TrangThaiXoa]) VALUES (2, N'Game', 0)
INSERT [dbo].[DanhMuc] ([IdDanhMuc], [TenDanhMuc], [TrangThaiXoa]) VALUES (3, N'Ảnh sá', 0)
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/13/2019 20:10:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[IdNhanVien] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[IdNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NhanVien] ([IdNhanVien], [HoTen], [DiaChi], [SoDienThoai]) VALUES (N'NV000001', N'Nguyễn Hồng Quang', N'Quận 12', N'0346065968')
INSERT [dbo].[NhanVien] ([IdNhanVien], [HoTen], [DiaChi], [SoDienThoai]) VALUES (N'NV000002', N'Huỳnh Phúc Huy', N'Quận Tân Bình', N'0123456678')
INSERT [dbo].[NhanVien] ([IdNhanVien], [HoTen], [DiaChi], [SoDienThoai]) VALUES (N'NV000003', N'Huỳnh Anh Khang', N'Quận Bình Thạnh', N'9876543210')
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10/13/2019 20:10:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IdKhachHang] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[TrangThaiXoa] [bit] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[IdKhachHang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KhachHang] ([IdKhachHang], [HoTen], [DiaChi], [SoDienThoai], [TrangThaiXoa]) VALUES (N'KH00000001', N'Trần Trung Hào', N'Quận Gò Vấp', N'0123445678', 0)
INSERT [dbo].[KhachHang] ([IdKhachHang], [HoTen], [DiaChi], [SoDienThoai], [TrangThaiXoa]) VALUES (N'KH00000002', N'Đào Anh Duy', N'Quận Gò Vấp 2', N'0963465475', 0)
INSERT [dbo].[KhachHang] ([IdKhachHang], [HoTen], [DiaChi], [SoDienThoai], [TrangThaiXoa]) VALUES (N'KH00000003', N'Huỳnh Minh Tiên', N'Quận Gò Vấp', N'0963465475', 0)
INSERT [dbo].[KhachHang] ([IdKhachHang], [HoTen], [DiaChi], [SoDienThoai], [TrangThaiXoa]) VALUES (N'KH00000004', N'Nguyễn Ngọc Vũ', N'Quận Gò VáP', N'03947858697', 0)
INSERT [dbo].[KhachHang] ([IdKhachHang], [HoTen], [DiaChi], [SoDienThoai], [TrangThaiXoa]) VALUES (N'KH00000005', N'Huỳnh Minh Tiến', N'Quận Gò Vấp', N'0963465475', 1)
/****** Object:  Table [dbo].[TieuDe]    Script Date: 10/13/2019 20:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TieuDe](
	[IdTieuDe] [nvarchar](50) NOT NULL,
	[TenTieuDe] [nvarchar](50) NULL,
	[PhiThue] [decimal](18, 0) NULL,
	[SoLuongDia] [int] NULL,
	[IdDanhMuc] [int] NULL,
	[TrangThaiXoa] [bit] NULL,
 CONSTRAINT [PK_TieuDe] PRIMARY KEY CLUSTERED 
(
	[IdTieuDe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TieuDe] ([IdTieuDe], [TenTieuDe], [PhiThue], [SoLuongDia], [IdDanhMuc], [TrangThaiXoa]) VALUES (N'TD00000001', N'StarWar', CAST(20000 AS Decimal(18, 0)), 2, 1, 0)
INSERT [dbo].[TieuDe] ([IdTieuDe], [TenTieuDe], [PhiThue], [SoLuongDia], [IdDanhMuc], [TrangThaiXoa]) VALUES (N'TD00000002', N'Titanic', CAST(30000 AS Decimal(18, 0)), 2, 1, 0)
INSERT [dbo].[TieuDe] ([IdTieuDe], [TenTieuDe], [PhiThue], [SoLuongDia], [IdDanhMuc], [TrangThaiXoa]) VALUES (N'TD00000003', N'Doremon', CAST(15000 AS Decimal(18, 0)), 2, 1, 0)
INSERT [dbo].[TieuDe] ([IdTieuDe], [TenTieuDe], [PhiThue], [SoLuongDia], [IdDanhMuc], [TrangThaiXoa]) VALUES (N'TD00000004', N'PUBG', CAST(25000 AS Decimal(18, 0)), 2, 2, 0)
INSERT [dbo].[TieuDe] ([IdTieuDe], [TenTieuDe], [PhiThue], [SoLuongDia], [IdDanhMuc], [TrangThaiXoa]) VALUES (N'TD00000005', N'Dota2', CAST(25000 AS Decimal(18, 0)), 2, 2, 0)
INSERT [dbo].[TieuDe] ([IdTieuDe], [TenTieuDe], [PhiThue], [SoLuongDia], [IdDanhMuc], [TrangThaiXoa]) VALUES (N'TD00000006', N'Dead Cell''ss', CAST(300000 AS Decimal(18, 0)), 2, 2, 0)
INSERT [dbo].[TieuDe] ([IdTieuDe], [TenTieuDe], [PhiThue], [SoLuongDia], [IdDanhMuc], [TrangThaiXoa]) VALUES (N'TD00000007', N'mèo Fer', CAST(23000 AS Decimal(18, 0)), 0, 1, 1)
INSERT [dbo].[TieuDe] ([IdTieuDe], [TenTieuDe], [PhiThue], [SoLuongDia], [IdDanhMuc], [TrangThaiXoa]) VALUES (N'TD00000008', N'mèo Fér', CAST(24000 AS Decimal(18, 0)), 0, 1, 1)
INSERT [dbo].[TieuDe] ([IdTieuDe], [TenTieuDe], [PhiThue], [SoLuongDia], [IdDanhMuc], [TrangThaiXoa]) VALUES (N'TD00000009', N'Sonic', CAST(15000 AS Decimal(18, 0)), 0, 2, 1)
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/13/2019 20:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[IdTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[IdNhanVien] [nvarchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[IdTaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON
INSERT [dbo].[TaiKhoan] ([IdTaiKhoan], [TenTaiKhoan], [MatKhau], [IdNhanVien]) VALUES (1, N'quang_123', N'quang_123', N'NV000001')
INSERT [dbo].[TaiKhoan] ([IdTaiKhoan], [TenTaiKhoan], [MatKhau], [IdNhanVien]) VALUES (2, N'huy_123', N'huy_123', N'NV000002')
INSERT [dbo].[TaiKhoan] ([IdTaiKhoan], [TenTaiKhoan], [MatKhau], [IdNhanVien]) VALUES (3, N'khang_123', N'khang_123', N'NV000003')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
/****** Object:  Table [dbo].[PhieuThue]    Script Date: 10/13/2019 20:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThue](
	[IdPhieuThue] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
	[IdKhachHang] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhieuMuon] PRIMARY KEY CLUSTERED 
(
	[IdPhieuThue] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PhieuThue] ON
INSERT [dbo].[PhieuThue] ([IdPhieuThue], [NgayTao], [TrangThai], [IdKhachHang]) VALUES (1, CAST(0x0000A96000000000 AS DateTime), 0, N'KH00000001')
INSERT [dbo].[PhieuThue] ([IdPhieuThue], [NgayTao], [TrangThai], [IdKhachHang]) VALUES (2, CAST(0x0000A92A00000000 AS DateTime), 0, N'KH00000002')
SET IDENTITY_INSERT [dbo].[PhieuThue] OFF
/****** Object:  Table [dbo].[PhieuDat]    Script Date: 10/13/2019 20:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDat](
	[IdPhieuDat] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NULL,
	[IdKhachHang] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhieuDatDia] PRIMARY KEY CLUSTERED 
(
	[IdPhieuDat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PhieuDat] ON
INSERT [dbo].[PhieuDat] ([IdPhieuDat], [NgayTao], [IdKhachHang]) VALUES (1, CAST(0x0000A92C00000000 AS DateTime), N'KH00000001')
INSERT [dbo].[PhieuDat] ([IdPhieuDat], [NgayTao], [IdKhachHang]) VALUES (2, CAST(0x0000A92C00000000 AS DateTime), N'KH00000002')
SET IDENTITY_INSERT [dbo].[PhieuDat] OFF
/****** Object:  Table [dbo].[Dia]    Script Date: 10/13/2019 20:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dia](
	[IdDia] [nvarchar](50) NOT NULL,
	[TrangThai] [bit] NULL,
	[TrangThaiXoa] [bit] NULL,
	[IdTieuDe] [nvarchar](50) NULL,
 CONSTRAINT [PK_Dia] PRIMARY KEY CLUSTERED 
(
	[IdDia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Dia] ([IdDia], [TrangThai], [TrangThaiXoa], [IdTieuDe]) VALUES (N'CD00000001', 1, 0, N'TD00000001')
INSERT [dbo].[Dia] ([IdDia], [TrangThai], [TrangThaiXoa], [IdTieuDe]) VALUES (N'CD00000002', 1, 0, N'TD00000001')
INSERT [dbo].[Dia] ([IdDia], [TrangThai], [TrangThaiXoa], [IdTieuDe]) VALUES (N'CD00000003', 1, 0, N'TD00000002')
INSERT [dbo].[Dia] ([IdDia], [TrangThai], [TrangThaiXoa], [IdTieuDe]) VALUES (N'CD00000004', 1, 0, N'TD00000002')
INSERT [dbo].[Dia] ([IdDia], [TrangThai], [TrangThaiXoa], [IdTieuDe]) VALUES (N'CD00000005', 0, 0, N'TD00000003')
INSERT [dbo].[Dia] ([IdDia], [TrangThai], [TrangThaiXoa], [IdTieuDe]) VALUES (N'CD00000006', 0, 0, N'TD00000003')
INSERT [dbo].[Dia] ([IdDia], [TrangThai], [TrangThaiXoa], [IdTieuDe]) VALUES (N'CD00000007', 0, 0, N'TD00000004')
INSERT [dbo].[Dia] ([IdDia], [TrangThai], [TrangThaiXoa], [IdTieuDe]) VALUES (N'CD00000008', 0, 0, N'TD00000004')
INSERT [dbo].[Dia] ([IdDia], [TrangThai], [TrangThaiXoa], [IdTieuDe]) VALUES (N'CD00000009', 0, 0, N'TD00000005')
INSERT [dbo].[Dia] ([IdDia], [TrangThai], [TrangThaiXoa], [IdTieuDe]) VALUES (N'CD00000010', 0, 0, N'TD00000005')
INSERT [dbo].[Dia] ([IdDia], [TrangThai], [TrangThaiXoa], [IdTieuDe]) VALUES (N'CD00000011', 0, 0, N'TD00000006')
INSERT [dbo].[Dia] ([IdDia], [TrangThai], [TrangThaiXoa], [IdTieuDe]) VALUES (N'CD00000012', 0, 0, N'TD00000006')
INSERT [dbo].[Dia] ([IdDia], [TrangThai], [TrangThaiXoa], [IdTieuDe]) VALUES (N'CD00000013', 0, 0, N'TD00000002')
INSERT [dbo].[Dia] ([IdDia], [TrangThai], [TrangThaiXoa], [IdTieuDe]) VALUES (N'CD00000014', 0, 1, N'TD00000002')
INSERT [dbo].[Dia] ([IdDia], [TrangThai], [TrangThaiXoa], [IdTieuDe]) VALUES (N'CD00000015', 1, 0, N'TD00000001')
INSERT [dbo].[Dia] ([IdDia], [TrangThai], [TrangThaiXoa], [IdTieuDe]) VALUES (N'CD00000016', 0, 1, N'TD00000005')
INSERT [dbo].[Dia] ([IdDia], [TrangThai], [TrangThaiXoa], [IdTieuDe]) VALUES (N'CD00000017', 0, 1, N'TD00000001')
INSERT [dbo].[Dia] ([IdDia], [TrangThai], [TrangThaiXoa], [IdTieuDe]) VALUES (N'CD00000018', 0, 1, N'TD00000001')
/****** Object:  Table [dbo].[ChiTietPhieuDat]    Script Date: 10/13/2019 20:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuDat](
	[IdChiTietPhieuDat] [int] IDENTITY(1,1) NOT NULL,
	[IdTieuDe] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[IdPhieuDat] [int] NULL,
 CONSTRAINT [PK_ChiTieuPhieuDat] PRIMARY KEY CLUSTERED 
(
	[IdChiTietPhieuDat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietPhieuDat] ON
INSERT [dbo].[ChiTietPhieuDat] ([IdChiTietPhieuDat], [IdTieuDe], [SoLuong], [IdPhieuDat]) VALUES (1, N'TD00000001', 1, 1)
INSERT [dbo].[ChiTietPhieuDat] ([IdChiTietPhieuDat], [IdTieuDe], [SoLuong], [IdPhieuDat]) VALUES (2, N'TD00000002', 2, 1)
INSERT [dbo].[ChiTietPhieuDat] ([IdChiTietPhieuDat], [IdTieuDe], [SoLuong], [IdPhieuDat]) VALUES (3, N'TD00000003', 1, 2)
INSERT [dbo].[ChiTietPhieuDat] ([IdChiTietPhieuDat], [IdTieuDe], [SoLuong], [IdPhieuDat]) VALUES (4, N'TD00000003', 2, 2)
SET IDENTITY_INSERT [dbo].[ChiTietPhieuDat] OFF
/****** Object:  Table [dbo].[ChiTietPhieuThue]    Script Date: 10/13/2019 20:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuThue](
	[IdChiTietPhieuThue] [int] IDENTITY(1,1) NOT NULL,
	[IdDia] [nvarchar](50) NULL,
	[NgayHetHan] [datetime] NULL,
	[NgayTra] [datetime] NULL,
	[PhiThue] [decimal](18, 0) NULL,
	[PhiTreHan] [decimal](18, 0) NULL,
	[TrangThai] [bit] NULL,
	[IdPhieuThue] [int] NULL,
 CONSTRAINT [PK_ChiTietPhieuMuon] PRIMARY KEY CLUSTERED 
(
	[IdChiTietPhieuThue] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietPhieuThue] ON
INSERT [dbo].[ChiTietPhieuThue] ([IdChiTietPhieuThue], [IdDia], [NgayHetHan], [NgayTra], [PhiThue], [PhiTreHan], [TrangThai], [IdPhieuThue]) VALUES (1, N'CD00000001', NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[ChiTietPhieuThue] ([IdChiTietPhieuThue], [IdDia], [NgayHetHan], [NgayTra], [PhiThue], [PhiTreHan], [TrangThai], [IdPhieuThue]) VALUES (2, N'CD00000002', NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[ChiTietPhieuThue] ([IdChiTietPhieuThue], [IdDia], [NgayHetHan], [NgayTra], [PhiThue], [PhiTreHan], [TrangThai], [IdPhieuThue]) VALUES (3, N'CD00000003', NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[ChiTietPhieuThue] ([IdChiTietPhieuThue], [IdDia], [NgayHetHan], [NgayTra], [PhiThue], [PhiTreHan], [TrangThai], [IdPhieuThue]) VALUES (4, N'CD00000004', NULL, NULL, NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[ChiTietPhieuThue] OFF
/****** Object:  ForeignKey [FK_TieuDe_DanhMuc]    Script Date: 10/13/2019 20:10:43 ******/
ALTER TABLE [dbo].[TieuDe]  WITH CHECK ADD  CONSTRAINT [FK_TieuDe_DanhMuc] FOREIGN KEY([IdDanhMuc])
REFERENCES [dbo].[DanhMuc] ([IdDanhMuc])
GO
ALTER TABLE [dbo].[TieuDe] CHECK CONSTRAINT [FK_TieuDe_DanhMuc]
GO
/****** Object:  ForeignKey [FK_TaiKhoan_NhanVien]    Script Date: 10/13/2019 20:10:43 ******/
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhanVien] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([IdNhanVien])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhanVien]
GO
/****** Object:  ForeignKey [FK_PhieuThue_KhachHang]    Script Date: 10/13/2019 20:10:43 ******/
ALTER TABLE [dbo].[PhieuThue]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThue_KhachHang] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([IdKhachHang])
GO
ALTER TABLE [dbo].[PhieuThue] CHECK CONSTRAINT [FK_PhieuThue_KhachHang]
GO
/****** Object:  ForeignKey [FK_PhieuDatDia_KhachHang]    Script Date: 10/13/2019 20:10:43 ******/
ALTER TABLE [dbo].[PhieuDat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatDia_KhachHang] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([IdKhachHang])
GO
ALTER TABLE [dbo].[PhieuDat] CHECK CONSTRAINT [FK_PhieuDatDia_KhachHang]
GO
/****** Object:  ForeignKey [FK_Dia_TieuDe]    Script Date: 10/13/2019 20:10:43 ******/
ALTER TABLE [dbo].[Dia]  WITH CHECK ADD  CONSTRAINT [FK_Dia_TieuDe] FOREIGN KEY([IdTieuDe])
REFERENCES [dbo].[TieuDe] ([IdTieuDe])
GO
ALTER TABLE [dbo].[Dia] CHECK CONSTRAINT [FK_Dia_TieuDe]
GO
/****** Object:  ForeignKey [FK_ChiTietPhieuDat_TieuDe]    Script Date: 10/13/2019 20:10:43 ******/
ALTER TABLE [dbo].[ChiTietPhieuDat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuDat_TieuDe] FOREIGN KEY([IdTieuDe])
REFERENCES [dbo].[TieuDe] ([IdTieuDe])
GO
ALTER TABLE [dbo].[ChiTietPhieuDat] CHECK CONSTRAINT [FK_ChiTietPhieuDat_TieuDe]
GO
/****** Object:  ForeignKey [FK_ChiTieuPhieuDat_PhieuDatDia]    Script Date: 10/13/2019 20:10:43 ******/
ALTER TABLE [dbo].[ChiTietPhieuDat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTieuPhieuDat_PhieuDatDia] FOREIGN KEY([IdPhieuDat])
REFERENCES [dbo].[PhieuDat] ([IdPhieuDat])
GO
ALTER TABLE [dbo].[ChiTietPhieuDat] CHECK CONSTRAINT [FK_ChiTieuPhieuDat_PhieuDatDia]
GO
/****** Object:  ForeignKey [FK_ChiTietPhieuThue_Dia]    Script Date: 10/13/2019 20:10:43 ******/
ALTER TABLE [dbo].[ChiTietPhieuThue]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuThue_Dia] FOREIGN KEY([IdDia])
REFERENCES [dbo].[Dia] ([IdDia])
GO
ALTER TABLE [dbo].[ChiTietPhieuThue] CHECK CONSTRAINT [FK_ChiTietPhieuThue_Dia]
GO
/****** Object:  ForeignKey [FK_ChiTietPhieuThue_PhieuThue]    Script Date: 10/13/2019 20:10:43 ******/
ALTER TABLE [dbo].[ChiTietPhieuThue]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuThue_PhieuThue] FOREIGN KEY([IdPhieuThue])
REFERENCES [dbo].[PhieuThue] ([IdPhieuThue])
GO
ALTER TABLE [dbo].[ChiTietPhieuThue] CHECK CONSTRAINT [FK_ChiTietPhieuThue_PhieuThue]
GO
