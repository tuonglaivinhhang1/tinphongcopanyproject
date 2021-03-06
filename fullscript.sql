CREATE DATABASE TinPhongCompany
GO
USE [TinPhongCompany]
GO
/****** Object:  Table [dbo].[About]    Script Date: 9/1/2017 10:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[MetaTitle] [nvarchar](1000) NULL,
	[SeoTitle] [nvarchar](1000) NULL,
	[Detail] [ntext] NULL,
	[Image] [varchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[MetaKeywords] [nvarchar](1000) NULL,
	[MetaDescriptions] [nvarchar](1000) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 9/1/2017 10:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](200) NULL,
	[Password] [varchar](500) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 9/1/2017 10:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[MetaTitle] [nvarchar](1000) NULL,
	[SeoTitle] [nvarchar](1000) NULL,
	[Description] [nvarchar](1000) NULL,
	[Image] [varchar](500) NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[MetaKeywords] [nvarchar](1000) NULL,
	[MetaDescriptions] [nvarchar](1000) NULL,
	[ViewCount] [bigint] NULL,
	[TopHot] [datetime] NULL,
	[Tags] [nvarchar](1000) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentCategory]    Script Date: 9/1/2017 10:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentCategory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[Description] [nvarchar](1000) NULL,
	[MetaTitle] [nvarchar](1000) NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](1000) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[MetaKeywords] [nvarchar](1000) NULL,
	[MetaDescriptions] [nvarchar](1000) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 9/1/2017 10:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Email] [varchar](200) NULL,
	[Phone] [varchar](20) NULL,
	[Address] [nvarchar](500) NULL,
	[Title] [nvarchar](500) NULL,
	[Content] [ntext] NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 9/1/2017 10:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 9/1/2017 10:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Link] [varchar](1000) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[TypeID] [bigint] NULL,
	[ParentID] [bigint] NULL,
	[Status] [bit] NULL,
	[ProductID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 9/1/2017 10:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 9/1/2017 10:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[MetaTitle] [nvarchar](1000) NULL,
	[SeoTitle] [nvarchar](1000) NULL,
	[Code] [varchar](20) NULL,
	[Description] [nvarchar](1000) NULL,
	[Image] [nvarchar](500) NULL,
	[MoreImages] [xml] NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[CategoryID] [bigint] NULL,
	[ProductDetail] [ntext] NULL,
	[Waranty] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[MetaKeywords] [nvarchar](1000) NULL,
	[MetaDescriptions] [nvarchar](1000) NULL,
	[Status] [bit] NULL,
	[ViewCount] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 9/1/2017 10:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[Description] [ntext] NULL,
	[MetaTitle] [nvarchar](1000) NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](1000) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[MetaKeywords] [nvarchar](1000) NULL,
	[MetaDescriptions] [nvarchar](1000) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 9/1/2017 10:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Image] [varchar](500) NULL,
	[DisplayOrder] [int] NULL,
	[Link] [varchar](1000) NULL,
	[Description] [ntext] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 9/1/2017 10:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagNews]    Script Date: 9/1/2017 10:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagNews](
	[ContentID] [bigint] NOT NULL,
	[TagID] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 
GO
INSERT [dbo].[Admin] ([ID], [Email], [Password], [Status]) VALUES (1, N'nhom10.ktpm.th2014@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 1)
GO
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (1, N'Trang Chủ', N'/', 1, N'_blank', 1, NULL, 1, NULL)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (2, N'Cửa Nhựa Lõi Thép', N'/cua-nhua-loi-thep', 2, N'_self', 1, NULL, 1, NULL)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (3, N'Cửa Kính Cường Lực', N'/cua-kinh-cuong-luc', 3, N'_self', 1, NULL, 1, NULL)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (4, N'Cửa Cuốn', N'/cua-cuon-tu-dong-auto', 4, N'_self', 1, NULL, 1, NULL)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (5, N'Cửa Nhôm', N'/cua-nhom-xingfa', 5, N'_self', 1, NULL, 1, NULL)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (6, N'Tin Tức', N'#', 6, N'_self', 1, NULL, 1, NULL)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (7, N'Tin Công Ty', N'/tin-tuc-cong-ty', 7, N'_self', 1, 6, 1, NULL)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (8, N'Tin Dự Án Đang Thi Công', N'/tin-du-an-dang-thi-cong', 8, N'_self', 1, 6, 1, NULL)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (9, N'Triết Lý Kinh Doanh ', N'/triet-ly-kinh-doanh', 9, N'_self', 1, 6, 1, NULL)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (10, N'Các Dự Án Đã Thi Công', N'/cac-du-an-da-thi-cong', 10, N'_self', 1, NULL, 1, NULL)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (11, N'Liên Hệ', N'/lien-he', 11, N'_self', 1, NULL, 1, NULL)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (12, N'CỬA NHỰA LÕI THÉP : TINPHONG WINDOW', N'/cua-nhua-loi-thep', 1, N'_self', 2, NULL, 1, NULL)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (13, N'Cửa nhựa lõi thép : Cửa đi 1 cánh', N'/cua-nhua-loi-thep--cua-di-1-canh--1', 2, N'_self', 2, 12, 1, 1)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (14, N'Cửa nhựa lõi thép: Cửa đi 2 cánh', N'/cua-nhua-loi-thep--cua-di-2-canh--2', 3, N'_self', 2, 12, 1, 2)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (15, N'Cửa nhựa lõi thép: Cửa đi 4 cánh và 6 cánh', N'/cua-nhua-loi-thep--cua-di-4-canh-va-6-canh--3', 4, N'_self', 2, 12, 1, 3)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (16, N'Cửa nhựa lõi thép: CỬA ĐI 4 CÁNH MỞ LÙA ', N'/cua-nhua-loi-thep--cua-di-4-canh-mo-lua--4', 5, N'_self', 2, 12, 1, 4)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (17, N'Cửa nhựa lõi thép: Cửa đi mở trượt ', N'/cua-nhua-loi-thep--cua-di-mo-truot--5', 6, N'_self', 2, 12, 1, 5)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (18, N'Cửa nhựa lõi thép: Cửa sổ mở quay lật vào trong', N'/cua-nhua-loi-thep--cua-so-mo-lat-vao-trong--6', 7, N'_self', 2, 12, 1, 6)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (19, N'Cửa nhựa lõi thép: Cửa sổ mở hất ra ngoài', N'/cua-nhua-loi-thep--cua-so-mo-hat-ra-ngoai--7', 8, N'_self', 2, 12, 1, 7)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (20, N'Cửa nhựa lõi thép: Cửa sổ mở quay ra ngoài', N'/cua-nhua-loi-thep--cua-so-mo-quay-ra-ngoai--8', 9, N'_self', 2, 12, 1, 8)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (21, N'Cửa nhựa lõi thép: Cửa sổ mở trượt', N'/cua-nhua-loi-thep--cua-so-mo-truot--9', 10, N'_self', 2, 12, 1, 9)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (22, N'Cửa nhựa lõi thép: Cửa sổ kết hợp vách, cửa mẹ bồng con', N'/cua-nhua-loi-thep--cua-so-ket-hop-vach-cua-me-bong-con--10', 11, N'_self', 2, 12, 1, 10)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (23, N'CỬA NHÔM XINGFA: TINPHONG ALUMINUM - XINGFA', N'/cua-nhom-xingfa', 12, N'_self', 2, NULL, 1, NULL)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (24, N'CỬA NHÔM XINGFA TINPHONG CAO CẤP: Hệ cửa đi 1 cánh mở quay', N'/cua-nhom-xingfa--he-cua-di-1-canh-mo-quay--11', 13, N'_self', 2, 23, 1, 11)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (25, N'CỬA NHÔM XINGFA TINPHONG CAO CẤP: Hệ cửa đi 2 cánh mở quay', N'/cua-nhom-xingfa--he-cua-di-2-canh-mo-quay--12', 14, N'_self', 2, 23, 1, 12)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (26, N'CỬA NHÔM XINGFA TINPHONG CAO CẤP: Hệ cửa đi 4 cánh, 6 cánh xếp trượt', N'/cua-nhom-xingfa--he-cua-di-4-canh-6-canh-xep-truot--13', 15, N'_self', 2, 23, 1, 13)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (27, N'CỬA NHÔM XINGFA TINPHONG CAO CẤP: Cửa trượt và cố định', N'/cua-nhom-xingfa--cua-truot-va-co-dinh--14', 16, N'_self', 2, 23, 1, 14)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (28, N'CỬA NHÔM XINGFA TINPHONG CAO CẤP: Hệ cửa đi 4 cánh mở quay', N'/cua-nhom-xingfa--he-cua-di-4-canh-mo-quay--15', 17, N'_self', 2, 23, 1, 15)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (29, N'CỬA NHÔM XINGFA TINPHONG CAO CẤP: Hệ cửa sổ mở trượt', N'/cua-nhom-xingfa--he-cua-so-mo-truot--14', 18, N'_self', 2, 23, 1, 16)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (30, N'CỬA NHÔM XINGFA TINPHONG CAO CẤP:  Hệ cửa sổ mở lật', N'/cua-nhom-xingfa--he-cua-so-mo-lat--16', 19, N'_self', 2, 23, 1, 16)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (31, N'CỬA NHÔM XINGFA TINPHONG CAO CẤP:  Hệ cửa sổ mở quay', N'/cua-nhom-xingfa--he-cua-so-mo-quay--17', 20, N'_self', 2, 23, 1, 17)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (32, N'CỬA NHÔM XINGFA TINPHONG CAO CẤP:  Hệ mặt dựng', N'/cua-nhom-xingfa--he-mat-dung--18', 21, N'_self', 2, 23, 1, 18)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (33, N'KÍNH CƯỜNG LỰC TẠI Hồ Chí Minh', N'/cua-kinh-cuong-luc', 22, N'_self', 2, NULL, 1, NULL)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (34, N'CỬA KÍNH CƯỜNG LỰC MỞ LÙA', N'/cua-kinh-cuong-luc--san-pham-cua-kinh-cuong-luc-mo-lua--19', 23, N'_self', 2, 33, 1, 19)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (35, N'CỬA KÍNH CƯỜNG LỰC MỞ QUAY', N'/cua-kinh-cuong-luc--san-pham-cua-kinh-cuong-luc-mo-quay--20', 24, N'_self', 2, 33, 1, 20)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (36, N'PHÒNG TẮM KÍNH CƯỜNG LỰC', N'/cua-kinh-cuong-luc--phong-tam-kinh-cuong-luc--21', 25, N'_self', 2, 33, 1, 21)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (37, N'CỬA TỰ ĐỘNG TINPHONG AUTO', N'/cua-cuon-tu-dong-auto', 26, N'_self', 2, NULL, 1, NULL)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (38, N'Cửa cuốn tấm liền Tín Phong Auto', N'/cua-cuon-tu-dong-auto--cua-cuon-tam-lien-tin-phong-auto--22', 27, N'_self', 2, 37, 1, 22)
GO
INSERT [dbo].[Menu] ([ID], [Name], [Link], [DisplayOrder], [Target], [TypeID], [ParentID], [Status], [ProductID]) VALUES (39, N'Cửa cuốn khe thoáng Tín Phong Auto', N'/cua-cuon-tu-dong-auto--cua-cuon-khe-thoang-tin-phong-auto--23', 28, N'_self', 2, 37, 1, 23)
GO
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuType] ON 
GO
INSERT [dbo].[MenuType] ([ID], [Name], [Status]) VALUES (1, N'Menu Ngang', 1)
GO
INSERT [dbo].[MenuType] ([ID], [Name], [Status]) VALUES (2, N'Menu Dọc', 1)
GO
SET IDENTITY_INSERT [dbo].[MenuType] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (1, N'Cửa nhựa lõi thép Tín Phong: Cửa đi một cánh mở quay', N'Cửa nhựa lõi thép Tín Phong: Cửa đi một cánh mở quay', N'Cửa nhựa lõi thép Tín Phong: Cửa đi một cánh mở quay tại TPHCM', N'CNLT-CD01', N'Cửa nhựa lõi thép Tín Phong: Cửa đi một cánh mở quay tại TPHCM', N'/Assets/Admin/DataUpload/images/cuadimotcanhmoquay.jpg', NULL, CAST(1900000 AS Decimal(18, 0)), CAST(1800000 AS Decimal(18, 0)), 1, N'<p dir="ltr" style="text-align:center"><span style="font-size:22px"><span style="color:#27ae60"><strong>CỬA NHỰA L&Otilde;I TH&Eacute;P CAO CẤP T&Iacute;N PHONG: Cửa đi một c&aacute;nh mở quay</strong></span></span></p>

<p dir="ltr"><span style="font-size:18px">Cửa đi 1 c&aacute;nh mở quay loại cửa nhựa l&otilde;i th&eacute;p được sự dụng kh&aacute; th&ocirc;ng dụng &nbsp;hiện nay cho mọi c&ocirc;ng tr&igrave;nh x&acirc;y dựng. Kiểu cửa n&agrave;y thường sử dụng với c&aacute;c cửa tiếp x&uacute;c với mặt ngo&agrave;i nh&agrave; cần độ c&aacute;ch &acirc;m, c&aacute;ch nhiệt cao như: cửa ra v&agrave;o ban c&ocirc;ng, cửa đi th&ocirc;ng ph&ograve;ng hay cửa đi nh&agrave; vệ sinh cực k&igrave; sang trọng, hiện đại.</span></p>

<p dir="ltr"><span style="font-size:18px"><strong><em>4 ưu điểm nổi bật của cửa đi một c&aacute;nh mở quay:</em></strong></span></p>

<p dir="ltr"><span style="font-size:18px"><strong>Thứ nhất, </strong>C&aacute;ch &acirc;m, c&aacute;ch nhiệt tốt, khung cửa vững chắc.</span></p>

<p dir="ltr"><span style="font-size:18px"><strong>Thứ hai, </strong>Đa dạng k&iacute;ch thước, kiểu d&aacute;ng, l&agrave;m phong ph&uacute; hơn kh&ocirc;ng gian của căn ph&ograve;ng.</span></p>

<p dir="ltr"><span style="font-size:18px"><strong>Thứ ba, </strong>Sản phẩm đảm bảo t&iacute;nh thẫm mỹ cao, an to&agrave;n, chống trộm.<br />
<strong>Thứ tư, </strong>Đ&oacute;ng mở nhẹ nh&agrave;ng &ecirc;m &aacute;i. Nếu nh&agrave; bạn c&oacute; người cao tuổi th&igrave; kiểu cửa n&agrave;y sẽ l&agrave; sự lựa chọn tối ưu.</span></p>

<p dir="ltr"><span style="font-size:18px"><strong><em>Th&ocirc;ng tin chi tiết mẫu cửa nhựa l&otilde;i th&eacute;p T&iacute;n Phong 1 c&aacute;nh mở quay:</em></strong></span></p>

<p dir="ltr"><span style="font-size:18px">- Profile :T&iacute;n Phong Window cửa nhựa l&otilde;i th&eacute;p ti&ecirc;u chuẩn ch&acirc;u &acirc;u.</span></p>

<p dir="ltr"><span style="font-size:18px">- K&iacute;nh cường lực 8ly, k&iacute;nh an to&agrave;n 6ly38, k&iacute;nh an to&agrave;n 8ly38....</span></p>

<p dir="ltr"><span style="font-size:18px">- L&otilde;i th&eacute;p gia cường : 1ly2 đến 1ly4</span></p>

<p dir="ltr"><span style="font-size:18px">- Phụ kiện cao cấp được sử dụng cho cửa nhựa cao cấp T&iacute;n Phong</span></p>

<p dir="ltr" style="text-align:center">&nbsp;&nbsp;&nbsp;<img alt="" src="/Assets/Admin/DataUpload/images/cd1cmq1.jpg" style="height:488px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cd1cmq2.jpg" style="height:650px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cd1cmq3.jpg" style="height:434px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:393px; width:650px" /></p>

<hr />
<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a> ,<br />
<a href="/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>
', 12, CAST(N'2017-08-29T16:47:19.290' AS DateTime), CAST(N'2017-08-30T23:40:18.010' AS DateTime), N'Cửa nhựa lõi thép một cánh mở quay đẹp, Cửa nhựa lõi thép một cánh mở quay tại tphcm,chất lượng tốt', N'Cửa nhựa lõi thép ở tphcm, mẫu cửa đi 1 cánh mở quay thông phòng tín phong Window', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (2, N'Cửa nhựa lõi thép Tín Phong: Cửa đi hai cánh mở quay', N'Cửa nhựa lõi thép Tín Phong: Cửa đi hai cánh mở quay', N'Cửa nhựa lõi thép Tín Phong: Cửa đi hai cánh mở quay tại TPHCM', N'CNLT-CD02', N'Cửa nhựa lõi thép Tín Phong: Cửa đi hai cánh mở quay', N'/Assets/Admin/DataUpload/images/product/5.png', NULL, CAST(1900000 AS Decimal(18, 0)), CAST(1800000 AS Decimal(18, 0)), 1, N'<p dir="ltr" style="text-align:center"><strong><span style="font-size:24px"><span style="color:#27ae60">Cửa nhựa l&otilde;i th&eacute;p cao cấp T&iacute;n Phong &ndash; cửa đi 2 c&aacute;nh mở quay</span></span></strong></p>

<p dir="ltr"><span style="font-size:16px">&Ocirc;ng cha ta thường n&oacute;i &ldquo;một năm l&agrave;m nh&agrave;, ba năm l&agrave;m cửa&rdquo;, điều đ&oacute; cho thấy cửa l&agrave; một bộ phận rất quan trọng của ng&ocirc;i nh&agrave;. Thay v&igrave; cửa được l&agrave;m bằng gỗ như lối truyền thống th&igrave; hiện nay người ta chuyển sang sử dụng cửa nhựa l&otilde;i th&eacute;p cao cấp gi&uacute;p ng&ocirc;i nh&agrave; trở n&ecirc;n sang trọng hơn.</span></p>

<p dir="ltr"><span style="font-size:16px">Đặc biệt, cửa đi 2 c&aacute;nh mở quay l&agrave; d&ograve;ng sản phẩm được ứng dụng kh&aacute; rộng r&atilde;i thường d&ugrave;ng cho cửa mặt tiền hay lối ra ban c&ocirc;ng.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Mẫu cửa nhựa l&otilde;i th&eacute;p cao cấp T&iacute;n Phong 2 c&aacute;nh mở quay, kết hợp v&aacute;ch k&iacute;nh khung nhựa l&otilde;i th&eacute;p:</strong></span></p>

<p dir="ltr"><span style="font-size:16px">- Quy c&aacute;ch: 2 c&aacute;nh mở quay, chia &ocirc;, chia đố, chia nẹp theo y&ecirc;u cầu.</span></p>

<p dir="ltr"><span style="font-size:16px">- K&iacute;nh : Cường lực 8mm, an to&agrave;n 6,38mm , 8,38mm ph&ocirc;i k&iacute;nh Việt Nhật.</span></p>

<p dir="ltr"><span style="font-size:16px">- Phụ kiện cao cấp đồng bộ gi&agrave;nh cho cửa nhựa cao cấp T&iacute;n Phong.</span></p>

<p dir="ltr"><span style="font-size:16px">Nếu bạn đang băn khoăn kh&ocirc;ng biết n&ecirc;n chọn mua tại c&ocirc;ng ty n&agrave;o uy t&iacute;n, h&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i cửa đẹp T&iacute;n Phong lu&ocirc;n đồng h&agrave;nh c&ugrave;ng ng&ocirc;i nh&agrave; bạn.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Đến với ch&uacute;ng t&ocirc;i bạn sẽ được g&igrave;?</strong></span></p>

<p dir="ltr"><span style="font-size:16px">- Sản phẩm được sản xuất sau khi đ&atilde; đo đạc thực tế tại c&ocirc;ng tr&igrave;nh.</span></p>

<p dir="ltr"><span style="font-size:16px">- Sau thời gian sản xuất lắp đặt từ 10 đến 15 ng&agrave;y sẽ được vận chuyển đến ch&acirc;n c&ocirc;ng tr&igrave;nh<br />
+ Đối với c&ocirc;ng tr&igrave;nh đ&atilde; ho&agrave;n thiện phần sơn, T&iacute;n Phong&nbsp;sẽ cho lắp r&aacute;p khung nhựa l&otilde;i th&eacute;p v&agrave; c&aacute;nh cửa v&agrave;o c&ocirc;ng tr&igrave;nh, lắp gương v&agrave; c&aacute;ch phụ kiện k&egrave;m theo.<br />
+ Đối với c&aacute;c c&ocirc;ng tr&igrave;nh chưa sơn ho&agrave;n thiện, T&iacute;n Phong sẽ y&ecirc;u cầu chủ nh&agrave; tiến h&agrave;nh sơn, sau khi sơn xong T&iacute;n Phong&nbsp;&nbsp;mới cho thi c&ocirc;ng lắp r&aacute;p.</span></p>

<p dir="ltr"><span style="font-size:16px">- Sau khi lắp r&aacute;p xong, T&iacute;n Phong tiến h&agrave;nh vệ sinh to&agrave;n bộ hệ thống cửa c&ocirc;ng tr&igrave;nh.</span></p>

<p dir="ltr"><span style="font-size:16px">- Tiến h&agrave;nh b&agrave;n giao cho chủ nh&agrave;, nghiệm thu v&agrave; b&agrave;n giao c&ocirc;ng tr&igrave;nh.</span></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cd2cmq1.jpg" style="height:722px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cd2cmq2.jpg" style="height:520px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cd2cmq3.jpg" style="height:415px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cd2cmq4.jpg" style="height:433px; width:650px" /></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a> ,<br />
<a href="/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>
', 12, CAST(N'2017-08-30T01:06:52.433' AS DateTime), CAST(N'2017-08-30T01:20:01.163' AS DateTime), N'Cửa nhựa lõi thép  Cửa đi hai cánh mở quay  đẹp, Cửa nhựa lõi thép  Cửa đi hai cánh mở quay  tại tphcm,chất lượng tốt', N'Cửa nhựa lõi thép  Cửa đi hai cánh mở quay  đẹp, Cửa nhựa lõi thép  Cửa đi hai cánh mở quay  tại tphcm,chất lượng tốt', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (3, N'Cửa nhựa lõi thép Tín Phong: Cửa đi 4 Cánh mở quay', N'Cửa nhựa lõi thép Tín Phong: Cửa đi 4 Cánh mở quay', N'Cửa nhựa lõi thép Tín Phong: Cửa đi 4 Cánh mở quay tại TP Hồ Chí Minh', N'CNLT-CD03', N'Cửa nhựa lõi thép Tín Phong: Cửa đi 4 Cánh mở quay tại TP Hồ Chí Minh', N'/Assets/Admin/DataUpload/images/cuadi4canh.jpg', NULL, CAST(1900000 AS Decimal(18, 0)), CAST(1800000 AS Decimal(18, 0)), 1, N'<p dir="ltr" style="text-align:center"><span style="font-size:24px"><strong><span style="color:#27ae60">CỬA NHỰA L&Otilde;I TH&Eacute;P CAO CẤP T&Iacute;N PHONG: Cửa đi 4 C&aacute;nh mở quay</span></strong></span></p>

<p dir="ltr"><span style="font-size:16px">Cửa đi 4 c&aacute;nh mở quay &ndash; cửa nhựa l&otilde;i th&eacute;p c&oacute; độ bền rất cao, vững chắc. Hơn thế nhờ khẩu độ mở cửa lớn n&ecirc;n sẽ gi&uacute;p đ&oacute;n vượng kh&iacute; v&agrave;o nh&agrave; tốt nhất cho gia chủ.<br />
<br />
<strong>Sau đ&acirc;y l&agrave; </strong><strong>4 ưu điểm nổi bật m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng thể bỏ qua với mẫu cửa n&agrave;y: </strong></span></p>

<p><span style="font-size:16px"><strong>Thứ nhất</strong>, M&agrave;u sắc phong ph&uacute;, sang trọng, dễ kết hợp với m&agrave;u nội thất căn ph&ograve;ng.</span></p>

<p><span style="font-size:16px"><strong>Thứ hai</strong>, Khả năng c&aacute;ch &acirc;m tốt, tạo kh&ocirc;ng gian y&ecirc;n tĩnh khi đ&oacute;ng cửa ph&ograve;ng. Đặc biệt, qu&yacute; kh&aacute;ch c&oacute; thể thoải m&aacute;i sử dụng điều h&ograve;a, m&aacute;y lạnh m&agrave; kh&ocirc;ng sợ ti&ecirc;u hao năng lượng điện nhờ khả năng tiết kiệm điện năng lớn của cửa nhựa l&otilde;i th&eacute;p.</span></p>

<p><span style="font-size:16px"><strong>Thứ ba,</strong> Khả năng chống ch&aacute;y tốt, C&oacute; độ bền m&agrave;u vượt thời gian.</span></p>

<p><span style="font-size:16px"><strong>Thứ tư,</strong> Chống va đập của gi&oacute; b&atilde;o rất tốt, th&iacute;ch hợp cho những c&ocirc;ng tr&igrave;nh thường xuy&ecirc;n chống chọi với thời tiết.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Th&ocirc;ng số chi tiết mẫu cửa nhựa l&otilde;i th&eacute;p 4 c&aacute;nh mở quay, cửa nhựa l&otilde;i th&eacute;p ti&ecirc;u chuẩn Ch&acirc;u &Acirc;u:</strong></span></p>

<ul dir="ltr">
	<li><span style="font-size:16px">Phụ kiện đồng bộ the ti&ecirc;u chuẩn cao cấp loại 1.</span></li>
	<li><span style="font-size:16px">Profile : T&iacute;n Phong Window. c&aacute;c d&ograve;ng nhựa cấp trung, cap cấp...</span></li>
	<li><span style="font-size:16px">K&iacute;nh : Cường lực 8ly, 10ly, k&iacute;nh an to&agrave;n 2 lớp 6ly38, k&iacute;nh an to&agrave;n 2 lớp 8ly38.</span></li>
</ul>

<p dir="ltr"><span style="font-size:16px">Ngo&agrave;i ra, cửa đi 4 c&aacute;nh mở quay c&ograve;n c&oacute; thiết kế n&acirc;ng cao như: 4 c&aacute;nh mở quay kết hợp v&aacute;ch k&iacute;nh tr&ecirc;n, v&aacute;ch k&iacute;nh 2 b&ecirc;n...</span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cd4c1.jpg" style="height:625px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cd4c2.jpg" style="height:366px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cd4c3.jpg" style="height:488px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cd4c4.jpg" style="height:432px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:365px; width:650px" /></span><br />
&nbsp;</p>

<p dir="ltr">&nbsp;</p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-30T13:38:00.953' AS DateTime), CAST(N'2017-08-30T13:38:00.953' AS DateTime), N'Cửa nhựa lõi thép Tín Phong: Cửa đi 4 Cánh mở quay tại TP Hồ Chí Minh ', N'Cửa nhựa lõi thép Tín Phong: Cửa đi 4 Cánh mở quay tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời
Liên hệ Tín Phong để báo giá 0901417789-02866802244 
XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM
ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (4, N'Cửa nhựa lõi thép Tín Phong: Cửa đi 4 cánh mở lùa', N'Cửa nhựa lõi thép Tín Phong: Cửa đi 4 cánh mở lùa', N'Cửa nhựa lõi thép Tín Phong: Cửa đi 4 cánh mở lùa tại TPHCM', N'CNLT-CD04', N'Cửa nhựa lõi thép Tín Phong: Cửa đi 4 cánh mở lùa tại TPHCM', N'/Assets/Admin/DataUpload/images/product/cua-di-mo-lua-4-canh-img2-1410951433.jpg', NULL, CAST(1900000 AS Decimal(18, 0)), CAST(1800000 AS Decimal(18, 0)), 1, N'<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:24px"><strong>CỬA NHỰA L&Otilde;I TH&Eacute;P CAO CẤP T&Iacute;N PHONG: CỬA ĐI 4 C&Aacute;NH MỞ L&Ugrave;A</strong></span></span></p>

<p dir="ltr"><span style="font-size:16px">Cửa đi mở l&ugrave;a l&agrave; một trong những d&ograve;ng sản phẩm của cửa nhựa l&otilde;i th&eacute;p được sử dụng kh&aacute; th&ocirc;ng dụng hiện nay.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>6 đặc điểm tuyệt vời khi qu&yacute; kh&aacute;ch sử dụng cửa đi 4 c&aacute;nh mở l&ugrave;a:</strong></span></p>

<p><span style="font-size:16px"><strong>Thứ nhất, </strong>Tiết kiệm được kh&ocirc;ng gian, rất ph&ugrave; hợp với kiến tr&uacute;c biệt thự, nh&agrave; vườn hoặc chung cư, cao ốc.</span></p>

<p><span style="font-size:16px"><strong>Thứ hai, </strong>Bền bỉ theo thời gian v&agrave; c&aacute;ch &acirc;m, c&aacute;ch nhiệt hiệu quả.</span></p>

<p><span style="font-size:16px"><strong>Thứ ba, </strong>Gi&uacute;p giảm thiểu tối đa tiếng ổn, ti&ecirc;u hao điện năng.</span></p>

<p><span style="font-size:16px"><strong>Thứ tư, </strong>Hiệu quả l&acirc;u d&agrave;i, l&agrave; khắc tinh của những t&aacute;c động oxi h&oacute;a của thời tiết, kh&ocirc;ng cong, chịu nhiệt cao, độ bền m&agrave;u cao.</span></p>

<p><span style="font-size:16px"><strong>Thứ năm, </strong>Dễ d&agrave;ng vệ sinh, lau ch&ugrave;i, tiết kiệm chi ph&iacute; bảo tr&igrave;.</span></p>

<p><span style="font-size:16px"><strong>Thứ s&aacute;u, </strong>Chọn lựa phụ kiện đi k&egrave;m dễ.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>7 ưu điểm nổi bật qu&yacute; kh&aacute;ch n&ecirc;n lắp đặt sản phẩm:</strong></span></p>

<p><span style="font-size:16px"><strong>Thứ nhất, </strong>Cửa đ&oacute;ng mở nhẹ nh&agrave;ng, dễ sử dụng.</span></p>

<p><span style="font-size:16px"><strong>Thứ hai, </strong>Chống rỉ s&eacute;t hoặc &ocirc; xy h&oacute;a.</span></p>

<p><span style="font-size:16px"><strong>Thứ ba, </strong>Cửa vững chắc v&agrave; an to&agrave;n.</span></p>

<p><span style="font-size:16px"><strong>Thứ tư, </strong>M&agrave;u sắc bắt mắt, ph&ugrave; hợp với mọi kiến tr&uacute;c.</span></p>

<p><span style="font-size:16px"><strong>Thứ năm, </strong>Dễ bảo dưỡng.</span></p>

<p><span style="font-size:16px"><strong>Thứ s&aacute;u, </strong>Bền đẹp, hiện đại v&agrave; c&oacute; t&iacute;nh thẩm mỹ cao.</span></p>

<p><span style="font-size:16px"><strong>Thứ bảy, </strong>Gi&aacute; th&agrave;nh thấp hơn c&aacute;c loại cửa kh&aacute;c; chẳng hạn như cửa gỗ.</span></p>

<p dir="ltr"><span style="font-size:16px">Th&ocirc;ng số chi tiết mẫu cửa đi 4 c&aacute;nh mở l&ugrave;a:</span></p>

<ul dir="ltr">
	<li><span style="font-size:16px">K&iacute;nh.</span></li>
	<li><span style="font-size:16px">&Ocirc; Fix.</span></li>
	<li><span style="font-size:16px">Thanh Profile.</span></li>
	<li><span style="font-size:16px">L&otilde;i th&eacute;p.</span></li>
	<li><span style="font-size:16px">Ray.</span></li>
	<li><span style="font-size:16px">B&aacute;nh xe.</span></li>
	<li><span style="font-size:16px">Kh&oacute;a đa điểm&hellip;.</span></li>
</ul>

<p dir="ltr"><span style="font-size:16px">Tuy nhi&ecirc;n hiện nay tr&ecirc;n thị trường xuất hiện kh&aacute; nhiều cơ sở kinh doanh h&agrave;ng giả, h&agrave;ng nh&aacute;i. V&igrave; thế qu&yacute; kh&aacute;ch cần lựa chọn nh&agrave; cung cấp uy t&iacute;n, c&oacute; thương hiệu đảm bảo phụ kiện chất lượng. Đến với T&iacute;n Phong &ndash; ch&uacute;ng t&ocirc;i cam kết mang lại những điều tốt nhất cho qu&yacute; kh&aacute;ch.</span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cua%20di%204%20canh%20lua/cua-di-4-canh-mo-lua30002.jpg" style="height:633px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cua%20di%204%20canh%20lua/cua-di-mo-lua-4-canh-img2-1410951433.jpg" style="height:650px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cua%20di%204%20canh%20lua/cuadilua5.jpg" style="height:493px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cua%20di%204%20canh%20lua/hru1492055862.jpg" style="height:488px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cua%20di%204%20canh%20lua/xingfa_di_truot_4.jpg" style="height:488px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:365px; width:650px" /></span></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-30T13:51:36.070' AS DateTime), CAST(N'2017-08-30T13:51:36.070' AS DateTime), N'Cửa nhựa lõi thép  Cửa đi 4 cánh mở lùa  đẹp, Cửa nhựa lõi thép Cửa đi 4 cánh mở lùa  tại tphcm,chất lượng tốt', N'Cửa nhựa lõi thép Tín Phong: Cửa đi 4 Cánh mở lùa tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (5, N'Cửa nhựa lõi thép Tín Phong: Cửa đi mở trượt', N'Cửa nhựa lõi thép Tín Phong: Cửa đi mở trượt', N'Cửa nhựa lõi thép Tín Phong: Cửa đi mở trượt tại TPHCM', N'CNLT-CD05', N'Cửa nhựa lõi thép Tín Phong: Cửa đi mở trượt tại TPHCM', N'/Assets/Admin/DataUpload/images/cua%20di%20mo%20truot/redsunic_com_image13.jpg', NULL, CAST(1900000 AS Decimal(18, 0)), CAST(1800000 AS Decimal(18, 0)), 1, N'<p dir="ltr" style="text-align:center"><span style="color:#27ae60"><span style="font-size:22px"><strong>CỬA NHỰA L&Otilde;I TH&Eacute;P CAO CẤP T&Iacute;N PHONG: Cửa đi mở trượt</strong></span></span></p>

<p dir="ltr"><span style="font-size:16px">Cửa đi mở trượt với c&aacute;ch lắp đặt kh&aacute; đơn giản nhưng vẫn đảm bảo độ bền khi sử dụng n&ecirc;n rất được ưa chuộng hiện nay ở nước ta. Sản phẩm n&agrave;y kh&ocirc;ng chỉ d&ugrave;ng trong c&aacute;c c&ocirc;ng tr&igrave;nh d&acirc;n dụng m&agrave; c&ograve;n được sử dụng cho c&aacute;c khu chung cư cao cấp; đặc biệt những c&ocirc;ng tr&igrave;nh c&oacute; diện t&iacute;ch nhỏ hẹp.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>7 ưu điểm vượt trội của cửa đi mở trượt:</strong></span></p>

<p><span style="font-size:16px"><strong>Thứ nhất,&nbsp;</strong>Cửa đi mở trượt l&agrave; loại cửa đi được mở bằng c&aacute;c ray trượt gi&uacute;p tiết kiệm kh&ocirc;ng gian đ&oacute;ng, mở cửa; cửa trượt &ecirc;m &ndash; nhẹ, kh&ocirc;ng g&acirc;y tiếng ồn.<br />
<strong>Thứ hai</strong>, m&agrave;u sắc đa dạng, bắt mắt, h&agrave;i h&ograve;a với nội thất trong căn ph&ograve;ng.</span></p>

<p><span style="font-size:16px"><strong>Thứ ba</strong>, C&oacute; khả năng c&aacute;ch &acirc;m, c&aacute;ch nhiệt tốt &ndash; hạn chế bụi bẩn; đặc biệt cực k&igrave; th&iacute;ch hợp với những c&ocirc;ng tr&igrave;nh nằm ở trung t&acirc;m th&agrave;nh phố hay mặt đường.</span></p>

<p><span style="font-size:16px"><strong>Thứ tư</strong>, Dễ d&agrave;ng vệ sinh v&agrave; bảo dưỡng.</span></p>

<p><span style="font-size:16px"><strong>Thứ năm</strong>, C&oacute; thể l&agrave;m c&aacute;nh cửa với k&iacute;ch thước lớn.</span></p>

<p><span style="font-size:16px"><strong>Thứ s&aacute;u</strong>, Gi&aacute; cả thấp.</span></p>

<p><span style="font-size:16px"><strong>Thứ bảy,</strong>Chịu lực cao.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Th&ocirc;ng tin vật liệu cấu th&agrave;nh:</strong></span></p>

<ul dir="ltr">
	<li><span style="font-size:16px">Thanh uPVC.</span></li>
	<li><span style="font-size:16px">Th&eacute;p hộp gia cường.</span></li>
	<li><span style="font-size:16px">K&iacute;nh: c&oacute; thể sử dụng k&iacute;nh đơn hoặc hộp k&iacute;nh với c&aacute;c loại k&iacute;nh an to&agrave;n, cường lực.</span></li>
	<li><span style="font-size:16px">Hệ gioăng lọc bụi.</span></li>
	<li><span style="font-size:16px">Hệ phụ kiện kim kh&iacute;: chốt con lăn, tay nắm, kh&oacute;a,&hellip;</span></li>
	<li><span style="font-size:16px">C&aacute;c vật liệu kh&aacute;c.</span></li>
</ul>

<p dir="ltr"><span style="font-size:16px">Cửa đi mở trượt c&oacute; thiết kế đặc sắc, nổi bật thể hiện sắc th&aacute;i v&agrave; vẻ đẹp thời thượng của c&ocirc;ng tr&igrave;nh vừa mang t&iacute;nh ứng dụng cao; c&oacute; thể l&agrave; cửa đi mặt tiền, cửa ban c&ocirc;ng, cửa hướng s&acirc;n vườn, hướng bể bơi...Đặt biệt hơn đến với cửa đẹp T&iacute;n Phong qu&yacute; kh&aacute;ch sẽ được tư vấn k&iacute;ch thước cửa chuẩn gi&uacute;p mang lại t&agrave;i lộc, ph&uacute; qu&yacute;, đại c&aacute;t&hellip;</span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cua%20di%20mo%20truot/cua-di-mo-truot-cua-nhua.jpg" style="height:435px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cua%20di%20mo%20truot/cua-di-mo-truot-xingfa.jpg" style="height:488px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cua%20di%20mo%20truot/door-and-windows-22.jpg" style="height:488px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cua%20di%20mo%20truot/redsunic_com_image13.jpg" style="height:464px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:365px; width:650px" /></span></p>

<p dir="ltr">&nbsp;</p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-30T14:42:17.890' AS DateTime), CAST(N'2017-08-30T14:42:17.890' AS DateTime), N'Cửa nhựa lõi thép  Cửa đi mở trượt  đẹp, Cửa nhựa lõi thép  Cửa đi mở trượt  tại tphcm,chất lượng tốt', N'Cửa nhựa lõi thép Tín Phong: Cửa đi mở trượt tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (6, N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở quay, lật và mở kết hợp', N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở quay, lật và mở kết hợp', N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở quay, lật và mở kết hợp tại TP Hồ Chí Minh', N'CNLT-CD06', N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở quay, lật và mở kết hợp tại TP Hồ Chí Minh', N'/Assets/Admin/DataUpload/images/cuasomoquaylattrong/cua-so-mo-quay-lat-vao-trong.jpg', NULL, CAST(1700000 AS Decimal(18, 0)), CAST(1600000 AS Decimal(18, 0)), 1, N'<p dir="ltr" style="text-align:center"><strong><span style="color:#27ae60"><span style="font-size:24px">CỬA NHỰA L&Otilde;I TH&Eacute;P CAO CẤP T&Iacute;N PHONG: Cửa sổ mở quay, lật v&agrave; mở kết hợp</span></span></strong></p>

<p dir="ltr"><span style="font-size:16px">Ng&agrave;y nay cửa sổ mở quay, lật v&agrave; mở kết hợp được coi l&agrave; mẫu cửa được sử dụng nhiều nhất trong c&aacute;c c&ocirc;ng tr&igrave;nh x&acirc;y dựng. Kiểu cửa n&agrave;y vừa mang lại nhiều tiện &iacute;ch cho kh&ocirc;ng gian ng&ocirc;i nh&agrave;, vừa mang lại vẻ sang trọng, hiện đại cho kiến tr&uacute;c.<br />
Cửa sổ mở quay, lật v&agrave; mở kết hợp ngo&agrave;i chế độ mở quay v&agrave; mở lật v&agrave;o trong, c&ograve;n c&oacute; chế độ mở song song khi xoay tay vặn sẽ tạo ra một khe hở, gi&uacute;p tăng cường khả năng th&ocirc;ng kh&iacute; v&agrave; &aacute;nh s&aacute;ng cho căn ph&ograve;ng.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Ngo&agrave;i ra, cửa sổ mở quay, lật v&agrave; mở kết hợp c&ograve;n mang lại 3 ưu điểm vượt trội như sau:</strong></span></p>

<p><span style="font-size:16px"><strong>Thứ nhất, </strong>Th&ocirc;ng tho&aacute;ng v&agrave; an to&agrave;n, chống đột nhập.</span></p>

<p><span style="font-size:16px"><strong>Thứ hai, </strong>C&oacute; hệ thống chốt đa điểm kết hợp hệ gioăng k&eacute;p ở 4 cạnh của c&aacute;nh cửa gi&uacute;p &eacute;p chặt khu&ocirc;n cửa v&agrave; khung c&aacute;nh tạo độ k&iacute;n kh&iacute;t v&agrave; khả năng c&aacute;ch &acirc;m, c&aacute;ch nhiệt tốt.</span></p>

<p><span style="font-size:16px"><strong>Thứ ba, </strong>Thiết kế độc đ&aacute;o v&agrave; m&agrave;u sắc đa dạng, bắt mắt tạo n&ecirc;n kh&ocirc;ng gian sống sinh động v&agrave; tr&agrave;n ngập &aacute;nh s&aacute;ng cho ng&ocirc;i nh&agrave; bạn.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Vật liệu cấu th&agrave;nh:</strong></span></p>

<ul>
	<li><span style="font-size:16px">Thanh uPVC (khu&ocirc;n cửa, khung c&aacute;nh).</span></li>
	<li><span style="font-size:16px">Th&eacute;p hộp gia cường.</span></li>
	<li><span style="font-size:16px">K&iacute;nh (an to&agrave;n, cường lực).</span></li>
	<li><span style="font-size:16px">Hộp k&iacute;nh được bơm kh&iacute; trơ c&oacute; t&aacute;c dụng giảm sự truyền &acirc;m, truyền nhiệt.</span></li>
	<li><span style="font-size:16px">Hệ gioăng k&eacute;p đảm bảo độ k&iacute;n kh&iacute;t cao.</span></li>
	<li><span style="font-size:16px">Hệ phụ kiện kim kh&iacute;: chốt đa điểm, tay nắm, kh&oacute;a,&hellip;</span></li>
</ul>

<p dir="ltr"><span style="font-size:16px">Tuy nhi&ecirc;n để đảm bảo an to&agrave;n tuyệt đối qu&yacute; kh&aacute;ch n&ecirc;n lắp đặt những thiết bị phụ kiện ch&iacute;nh h&atilde;ng, vật liệu đảm bảo chất lượng. Với cửa đẹp T&iacute;n Phong qu&yacute; kh&aacute;ch kh&ocirc;ng c&ograve;n lo lắng về chất lượng, mẫu m&atilde;. H&atilde;y nhấc m&aacute;y l&ecirc;n v&agrave; gọi ngay cho ch&uacute;ng t&ocirc;i nh&eacute;.</span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cuasomoquaylattrong/806886556130.jpg" style="height:488px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cuasomoquaylattrong/4432135cua_nhua_loi_thep_upvc_750_500.jpg" style="height:620px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cuasomoquaylattrong/02_05_cuaupvc-cuasomoquayvaotrong-img01.jpg" style="height:631px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cuasomoquaylattrong/20160622082227-cuasomoquaylatvaotrong.jpg" style="height:433px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:365px; width:650px" /></span></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-30T14:49:30.417' AS DateTime), CAST(N'2017-08-30T14:49:30.417' AS DateTime), N'Cửa nhựa lõi thép  Cửa sổ mở quay, lật và mở kết hợp  đẹp, Cửa nhựa lõi thép  Cửa sổ mở quay, lật và mở kết hợp  tại tphcm,chất lượng tốt', N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở quay lật vào trong tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (7, N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở hất ra ngoài', N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở hất ra ngoài', N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở hất ra ngoài tại TPHCM', N'CNLT-CD07', N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở hất ra ngoài tại TPHCM', N'/Assets/Admin/DataUpload/images/cuasomohatrangoai/av.png', NULL, CAST(1700000 AS Decimal(18, 0)), CAST(1600000 AS Decimal(18, 0)), 1, N'<p dir="ltr" style="text-align:center"><span style="color:#27ae60"><strong><span style="font-size:26px">CỬA NHỰA L&Otilde;I TH&Eacute;P CAO CẤP T&Iacute;N PHONG: Cửa sổ mở hất ra ngo&agrave;i</span></strong></span></p>

<p dir="ltr"><span style="font-size:16px">Cửa sổ mở hất ra ngo&agrave;i &ndash; một thiết kế được xem l&agrave; khắc tinh của thời tiết; kh&ocirc;ng chỉ c&oacute; khả năng chống gi&oacute; m&agrave; c&ograve;n gi&uacute;p chống tia UV, chống ngấm nước cực hiệu nghiệm.</span></p>

<p dir="ltr"><span style="font-size:16px">Đặc điểm của cửa sổ mở hất ra ngo&agrave;i:</span></p>

<ul dir="ltr">
	<li><span style="font-size:16px">Được mở hất ra ngo&agrave;i với g&oacute;c 45 độ, c&oacute; g&oacute;c mở cố định v&agrave; kh&ocirc;ng tự đ&oacute;ng sập xuống trong qu&aacute; tr&igrave;nh sử dụng.</span></li>
	<li><span style="font-size:16px">C&oacute; hệ thống chốt đa điểm v&agrave; hệ gioăng k&eacute;p nhằm tạo độ k&iacute;n kh&iacute;t v&agrave; khả năng c&aacute;ch &acirc;m, c&aacute;ch nhiệt cao.</span></li>
	<li><span style="font-size:16px">Khi đ&oacute;ng mở cửa kh&ocirc;ng l&agrave;m mất đi kh&ocirc;ng gian v&agrave; diện t&iacute;ch của căn ph&ograve;ng.</span></li>
</ul>

<p dir="ltr"><span style="font-size:16px"><strong>6 ưu điểm tối ưu cửa sổ mở hất ra ngo&agrave;i:</strong></span></p>

<ul dir="ltr">
	<li><span style="font-size:16px">Chống được gi&oacute; đập mạnh.</span></li>
	<li><span style="font-size:16px">Chắn nắng, chắn mưa ngay cả l&uacute;c mở cửa.</span></li>
	<li><span style="font-size:16px">Dễ d&agrave;ng vệ sinh lau ch&ugrave;i, bảo dưỡng.</span></li>
	<li><span style="font-size:16px">Chống ăn m&ograve;n, chống bạc m&agrave;u.</span></li>
	<li><span style="font-size:16px">Chống ồn, c&aacute;ch nhiệt cực tốt.</span></li>
	<li><span style="font-size:16px">Chịu lực cao, an to&agrave;n cho người sử dụng.</span></li>
</ul>

<p dir="ltr"><span style="font-size:16px"><strong>Th&ocirc;ng tin chi tiết mẫu cửa nhựa l&otilde;i th&eacute;p, cửa sổ mở hất:</strong></span></p>

<ul dir="ltr">
	<li><span style="font-size:16px">Profile cửa &nbsp;T&iacute;n Phong Window. Cửa đẹp cho mọi nh&agrave;.</span></li>
	<li><span style="font-size:16px">K&iacute;nh an to&agrave;n 2 lớp 6ly38 hoặc k&iacute;nh cường lực 8ly được d&ugrave;ng phổ biết nhất.</span></li>
	<li><span style="font-size:16px">Phụ kiện được sử dụng l&agrave;m phụ kiện ti&ecirc;u chuẩn của cửa nhựa l&otilde;i th&eacute;p.</span></li>
</ul>

<p dir="ltr"><span style="font-size:16px"><strong>Vật liệu cấu th&agrave;nh:</strong></span></p>

<ul dir="ltr">
	<li><span style="font-size:16px">Thanh uPVC (khu&ocirc;n cửa, khung c&aacute;nh).</span></li>
	<li><span style="font-size:16px">Th&eacute;p hộp gia cường.</span></li>
	<li><span style="font-size:16px">K&iacute;nh (an to&agrave;n, cường lực).</span></li>
	<li><span style="font-size:16px">Hộp k&iacute;nh được bơm kh&iacute; trơ c&oacute; t&aacute;c dụng giảm sự truyền &acirc;m, truyền nhiệt.</span></li>
	<li><span style="font-size:16px">Hệ gioăng k&eacute;p đảm bảo độ k&iacute;n kh&iacute;t cao.</span></li>
	<li><span style="font-size:16px">Hệ phụ kiện kim kh&iacute;: chốt đa điểm, bản lề chữ A, tay nắm, kh&oacute;a,</span></li>
</ul>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cuasomohatrangoai/cua-so-2.jpg" style="height:417px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cuasomohatrangoai/dac%20diem%20cua%20so%20mo%20hat%20ra%20ngoai%20-%20ban%20cua%20nhua%20loi%20thep%20namwindows%204.jpg" style="height:488px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cuasomohatrangoai/cua-so-mo-hat-ra-ngoai.jpg" style="height:276px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cuasomohatrangoai/cua-so-mo-hat-ra-ngoai%20(1).jpg" style="height:516px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:365px; width:650px" /></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-30T15:17:29.953' AS DateTime), CAST(N'2017-08-30T15:17:29.953' AS DateTime), N'Cửa nhựa lõi thép  Cửa sổ mở hất ra ngoài đẹp, Cửa nhựa lõi thép Cửa sổ mở hất ra ngoài  tại tphcm,chất lượng tốt', N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở hất ra ngoài tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (8, N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở quay ra ngoài', N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở quay ra ngoài', N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở quay ra ngoài tại TPHCM', N'CNLT-CD07', N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở quay ra ngoài tại TPHCM', N'/Assets/Admin/DataUpload/images/cuasomoquayrangoai/av.jpg', NULL, CAST(1700000 AS Decimal(18, 0)), CAST(1600000 AS Decimal(18, 0)), 1, N'<p style="text-align:center"><span style="color:#27ae60"><span style="font-size:24px"><strong>CỬA NHỰA L&Otilde;I TH&Eacute;P CAO CẤP T&Iacute;N PHONG: Cửa sổ mở quay ra ngo&agrave;i</strong></span></span></p>

<p><br />
<span style="font-size:16px">Cửa sổ mở quay ra ngo&agrave;i với nhiều mẫu m&atilde; đa dạng; c&oacute; k&iacute;ch thước v&agrave; kiểu d&aacute;ng ph&ugrave; hợp với mọi kiểu kiến tr&uacute;c.<br />
<br />
<strong>4 ưu điểm tuyệt vời của cửa sổ mở quay ra ngo&agrave;i &ndash; cửa nhựa l&otilde;i th&eacute;p cao cấp T&iacute;n Phong m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng thể bỏ qua:</strong><br />
Thứ nhất,Được mở với g&oacute;c gần 90 độ.<br />
Thứ hai, Chắc chắn, cực bền kh&ocirc;ng bị oxi ho&aacute; hay đổi m&agrave;u theo thời gian, lu&ocirc;n giữ được vẻ sang trọng vốn c&oacute; ban đầu.<br />
Thứ ba,C&oacute; hệ thống chốt đa điểm v&agrave; hệ gioăng k&eacute;p, tạo độ k&iacute;n kh&iacute;t v&agrave; khả năng c&aacute;ch &acirc;m, c&aacute;ch nhiệt tốt.<br />
Thứ tư,Khi đ&oacute;ng mở cửa nhẹ nh&agrave;ng, &ecirc;m &aacute;i, kh&ocirc;ng l&agrave;m mất đi kh&ocirc;ng gian của căn ph&ograve;ng.<br />
<br />
<strong>Vật liệu cấu th&agrave;nh:</strong></span></p>

<ul>
	<li><span style="font-size:16px">Thanh Profile : T&iacute;n Phong Window</span></li>
	<li><span style="font-size:16px">Th&eacute;p hộp gia cường.</span></li>
	<li><span style="font-size:16px">K&iacute;nh.</span></li>
	<li><span style="font-size:16px">Hộp k&iacute;nh được bơm kh&iacute; trơ.</span></li>
	<li><span style="font-size:16px">Hệ gioăng k&eacute;p đảm bảo độ k&iacute;n kh&iacute;t cao, gi&uacute;p c&aacute;ch &acirc;m, c&aacute;ch nhiệt tốt.</span></li>
	<li><span style="font-size:16px">Hệ phụ kiện: chốt đa điểm, bản lề, tay nắm, kh&oacute;a,&hellip;</span></li>
	<li><span style="font-size:16px">V&aacute;ch ngăn bằng khung nhựa.</span></li>
	<li><span style="font-size:16px">K&iacute;nh : Cường lực 8mm, 10mm, k&iacute;nh an to&agrave;n 6,38mm 10,38mm.</span></li>
</ul>

<p><span style="font-size:16px">Th&ocirc;ng thường sẽ c&oacute; 2 loại cửa sổ mở quay ra ngo&agrave;i: cửa sổ mở quay ra ngo&agrave;i 1 c&aacute;nh v&agrave; cửa sổ mở quay ra ngo&agrave;i 2 c&aacute;nh. Với mỗi loại cửa sổ sẽ c&oacute; những thiết kế v&agrave; kiểu d&aacute;ng kh&aacute;c nhau, v&ocirc; c&ugrave;ng phong ph&uacute; v&agrave; sang trọng để l&agrave;m h&agrave;i l&ograve;ng kh&aacute;ch h&agrave;ng.<br />
Qu&yacute; kh&aacute;ch c&oacute; nhu cầu sử dụng cửa sổ mở quay ra ngo&agrave;i &ndash; cửa nhựa l&otilde;i th&eacute;p h&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i &ndash; cửa đẹp T&iacute;n Phong để được tư vấn nh&eacute;.</span></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cuasomoquayrangoai/632_P_1370292047060.jpg" style="height:488px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cuasomoquayrangoai/cua-nhua-loi-thep-3.jpg" style="height:417px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cuasomoquayrangoai/luu1397528334.jpg" style="height:650px; width:650px" /></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-30T16:09:45.317' AS DateTime), CAST(N'2017-08-30T16:09:45.317' AS DateTime), N'Cửa nhựa lõi thép  Cửa sổ quay ra ngoài đẹp, Cửa nhựa lõi thép Cửa sổ quay ra ngoài tại tphcm,chất lượng tốt', N'Cửa nhựa lõi thép  Cửa sổ quay ra ngoài đẹp, Cửa nhựa lõi thép Cửa sổ quay ra ngoài tại tphcm,chất lượng tốt', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (9, N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở trượt', N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở trượt', N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở trượt tại TPHCM', N'CNLT-CD08', N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở trượt tại TPHCM', N'/Assets/Admin/DataUpload/images/cuasomotruot/av.jpg', NULL, CAST(1700000 AS Decimal(18, 0)), CAST(1600000 AS Decimal(18, 0)), 1, N'<p dir="ltr" style="text-align:center"><strong><span style="color:#27ae60"><span style="font-size:24px">CỬA NHỰA L&Otilde;I TH&Eacute;P CAO CẤP T&Iacute;N PHONG: Cửa sổ mở trượt</span></span></strong></p>

<p dir="ltr"><span style="font-size:16px">Cửa sổ mở trượt l&agrave; loại cửa c&oacute; t&iacute;nh năng ưu việt nhất hiện nay n&ecirc;n được sử dụng kh&aacute; phổ biến tr&ecirc;n thế giới; &nbsp;ph&ugrave; hợp với mọi c&ocirc;ng tr&igrave;nh từ nh&agrave; thấp tầng đến nh&agrave; cao tầng. Kiểu cửa sổ n&agrave;y vừa tạo ra phong c&aacute;ch ấn tượng l&agrave;m nổi bật kiến tr&uacute;c hiện đại vừa tạo n&ecirc;n kh&ocirc;ng gian kho&aacute;ng đạt cho căn ph&ograve;ng.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>6 ưu điểm nổi bật của cửa sổ mở trượt:</strong></span></p>

<ul dir="ltr">
	<li><span style="font-size:16px">Đ&acirc;y l&agrave; loại cửa c&oacute; c&aacute;nh mở bằng c&aacute;ch trượt tr&ecirc;n c&aacute;c ray.</span></li>
	<li><span style="font-size:16px">C&oacute; gi&aacute; th&agrave;nh rẻ hơn so với c&aacute;c loại cửa kh&aacute;c từ cửa nhựa l&otilde;i th&eacute;p.</span></li>
	<li><span style="font-size:16px">Khi đ&oacute;ng mở kh&ocirc;ng ảnh hưởng đến kh&ocirc;ng gian v&agrave; diện t&iacute;ch căn ph&ograve;ng.</span></li>
	<li><span style="font-size:16px">Tr&aacute;nh được nguy cơ gi&oacute; đập c&aacute;nh cửa.</span></li>
	<li><span style="font-size:16px">Diện t&iacute;ch mở tối đa bằng &frac12; &ocirc; cửa.</span></li>
	<li><span style="font-size:16px">Đ&oacute;ng mở nhẹ nh&agrave;ng, &ecirc;m &aacute;i.</span></li>
</ul>

<p dir="ltr"><span style="font-size:16px"><strong>Vật liệu cấu th&agrave;nh cửa sổ mở trượt:</strong></span></p>

<ul dir="ltr">
	<li><span style="font-size:16px">Thanh uPVC (khu&ocirc;n cửa, khung c&aacute;nh).</span></li>
	<li><span style="font-size:16px">Th&eacute;p hộp gia cường.</span></li>
	<li><span style="font-size:16px">K&iacute;nh (an to&agrave;n, cường lực).</span></li>
	<li><span style="font-size:16px">Hộp k&iacute;nh được bơm kh&iacute; trơ c&oacute; t&aacute;c dụng giảm sự truyền &acirc;m, truyền nhiệt.</span></li>
	<li><span style="font-size:16px">Hệ gioăng lọc bụi.</span></li>
	<li><span style="font-size:16px">Hệ phụ kiện kim kh&iacute;: chốt đa điểm, chốt con lăn, tay nắm, kh&oacute;a,&hellip;</span></li>
</ul>

<p dir="ltr"><span style="font-size:16px">Cửa sổ mở trượt sở hữu n&eacute;t hiện đại, c&acirc;n đối, m&agrave;u sắc đa dạng mang đậm phong c&aacute;ch kiến tr&uacute;c tạo n&ecirc;n t&iacute;nh thẩm mỹ cao cho căn nh&agrave;. Mặt kh&aacute;c c&ograve;n c&oacute; khả năng chịu lực cao, kh&ocirc;ng bị cong v&ecirc;nh sau thời gian d&agrave;i sử dụng.</span></p>

<p dir="ltr"><span style="font-size:16px">Nếu qu&yacute; kh&aacute;ch muốn tham khảo th&ecirc;m c&aacute;c mẫu cửa nhựa cao cấp kh&aacute;c th&igrave; h&atilde;y đến với cửa đẹp T&iacute;n Phong</span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cuasomotruot/cua_so_mo_truot-3%20canh.jpg" style="height:689px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cuasomotruot/cua_so_mo_truot_4_canh.jpg" style="height:454px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cuasomotruot/image011.jpg" style="height:487px; width:650px" /></span></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-30T16:16:32.523' AS DateTime), CAST(N'2017-08-30T16:16:32.523' AS DateTime), N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở trượt tại TPHCM giá cả hợp lý, thiết kế đẹp', N'Cửa nhựa lõi thép Tín Phong: Cửa sổ mở trượt tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (10, N'Cửa nhựa lõi thép Tín Phong: Vách ngăn kính, kết hợp cửa nhựa', N'Cửa nhựa lõi thép Tín Phong: Vách ngăn kính, kết hợp cửa nhựa', N'Cửa nhựa lõi thép Tín Phong: Vách ngăn kính, kết hợp cửa nhựa tại TPHCM', N'CNLT-CD09', N'Cửa nhựa lõi thép Tín Phong: Vách ngăn kính, kết hợp cửa nhựa tại TPHCM', N'/Assets/Admin/DataUpload/images/vachngankin/av.jpg', NULL, CAST(1900000 AS Decimal(18, 0)), CAST(1800000 AS Decimal(18, 0)), 1, N'<p dir="ltr" style="text-align:center"><strong><span style="color:#27ae60"><span style="font-size:24px">CỬA NHỰA L&Otilde;I TH&Eacute;P CAO CẤP T&Iacute;N PHONG: V&aacute;ch ngăn k&iacute;nh, kết hợp cửa nhựa</span></span></strong></p>

<p dir="ltr"><span style="font-size:16px">Cửa nhựa l&otilde;i th&eacute;p cao cấp T&iacute;n Phong: v&aacute;ch ngăn k&iacute;nh kết hợp cửa nhựa thường được sử dụng cho hệ cửa đi, cửa sổ&hellip;với những ưu thế đặc biệt của m&igrave;nh đ&atilde; trở th&agrave;nh sự lựa chọn thay thế rất tốt cho c&aacute;c sản phẩm cửa truyền thống sử dụng từ gỗ, sắt,&hellip;</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>7 ưu điểm tuyệt vời của CỬA NHỰA L&Otilde;I TH&Eacute;P CAO CẤP T&Iacute;N PHONG: V&aacute;ch ngăn k&iacute;nh, kết hợp cửa nhựa:</strong></span></p>

<ul>
	<li><span style="font-size:16px">C&oacute; t&iacute;nh thẩm mỹ rất cao.</span></li>
	<li><span style="font-size:16px">Độ bền v&agrave; độ ổn định cao; &iacute;t bị ảnh hưởng bởi m&ocirc;i trường, kh&ocirc;ng bị cong v&ecirc;nh hay gỉ s&eacute;t như gỗ, sắt.</span></li>
	<li><span style="font-size:16px">Gi&aacute; th&agrave;nh rẻ hơn so với c&aacute;c sản phẩm c&oacute; vật liệu tương tự, đặc biệt l&agrave; gỗ.</span></li>
	<li><span style="font-size:16px">Thi c&ocirc;ng lắp đặt nhanh.</span></li>
	<li><span style="font-size:16px">C&aacute;ch &acirc;m c&aacute;ch nhiệt tốt, giảm tối đa tiếng ồn.</span></li>
	<li><span style="font-size:16px">Tiết kiệm chi ph&iacute; khi sử dụng.</span></li>
	<li><span style="font-size:16px">Mẫu m&atilde;, m&agrave;u sắc đa dạng, ph&ugrave; hợp với nhiều kiểu c&ocirc;ng tr&igrave;nh, kiến tr&uacute;c kh&aacute;c nhau.</span></li>
</ul>

<p dir="ltr"><span style="font-size:16px"><strong>Th&ocirc;ng tin chi tiết mẫu v&aacute;ch ngăn k&iacute;nh khung nhựa l&otilde;i th&eacute;p uPVC:</strong></span></p>

<ul dir="ltr">
	<li><span style="font-size:16px">V&aacute;ch ngăn bằng khung nhựa, k&iacute;nh cường lực.</span></li>
	<li><span style="font-size:16px">Profile : T&iacute;n Phong Window.</span></li>
	<li><span style="font-size:16px">K&iacute;nh : Cường lực 8mm, 10mm, k&iacute;nh an to&agrave;n 6,38mm 10,38mm .</span></li>
</ul>

<p dir="ltr"><span style="font-size:16px"><em>Hiện nay cửa nhựa cao cấp T&iacute;n Phong đ&atilde; xuất hiện rất nhiều loại h&agrave;ng giả, h&agrave;ng k&eacute;m chất lượng. Vậy n&ecirc;n h&atilde;y đến với cửa đẹp T&iacute;n Phon&ndash; ch&uacute;ng t&ocirc;i cam kết:</em></span></p>

<ul dir="ltr">
	<li><span style="font-size:16px">Đảm bảo Ti&ecirc;u chuẩn sản xuất, lắp đặt cửa nhựa cao cấp T&iacute;n Phong Window.</span></li>
	<li><span style="font-size:16px">Hướng dẫn, tư vấn kỹ lưỡng cho kh&aacute;ch h&agrave;ng tất cả c&aacute;c th&ocirc;ng tin cần thiết.</span></li>
	<li><span style="font-size:16px">Đội ngũ kỹ thuật v&agrave; thợ lắp đặt c&oacute; tr&igrave;nh độ chuy&ecirc;n m&ocirc;n cao.</span></li>
	<li><span style="font-size:16px">Chế độ bảo h&agrave;nh tốt</span></li>
</ul>

<p style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/vachngankin/lap-dat-thi-cong-vach-ngan-cua-nhom-kinh.jpg" style="height:488px; width:650px" /></span></p>

<p style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/vachngankin/thuanphat-vachngankinh(1).jpg" style="height:517px; width:650px" /></span></p>

<p style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/vachngankin/vach-nhua-upvc-c3.jpg" style="height:487px; width:650px" /></span></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-30T16:22:07.857' AS DateTime), CAST(N'2017-08-30T16:22:07.857' AS DateTime), N'Cửa nhựa lõi thép  Vách ngăn kính, kết hợp cửa nhựa  đẹp, Cửa nhựa lõi thép  Vách ngăn kính, kết hợp cửa nhựa tại tphcm,chất lượng tốt', N'Cửa nhựa lõi thép Tín Phong: Vách ngăn kính, kết hợp cửa nhựa tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (11, N'Cửa nhôm xingfa Tín Phong cao cấp: MẪU CỬA 1 CÁNH', N'Cửa nhôm xingfa Tín Phong cao cấp: MẪU CỬA 1 CÁNH', N'Cửa nhôm xingfa Tín Phong cao cấp: MẪU CỬA 1 CÁNH tại TPHCM', N'CNXF-CD01', N'Cửa nhôm xingfa Tín Phong cao cấp: MẪU CỬA 1 CÁNH tại TPHCM', N'/Assets/Admin/DataUpload/images/xinfa1canh/av.jpg', NULL, CAST(2500000 AS Decimal(18, 0)), CAST(2400000 AS Decimal(18, 0)), 2, N'<p dir="ltr" style="text-align:center"><span style="font-size:24px"><strong><span style="color:#27ae60">CỬA NH&Ocirc;M XINGFA T&Iacute;N PHONG CAO CẤP: MẪU CỬA 1 C&Aacute;NH</span></strong></span></p>

<p dir="ltr"><span style="font-size:16px">Cửa nh&ocirc;m xingfa T&iacute;n Phong: mẫu cửa 1 c&aacute;nh được sản xuất tr&ecirc;n d&acirc;y truyền c&ocirc;ng nghệ ti&ecirc;n tiến, mang đến một sản phẩm c&oacute; vẻ đẹp sang trọng, chất lượng, độ bền cao. &nbsp;Vậy n&ecirc;n ch&uacute;ng được ứng dụng rộng r&atilde;i từ c&aacute;c c&ocirc;ng tr&igrave;nh nhỏ cho tới c&ocirc;ng tr&igrave;nh lớn, c&aacute;c to&agrave;n nh&agrave; cao tầng, c&aacute;c biệt thự v&agrave; chung cư cao cấp. &nbsp;</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>CẤU TẠO CỬA ĐI MỞ QUAY 1 C&Aacute;NH NH&Ocirc;M XINGFA T&iacute;n Phong:</strong></span></p>

<ul dir="ltr">
	<li><span style="font-size:16px">Được tạo th&agrave;nh bởi c&aacute;c thanh profile nh&ocirc;m Xingfa kết hợp c&ugrave;ng khoang rỗng v&agrave; hai đường g&acirc;n gia cường. Thanh nh&ocirc;m Xingfa được cắt g&oacute;c ch&iacute;nh x&aacute;c 45 độ, &aacute;p dụng c&ocirc;ng nghệ &eacute;p g&oacute;c hiện đại gi&uacute;p g&oacute;c cửa lu&ocirc;n k&iacute;n kh&iacute;t, chống nước x&acirc;m nhập v&agrave; v&ocirc; c&ugrave;ng vững chắc.</span></li>
	<li><span style="font-size:16px">Bề mặt được bao phủ bởi lớp sơn tĩnh điện cao cấp chống oxi h&oacute;a, bạc m&agrave;u sau thời gian d&agrave;i sử dụng.</span></li>
	<li><span style="font-size:16px">Bộ phụ kiện cửa nh&ocirc;m cao cấp.</span></li>
	<li><span style="font-size:16px">K&iacute;nh: k&iacute;nh an to&agrave;n, k&iacute;nh cường lực,&hellip;</span></li>
	<li><span style="font-size:16px">M&agrave;u sắc đa dạng: Trắng, n&acirc;u, đen, ghi v&agrave; m&agrave;u v&acirc;n gỗ.</span></li>
	<li><span style="font-size:16px">Sử dụng 100% keo sản xuất chất lượng, c&oacute; thương hiệu gi&uacute;p tăng độ bền, khả năng đ&agrave;n hồi, chịu nhiệt cao.</span></li>
</ul>

<p dir="ltr">&nbsp;</p>

<p dir="ltr"><span style="font-size:16px"><strong>5 ĐẶC T&Iacute;NH ƯU VIỆT KHI QU&Yacute; KH&Aacute;CH SỬ DỤNG MẪU CỬA 1 C&Aacute;NH NH&Ocirc;M XINGFA:</strong></span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ nhất: c</strong>&oacute; t&iacute;nh c&aacute;ch &acirc;m, c&aacute;ch nhiệt v&agrave; độ k&iacute;n kh&iacute;t cao.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ hai: c</strong>ửa c&oacute; thiết kế độc đ&aacute;o c&oacute; thể mở v&agrave;o ph&iacute;a trong hay ngo&agrave;i t&ugrave;y theo y&ecirc;u cầu.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ ba: v</strong>ững chắc, chống va đập mạnh.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ tư: l</strong>ớp sơn tĩnh điện gi&uacute;p cửa bền m&agrave;u, chống chọi lại sự khắc nghiệt của thời tiết, kh&iacute; hậu.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ năm: t</strong>huận tiện cho việc vệ sinh, bảo dưỡng cửa.</span></p>

<p dir="ltr"><span style="font-size:16px">Nếu c&ocirc;ng tr&igrave;nh của qu&yacute; kh&aacute;ch đang dần ho&agrave;n th&agrave;nh h&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i &ndash; cửa đẹp T&iacute;n Phong để được tư vấn hệ cửa ph&ugrave; hợp với thi&ecirc;t kế nh&eacute;.</span></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xinfa1canh/cua-di-1-canh-xingfa.jpg" style="height:487px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xinfa1canh/cua-di-mo-quay-1-canh-vach-kinh-nhom-xingfa.jpg" style="height:594px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xinfa1canh/cua-nhom-xingfa-gia-re%20(8)%20copy.jpg" style="height:447px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xinfa1canh/C%E1%BB%ADa%20%C4%91i%20m%E1%BB%9F%20quay%201%20c%C3%A1nh%20k%C3%ADnh%20m%E1%BB%9F%20nh%C3%B4m%20xingfa.JPG" style="height:866px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:365px; width:650px" /></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-30T16:56:57.113' AS DateTime), CAST(N'2017-08-30T17:05:20.467' AS DateTime), N'Cửa nhôm xingfa Tín Phong cao cấp: MẪU CỬA 1 CÁNH  đẹp, Cửa nhôm xingfa Tín Phong cao cấp: MẪU CỬA 1 CÁNH  tại tphcm,chất lượng tốt', N'Cửa nhôm xingfa Tín Phong cao cấp: MẪU CỬA 1 CÁNH  tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (12, N'Cửa nhôm xingfa Tín Phong cao cấp: Cửa đi 2 cánh mở quay', N'Cửa nhôm xingfa Tín Phong cao cấp: Cửa đi 2 cánh mở quay', N'Cửa nhôm xingfa Tín Phong cao cấp: Cửa đi 2 cánh mở quay tại TPHCM', N'CNXF-CD02', N'Cửa nhôm xingfa Tín Phong cao cấp: Cửa đi 2 cánh mở quay tại TPHCM', N'/Assets/Admin/DataUpload/images/xingfa2canh/av.jpg', NULL, CAST(2500000 AS Decimal(18, 0)), CAST(2400000 AS Decimal(18, 0)), 2, N'<p dir="ltr" style="text-align:center"><strong><span style="color:#27ae60"><span style="font-size:26px">CỬA NH&Ocirc;M XINGFA T&Iacute;N PHONG CAO CẤP: Cửa đi 2 c&aacute;nh mở quay</span></span></strong></p>

<p dir="ltr"><span style="font-size:16px">Cửa nh&ocirc;m xingfa T&iacute;n Phong: cửa đi 2 c&aacute;nh mở quay thường được sử dụng l&agrave;m cửa mặt tiền, cửa đi th&ocirc;ng ph&ograve;ng&hellip;cho c&aacute;c c&ocirc;ng tr&igrave;nh từ nh&agrave; thấp tầng đến c&aacute;c khu chung cư cao cấp. Ngo&agrave;i ra, qu&yacute; kh&aacute;ch c&oacute; thể kết hợp với v&aacute;ch k&iacute;nh hay r&egrave;m cửa để tăng t&iacute;nh thẩm mỹ, sang trọng cho căn ph&ograve;ng. Cửa đi 2 c&aacute;nh mở quay được coi l&agrave; sản phẩm quy c&aacute;ch cửa hiện đại, độc đ&aacute;o v&agrave; tối ưu nhất hiện nay.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Cấu tạo cơ bản cửa nh&ocirc;m Xingfa T&iacute;n Phong cao cấp- cửa đi 2 c&aacute;nh mở quay:</strong></span></p>

<ul dir="ltr">
	<li><span style="font-size:16px">Sản phẩm sử dụng 100% nh&ocirc;m Xingfa chất lượng với c&ocirc;ng nghệ &eacute;p g&oacute;c hiện đại gi&uacute;p tăng khả năng chịu lực v&agrave; c&oacute; độ bền cao; đi k&egrave;m với bộ phụ kiện đồng bộ cao cấp&nbsp;đảm bảo nhẹ nh&agrave;ng, &ecirc;m &aacute;i khi đ&oacute;ng mở.</span></li>
	<li><span style="font-size:16px">Cửa đi mở quay 2 canh nh&ocirc;m Xingfa sử dụng k&iacute;nh an to&agrave;n hoặc k&iacute;nh cường lực cao cấp</span></li>
	<li><span style="font-size:16px">Sử dụng hệ gioăng k&eacute;p</span></li>
	<li><span style="font-size:16px">Cấu tạo ho&agrave;n chỉnh gồm: Khung bao, c&aacute;nh cửa, ke tăng cứng, ke &eacute;p g&oacute;c, &nbsp;keo &eacute;p g&oacute;c cao cấp, keo đi k&iacute;nh, keo đi tường&hellip;</span></li>
	<li><span style="font-size:16px">Phụ kiện đi k&egrave;m: bản lề cối nhỏ, c&oacute; đố động.</span></li>
	<li><span style="font-size:16px">Cam kết chất lượng cửa lu&ocirc;n đạt chuẩn kỹ thuật trước khi xuất xưởng.</span></li>
</ul>

<p dir="ltr"><span style="font-size:16px"><strong>4 đặc trưng cửa đi mở quay nh&ocirc;m XINGFA:</strong></span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ nhất: </strong>c&aacute;ch &acirc;m, c&aacute;ch nhiệt, k&iacute;n kh&iacute;t.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ hai: </strong>thiết kế linh động, dễ sử dụng, c&oacute; thể mở quay v&agrave;o trong hoặc quay ra ngo&agrave;i t&ugrave;y c&ocirc;ng tr&igrave;nh.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ ba: </strong>vệ sinh dễ d&agrave;ng, nhanh ch&oacute;ng, m&agrave;u sắc bền bỉ với thời gian.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ tư: </strong>khả năng chống ch&aacute;y cực tốt, chống va đập gi&oacute; b&atilde;o l&ecirc;n tới cấp 12 cực k&igrave; th&iacute;ch hợp với những c&ocirc;ng tr&igrave;nh nằm ở khu vực thường c&oacute; b&atilde;o lũ.</span></p>

<p dir="ltr"><span style="font-size:16px">Qu&yacute; kh&aacute;ch muốn đặt h&agrave;ng hoặc cần tư vấn về k&iacute;ch thước cửa mang lại t&agrave;i lộc, ph&uacute; qu&yacute;&hellip;</span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/xingfa2canh/35_cua-di-mo-quay-2-canh-nhom-xingfa.jpg" style="height:500px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/xingfa2canh/cua-di-mo-quay-xingfa1.jpg" style="height:488px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/xingfa2canh/cua-nhom-kinh-di-2-canh.jpg" style="height:508px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/xingfa2canh/untitled-1564.png" style="height:637px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:365px; width:650px" /></span></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-30T17:04:55.627' AS DateTime), CAST(N'2017-08-30T23:41:06.197' AS DateTime), N'Cửa nhôm xingfa Tín Phong cao cấp: Cửa đi 2 cánh mở quay  đẹp, Cửa nhôm xingfa Tín Phong cao cấp: Cửa đi 2 cánh mở quay  tại tphcm,chất lượng tốt', N'Cửa nhôm xingfa Tín Phong cao cấp: Cửa đi 2 cánh mở quay tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (13, N'Cửa nhôm xingfa Tín Phong cao cấp: Cửa đi 6 cánh xếp trượt', N'Cửa nhôm xingfa Tín Phong cao cấp: Cửa đi 6 cánh xếp trượt ', N'Cửa nhôm xingfa Tín Phong cao cấp: Cửa đi 6 cánh xếp trượt tại TPHCM', N'CNXF-CD03', N'Cửa nhôm xingfa Tín Phong cao cấp: Cửa đi 6 cánh xếp trượt tại TPHCM', N'/Assets/Admin/DataUpload/images/xingfa6canh/av.jpg', NULL, CAST(1900000 AS Decimal(18, 0)), CAST(1800000 AS Decimal(18, 0)), 2, N'<p dir="ltr" style="text-align:center"><span style="font-size:24px"><strong><span style="color:#27ae60">CỬA NH&Ocirc;M XINGFA T&Iacute;N PHONG CAO CẤP: Cửa đi 6 c&aacute;nh xếp trượt</span></strong></span></p>

<p dir="ltr"><span style="font-size:16px">Cửa đi 6 c&aacute;nh xếp trượt l&agrave; loại cửa khi mở tất cả c&aacute;c c&aacute;nh cửa được xếp gọn về 1 b&ecirc;n gi&uacute;p tiết kiệm tối đa kh&ocirc;ng gian, diện t&iacute;ch mở cửa n&ecirc;n cực k&igrave; &nbsp;th&iacute;ch hợp l&agrave;m cửa mặt tiền cho c&aacute;c căn biệt thự, kh&aacute;ch sạn, chung cư, nh&agrave; h&agrave;ng cao cấp... Vậy th&ocirc;ng số kỹ thuật cửa l&agrave; g&igrave;, độ bền sản phẩm rao sao, t&iacute;nh ưu việt thế n&agrave;o? C&ugrave;ng t&igrave;m hiểu nh&eacute;.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Th&ocirc;ng số kỹ thuật sản phẩm</strong></span></p>

<ul dir="ltr">
	<li><span style="font-size:16px">Thanh nh&ocirc;m Xingfa.</span></li>
	<li><span style="font-size:16px">Độ d&agrave;y: 2mm</span></li>
	<li><span style="font-size:16px">M&agrave;u sắc: trắng, n&acirc;u, ghi, vẫn gỗ&hellip;</span></li>
	<li><span style="font-size:16px">Hệ goăng k&eacute;p</span></li>
	<li><span style="font-size:16px">Phụ kiện cao cấp sử dụng cho hệ cửa nh&ocirc;m T&iacute;n Phong</span></li>
</ul>

<h4 dir="ltr"><span style="font-size:16px"><strong>7 t&iacute;nh ưu việt của cửa đi 6 c&aacute;nh xếp trượt kh&aacute;c biệt so với sản phẩm kh&aacute;c</strong></span></h4>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ nhất:</strong>c&aacute;c c&aacute;nh cửa xếp gọn sang 1 b&ecirc;n, kh&ocirc;ng ảnh hưởng đến kh&ocirc;ng gian sử dụng cũng như c&aacute;ch b&agrave;i tr&iacute; căn ph&ograve;ng.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ hai:</strong>dễ d&agrave;ng vệ sinh v&agrave; bảo dưỡng.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ ba: </strong>tuổi thọ cao dưới mọi t&aacute;c động của thời tiết.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ tư: </strong>chống ồn, c&aacute;ch nhiệt &ndash; tiết kiệm điện khi sử dụng điều h&ograve;a, m&aacute;y lạnh&hellip;</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ năm: c</strong>hịu được &aacute;p lực gi&oacute;.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ s&aacute;u: </strong>dễ vận chuyển v&agrave; lắp đặt.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ bảy: </strong>khả năng đ&oacute;ng mở linh hoạt, nhẹ nh&agrave;ng.</span></p>

<p dir="ltr"><span style="font-size:16px">Cửa đi 6 c&aacute;nh xếp trượt gồm quy c&aacute;ch 3-3 (3 c&aacute;nh mỗi b&ecirc;n xếp gấp) hoặc 5-1 (5 c&aacute;nh xếp gấp &ndash; 1 c&aacute;nh mở quay), n&ecirc;n t&ugrave;y theo số c&aacute;nh sẽ sử dụng phụ kiện ph&ugrave; hợp.<br />
Để biết th&ecirc;m th&ocirc;ng tin qu&yacute; kh&aacute;ch h&atilde;y li&ecirc;n hệ ngay với T&iacute;n Phong để được tư vấn kỹ lưỡng nh&eacute;</span></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:365px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xingfa6canh/cu%20di%20xep%20gap%204%20canh(2).jpg" style="height:460px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xingfa6canh/cua-di-mo-xep-6-canh.jpg" style="height:488px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xingfa6canh/hqdefault.jpg" style="height:488px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xingfa6canh/cua-di-xep-truot-nhom-xingfa.png" style="height:488px; width:650px" /></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-30T17:19:03.457' AS DateTime), CAST(N'2017-08-30T23:50:31.317' AS DateTime), N'Cửa nhôm xingfa Tín Phong cao cấp:  Cửa đi 6 cánh xếp trượt  đẹp, Cửa nhôm xingfa Tín Phong cao cấp:  Cửa đi 6 cánh xếp trượt  tại tphcm,chất lượng tốt', N'Cửa nhôm xingfa Tín Phong cao cấp: Cửa đi 6 cánh xếp trượt tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (14, N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA TRƯỢT VÀ CỐ ĐỊNH', N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA TRƯỢT VÀ CỐ ĐỊNH', N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA TRƯỢT VÀ CỐ ĐỊNH tại TPHCM', N'CNXF-CD04', N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA TRƯỢT VÀ CỐ ĐỊNH tại TPHCM', N'/Assets/Admin/DataUpload/images/xingfatruotvacodinh/av.jpg', NULL, CAST(2000000 AS Decimal(18, 0)), CAST(1900000 AS Decimal(18, 0)), 2, N'<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xingfatruotvacodinh/cua-truot-co-dinh-110mm.jpg" style="height:311px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xingfatruotvacodinh/x95-300x300resize_and_crop.jpg" style="height:650px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xingfatruotvacodinh/cua-truot.gif" style="height:542px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:365px; width:650px" /></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-30T17:56:11.430' AS DateTime), CAST(N'2017-08-30T23:53:02.943' AS DateTime), N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA TRƯỢT VÀ CỐ ĐỊNH tại TPHCM  đẹp, Cửa nhôm xingfa Tín Phong cao cấp: Cửa nhôm xingfa Tín Phong cao cấp: CỬA TRƯỢT VÀ CỐ ĐỊNH tại TPHCM,chất lượng tốt', N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA TRƯỢT VÀ CỐ ĐỊNH tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (15, N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA ĐI 4 CÁNH MỞ QUAY', N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA ĐI 4 CÁNH MỞ QUAY', N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA ĐI 4 CÁNH MỞ QUAY tại TPHCM', N'CNXF-CD05', N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA ĐI 4 CÁNH MỞ QUAY tại TPHCM', N'/Assets/Admin/DataUpload/images/xingfa4canh/av.jpg', NULL, CAST(2500000 AS Decimal(18, 0)), CAST(2400000 AS Decimal(18, 0)), 2, N'<p dir="ltr" style="text-align:center"><span style="font-size:24px"><span style="color:#27ae60"><strong>CỬA NH&Ocirc;M XINGFA T&Iacute;N PHONG CAO CẤP: CỬA ĐI 4 C&Aacute;NH MỞ QUAY</strong></span></span></p>

<p dir="ltr"><span style="font-size:14px">Cửa đi 4 c&aacute;nh mở quay l&agrave; d&ograve;ng sản phẩm cửa nh&ocirc;m xingfa T&iacute;n Phong cao cấp được sản xuất tr&ecirc;n d&acirc;y truyền c&ocirc;ng nghệ hiện đại mang đến một sản phẩm chất lượng với độ tinh xảo sắc n&eacute;t nhằm tăng vẻ đẹp sang trọng cho kiến tr&uacute;c c&ocirc;ng tr&igrave;nh.</span></p>

<p dir="ltr"><span style="font-size:14px"><strong>5 ưu điểm nổi bật của sản phẩm khi sử dụng:</strong></span></p>

<p><span style="font-size:14px"><strong>Thứ nhất: </strong>cửa được mở với khẩu độ lớn nhất, c&oacute; thể đ&oacute;ng hoặc mở từng c&aacute;nh cửa.</span></p>

<p><span style="font-size:14px"><strong>Thứ hai: </strong>c&oacute; t&iacute;nh c&aacute;ch &acirc;m, c&aacute;ch nhiệt cao.</span></p>

<p><span style="font-size:14px"><strong>Thứ ba: </strong>cửa được thiết kế linh hoạt c&oacute; thể mở quay trong hoặc quay ngo&agrave;i t&ugrave;y y&ecirc;u cầu.</span></p>

<p><span style="font-size:14px"><strong>Thứ tư: </strong>cửa c&oacute; đồ bền cao, chịu lực tốt. Bảo dưỡng dễ d&agrave;ng.</span></p>

<p><span style="font-size:14px"><strong>Thứ năm: </strong>90% người ti&ecirc;u d&ugrave;ng đ&aacute;nh gi&aacute; cao về mặt chất lượng cũng như t&iacute;nh thẩm mỹ.</span></p>

<p dir="ltr"><span style="font-size:14px"><strong>Th&ocirc;ng số kỹ thuật:</strong></span></p>

<ul dir="ltr">
	<li><span style="font-size:14px">Thanh profile: nh&ocirc;m Xingfa.</span></li>
	<li><span style="font-size:14px">Độ d&agrave;y nh&ocirc;m: 2.0 mm</span></li>
	<li><span style="font-size:14px">M&agrave;u sắc: trắng, n&acirc;u, ghi, v&acirc;n gỗ,&hellip;</span></li>
	<li><span style="font-size:14px">K&iacute;ch thước: tuỳ chọn</span></li>
	<li><span style="font-size:14px">K&iacute;nh: k&iacute;nh an to&agrave;n, k&iacute;nh cường lực</span></li>
	<li><span style="font-size:14px">Phụ kiện sử dụng d&ograve;ng cao cấp phụ kiện T&iacute;n Phong</span></li>
	<li><span style="font-size:14px">Gioăng k&eacute;p: chất lượng cao.</span></li>
	<li><span style="font-size:14px">Bản lề cối to, c&oacute; đố động</span></li>
</ul>

<p dir="ltr"><span style="font-size:14px">Với d&acirc;y truyền sản xuất hiện đại, quy m&ocirc; lớn c&ugrave;ng đội ngũ nh&acirc;n vi&ecirc;n chuy&ecirc;n nghiệp, l&agrave;nh nghề, chuy&ecirc;n m&ocirc;n cao, ch&uacute;ng t&ocirc;i &ndash; cửa đẹp T&iacute;n Phong&nbsp;cam kết sử dụng nguy&ecirc;n vật liệu ch&iacute;nh h&atilde;ng, tạo ra những sản phẩm cửa c&oacute; chất lượng tốt nhất mang lại sự sang trọng, tinh tế nhất cho ng&ocirc;i nh&agrave; qu&yacute; kh&aacute;ch h&agrave;ng..</span></p>

<p dir="ltr"><span style="font-size:14px">Để c&oacute; th&ocirc;ng tin cụ thể cũng như được tư vấn tốt nhất về sản phẩm nh&eacute; vui long li&ecirc;n lạc với ch&uacute;ng t&ocirc;i</span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:14px"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:253px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:14px"><img alt="" src="/Assets/Admin/DataUpload/images/xingfa4canh/2476722_177131.jpg" style="height:348px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:14px"><img alt="" src="/Assets/Admin/DataUpload/images/xingfa4canh/cua%20di%20mo%204%20canh%20xingfa(1).JPG" style="height:488px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:14px"><img alt="" src="/Assets/Admin/DataUpload/images/xingfa4canh/cua-di-nhom-xingfa-mo-quay-4-canh.jpg" style="height:310px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:14px"><img alt="" src="/Assets/Admin/DataUpload/images/xingfa4canh/xingfa_di_quay_4.jpg" style="height:253px; width:650px" /></span></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-30T23:39:16.757' AS DateTime), CAST(N'2017-08-30T23:42:09.243' AS DateTime), N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA ĐI 4 CÁNH MỞ QUAY  đẹp, Cửa nhôm xingfa Tín Phong cao cấp: CỬA ĐI 4 CÁNH MỞ QUAY tại tphcm,chất lượng tốt', N'Cửa nhôm XingFa Tín Phong: CỬA ĐI 4 CÁNH MỞ QUAY  tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (16, N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA MỞ LẬT', N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA MỞ LẬT', N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA MỞ LẬT tại TPHCM', N'CNXF-CD06', N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA MỞ LẬT tại TPHCM', N'/Assets/Admin/DataUpload/images/xingfamolat/av.jpg', NULL, CAST(2500000 AS Decimal(18, 0)), CAST(2400000 AS Decimal(18, 0)), 2, N'<p dir="ltr" style="text-align:center"><span style="color:#27ae60"><span style="font-size:24px"><strong>CỬA NH&Ocirc;M XINGFA T&Iacute;N PHONG CAO CẤP : CỬA MỞ LẬT</strong></span></span></p>

<p dir="ltr"><span style="font-size:16px">Cửa sổ mở lật l&agrave; d&ograve;ng sản phẩm của cửa nh&ocirc;m xingfa cao cấp c&oacute; kiểu d&aacute;ng sang trọng, m&agrave;u sắc phong ph&uacute; bắt mắt. Đ&acirc;y l&agrave; kiểu cửa mở hất ra ngo&agrave;i với g&oacute;c 45 độ c&oacute; th&ecirc;m thanh hạn vị gi&uacute;p cho cửa c&oacute; g&oacute;c mở cố định v&agrave; kh&ocirc;ng tự đ&oacute;ng sập xuống trong qu&aacute; tr&igrave;nh sử dụng. Cửa mở lật kh&ocirc;ng hề g&acirc;y ảnh hưởng đến kh&ocirc;ng gian v&agrave; diện t&iacute;ch sử dụng của căn ph&ograve;ng khi đ&oacute;ng mở.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>6 ưu điểm nổi bật của cửa mở lật khi qu&yacute; kh&aacute;ch lắp đặt v&agrave; sử dụng:</strong></span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ nhất: </strong>c&oacute; khả năng chịu lực cao, cửa c&oacute; độ khỏe khoắn v&agrave; chắc chắn cao gấp nhiều lần so với c&aacute;c d&ograve;ng cửa kh&aacute;c tr&ecirc;n thị trường.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ hai: </strong>sản phẩm kh&ocirc;ng bị cong v&ecirc;nh, mối một hay bị oxi h&oacute;a do điều kiện khắc nghiệt của thời tiết.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ ba: </strong>v&igrave; sản phẩm l&agrave;m từ nh&ocirc;m xingfa n&ecirc;n c&oacute; khả năng chịu nhiệt cao v&agrave; c&oacute; t&iacute;nh chống ch&aacute;y rất tốt.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ tư: </strong>sản phẩm c&oacute; t&iacute;nh năng c&aacute;ch &acirc;m, c&aacute;ch nhiệt tốt; mang lại kh&ocirc;ng gian y&ecirc;n tĩnh cho căn ph&ograve;ng đặc biệt d&agrave;nh cho những ng&ocirc;i nh&agrave; nằm ở trục giao th&ocirc;ng lớn hay KCN.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ năm: </strong>k&iacute;nh cường lực c&oacute; độ an to&agrave;n cao, rất hiếm khi vỡ nhưng nếu vỡ sẽ kh&ocirc;ng g&acirc;y s&aacute;t thương cho người.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ s&aacute;u:</strong>bề mặt sản phẩm lu&ocirc;n s&aacute;ng b&oacute;ng theo thời gian, lại dễ d&agrave;ng vệ sinh.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Cấu tạo:</strong></span></p>

<ul dir="ltr">
	<li><span style="font-size:16px">Hệ thống chốt đa điểm v&agrave; hệ gioăng k&eacute;p.</span></li>
	<li><span style="font-size:16px">Thanh định vị, thanh uPVC .</span></li>
	<li><span style="font-size:16px">K&iacute;nh.</span></li>
	<li><span style="font-size:16px">Hệ phụ kiện như: bản lề chữ A, tay nắm, kh&oacute;a,&hellip;</span></li>
</ul>

<p dir="ltr"><span style="font-size:16px">Đặc biệt cửa nh&ocirc;m Xingfa T&iacute;n Phong &ndash; cửa mở lật l&agrave; d&ograve;ng sản phẩm rất đẹp, sang trọng. Qu&yacute; kh&aacute;ch h&atilde;y đến cửa đẹp T&iacute;n Phong- c&ocirc;ng ty lắp đặt nh&ocirc;m k&iacute;nh cao cấp số 1 Việt Nam để được c&aacute;c chuy&ecirc;n gia tư vấn miễn ph&iacute; về c&aacute;c hệ cửa nh&ocirc;m cao cấp ph&ugrave; hợp với ng&ocirc;i nh&agrave;.</span></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:365px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xingfamolat/cua-nhom-xingfa-kieu-mo-lat-he-55-534067j22242.jpg" style="height:488px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xingfamolat/5c9f09cf25a4cdfa94b5.jpg" style="height:415px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xingfamolat/2016-09-17-08-34-45xingfa-nhap-khau-61-.jpg" style="height:343px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xingfamolat/36_cua-so-mo-quay-mo-hat-nhom-xingfa.jpg" style="height:488px; width:650px" /></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-30T23:58:10.720' AS DateTime), CAST(N'2017-08-30T23:58:10.720' AS DateTime), N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA MỞ LẬT  đẹp, Cửa nhôm xingfa Tín Phong cao cấp: CỬA MỞ LẬT  tại tphcm,chất lượng tốt', N'Cửa nhôm XingFa Tín Phong: CỬA MỞ LẬT  tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (17, N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA SỔ MỞ QUAY', N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA SỔ MỞ QUAY', N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA SỔ MỞ QUAY tại TPHCM', N'CNXF-CD07', N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA SỔ MỞ QUAY tại TPHCM', N'/Assets/Admin/DataUpload/images/xingfamoquay/av.jpg', NULL, CAST(2300000 AS Decimal(18, 0)), CAST(2200000 AS Decimal(18, 0)), 2, N'<p dir="ltr" style="text-align:center"><span style="color:#27ae60"><strong><span style="font-size:24px">CỬA NH&Ocirc;M XINGFA T&Iacute;N PHONG CAO CẤP: CỬA SỔ MỞ QUAY</span></strong></span></p>

<p dir="ltr"><br />
<span style="font-size:16px">Cửa nh&ocirc;m xingfa T&iacute;n Phong cao cấp c&oacute; thiết kế đặc trưng bền &ndash; chịu lực - an to&agrave;n &ndash; sang trọng &ndash; hiện đại.<br />
&rarr; Qu&yacute; kh&aacute;ch th&iacute;ch hệ cửa nh&ocirc;m cao cấp xingfa?<br />
&rarr; Qu&yacute; kh&aacute;ch th&iacute;ch cửa sổ mở quay?<br />
&rarr; Qu&yacute; kh&aacute;ch ph&acirc;n v&acirc;n hệ cửa n&agrave;y c&oacute; ph&ugrave; hợp với thiết kế ng&ocirc;i nh&agrave;? C&oacute; an to&agrave;n v&agrave; bền bỉ?<br />
Xin mời bạn tham khảo những th&ocirc;ng tin dưới đ&acirc;y.<br />
<br />
<strong>Cấu tạo sản phẩm:</strong><br />
-Được tạo th&agrave;nh bởi hệ profile nh&ocirc;m định h&igrave;nh Xingfa hệ 55 nhập khẩu.<br />
-Bề mặt cửa được bao phủ bởi lớp sơn tĩnh điện cao cấp chống bạc m&agrave;u, oxi h&oacute;a theo thời gian.<br />
-Bộ phụ kiện kim kh&iacute; cao cấp chốt đa điểm.<br />
-Hệ gioăng EPDM 5Mpa.<br />
-K&iacute;nh: Lựa chọn k&iacute;nh an to&agrave;n, k&iacute;nh cường lực.<br />
-Sử dụng keo sản xuất v&agrave; lắp đặt chất lượng từ Bỉ.<br />
<br />
<strong>5 ưu điểm tuyệt vời của cửa nh&ocirc;m xingfa:</strong><br />
-Định vị được g&oacute;c mở cửa.<br />
-C&oacute; độ th&ocirc;ng tho&aacute;ng cao.<br />
-Bền đẹp, dễ sử dụng, vệ sinh.<br />
-Cách &acirc;m ,cách nhi&ecirc;̣t &nbsp;tốt.<br />
-C&oacute; thể mở quay v&agrave;o trong hoặc mở quay ra ngo&agrave;i t&ugrave;y y&ecirc;u cầu.<br />
<br />
<strong>3 lợi &iacute;ch của cửa mở quay ra ngoài</strong><br />
-Phù hợp t&acirc;̣p quán sử dụng của người Việt.<br />
-Ti&ecirc;́t ki&ecirc;̣m di&ecirc;̣n tích sử dụng.<br />
-Th&iacute;ch hợp với nh&agrave; thấp tầng.<br />
<br />
<strong>3 lợi &iacute;ch cửa sổ mở quay v&agrave;o trong</strong><br />
-Hạn ch&ecirc;́ nguy cơ gió đ&acirc;̣p mạnh.<br />
-Phù hợp cho các toà nhà cao t&acirc;̀ng, c&ocirc;ng tr&igrave;nh hạn chế diện t&iacute;ch b&ecirc;n ngo&agrave;i.<br />
-Tạo điều kiện thuận lợi cho vi&ecirc;̣c lắp lưới ch&ocirc;́ng c&ocirc;n trùng.<br />
C&ograve;n chần chừ g&igrave;, qu&yacute; kh&aacute;ch h&atilde;y ĐẶT H&Agrave;NG ngay để được tư vấn miễn ph&iacute; về k&iacute;ch thước v&agrave; phong thủy cửa đẹp nhất nh&eacute;.</span></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:365px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xingfamoquay/ce3a37b8fdb519796fb930d61386c924.jpg" style="height:366px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xingfamoquay/cua-so-mo-quay-nhom-xingfa3.jpg" style="height:488px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xingfamoquay/cua-so-mo-quay-ra-ngoai-1.jpg" style="height:488px; width:650px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xingfamoquay/sss(1).JPG" style="height:488px; width:650px" /></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-31T00:12:03.757' AS DateTime), CAST(N'2017-08-31T00:12:03.757' AS DateTime), N'Cửa nhôm xingfa Tín Phong cao cấp: CỬA SỔ MỞ QUAY  đẹp, Cửa nhôm xingfa Tín Phong cao cấp: CỬA SỔ MỞ QUAY  tại tphcm,chất lượng tốt', N'Cửa nhôm XingFa Tín Phong: CỬA SỔ MỞ QUAY  tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (18, N'Cửa nhôm xingfa Tín Phong cao cấp: HỆ VÁCH DỰNG', N'Cửa nhôm xingfa Tín Phong cao cấp: HỆ VÁCH DỰNG', N'Cửa nhôm xingfa Tín Phong cao cấp: HỆ VÁCH DỰNG tại TPHCM', N'CNXF-CD08', N'Cửa nhôm xingfa Tín Phong cao cấp: HỆ VÁCH DỰNG tại TPHCM', N'/Assets/Admin/DataUpload/images/XINGFAmatdung/av.jpg', NULL, CAST(1800000 AS Decimal(18, 0)), CAST(1700000 AS Decimal(18, 0)), 2, N'<p dir="ltr" style="text-align:center"><span style="font-size:24px"><span style="color:#27ae60"><strong>CỬA NH&Ocirc;M XINGFA T&Iacute;N PHONG CAO CẤP: HỆ V&Aacute;CH DỰNG</strong></span></span></p>

<p dir="ltr"><span style="font-size:16px">Cửa nh&ocirc;m xingfa <strong><em>T&iacute;n Phong&nbsp;</em></strong>cao cấp được sản xuất từ vật liệu nh&ocirc;m cao cấp khắc phục tối ưu những nhược điểm của nh&ocirc;m th&ocirc;ng thường. Sản phẩm n&agrave;y c&oacute; khả năng c&aacute;ch &acirc;m, c&aacute;ch nhiệt tốt nhờ c&oacute; độ k&iacute;n kh&iacute;t cao giữa khung v&agrave; c&aacute;nh cửa, đi k&egrave;m với hệ phụ kiện chất lượng loại 1 đ&aacute;p ứng được t&acirc;t cả những y&ecirc;u cầu khắt khe về thiết kế, kiến tr&uacute;c&hellip; cho c&ocirc;ng tr&igrave;nh.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong><em>5 đặc t&iacute;nh tối ưu khi qu&yacute; kh&aacute;ch d&ugrave;ng hệ v&aacute;ch dựng cửa nh&ocirc;m xingfa T&iacute;n Phong</em></strong></span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ nhất: </strong>kết cấu đơn giản, tải trọng nhẹ gi&uacute;p sản xuất, lắp đặt nhanh.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ hai: </strong>v&igrave; sản phẩm c&oacute; c&aacute;c thanh đố ngang, dọc ẩn v&agrave;o b&ecirc;n trong &nbsp;n&ecirc;n khi nh&igrave;n b&ecirc;n ngo&agrave;i c&ocirc;ng tr&igrave;nh như một tấm k&iacute;nh khổng lồ mang đến một hệ kiến tr&uacute;c hiện đại, sang trọng, mỹ quan cao. &nbsp;</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ ba: </strong>khả năng tạo h&igrave;nh linh hoạt, mẫu m&atilde;, kiểu d&aacute;ng đa dạng.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ tư: </strong>khả năng chịu lực tốt, chống va đập mạnh n&ecirc;n đ&aacute;p ứng y&ecirc;u cầu cao về mặt kỹ thuật.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>Thứ năm: t</strong>ạo n&eacute;t đẹp hiện đại cho c&ocirc;ng tr&igrave;nh, kh&ocirc;ng gian b&ecirc;n trong được mở rộng.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong><em>Th&ocirc;ng số kỹ thuật hệ v&aacute;ch dựng cửa nh&ocirc;m xingfa</em></strong></span></p>

<ul dir="ltr">
	<li><span style="font-size:16px">Thanh nh&ocirc;m Xingfa.</span></li>
	<li><span style="font-size:16px">K&iacute;nh: k&iacute;nh an to&agrave;n, k&iacute;nh cường lực&hellip;</span></li>
	<li><span style="font-size:16px">Hệ gioăng l&agrave;m từ vật liệu cao cấp.</span></li>
	<li><span style="font-size:16px">M&agrave;u sắc phong ph&uacute;: trắng, ghi, n&acirc;u, v&acirc;n gỗ,...</span></li>
	<li><span style="font-size:16px">K&iacute;ch thước: tuỳ chọn</span></li>
</ul>

<p dir="ltr"><span style="font-size:16px">Nếu qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; nhu cầu mua sử dụng &nbsp;v&agrave; lắp đặt hệ v&aacute;ch dựng nh&ocirc;m xingfa h&atilde;y đến với cửa đẹp <strong><em>T&iacute;n Phong&nbsp;</em></strong>- ch&uacute;ng t&ocirc;i lu&ocirc;n sẵn s&agrave;ng hỗ trợ tốt nhất.</span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:365px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/XINGFAmatdung/mat-dung-lo-do-mhom-xingfa-he-65-2.jpg" style="height:650px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/XINGFAmatdung/maxresdefault.jpg" style="height:366px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/XINGFAmatdung/Vach-dung-nhom-Xinhfa-Mat-dung-nhom-Xinhfa.gif" style="height:542px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/XINGFAmatdung/vach-mat-dung-giau-do-xingfa-he-65.jpg" style="height:488px; width:650px" /></span></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a></p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-31T00:22:36.173' AS DateTime), CAST(N'2017-08-31T00:22:36.173' AS DateTime), N'Cửa nhôm xingfa Tín Phong cao cấp: HỆ VÁCH DỰNG  đẹp, Cửa nhôm xingfa Tín Phong cao cấp: HỆ VÁCH DỰNG  tại tphcm,chất lượng tốt', N'Cửa nhôm XingFa Tín Phong: HỆ VÁCH DỰNG tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (19, N'Cửa Kính Cường Lực Tín Phong: Cửa kính cường lực mở lùa', N'Cửa Kính Cường Lực Tín Phong: Cửa kính cường lực mở lùa', N'Cửa Kính Cường Lực Tín Phong: Cửa kính cường lực mở lùa tại TPHCM', N'CKCL01', N'Cửa Kính Cường Lực Tín Phong: Cửa kính cường lực mở lùa tại TPHCM', N'/Assets/Admin/DataUpload/images/ckclmolua/av.jpg', NULL, CAST(1700000 AS Decimal(18, 0)), CAST(1600000 AS Decimal(18, 0)), 3, N'<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ckclmolua/cua-kinh-cuong-luc-khung-nhom-1.jpg" style="height:401px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ckclmolua/cua_kinh_cuong_luc_lua_phong_tam(1).jpg" style="height:553px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ckclmolua/kinh-cuong-luc-mo-truot.jpg" style="height:488px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ckclmolua/kinh_cuong_luc_gia_re.JPG" style="height:507px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:365px; width:650px" /></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-31T00:30:44.203' AS DateTime), CAST(N'2017-08-31T00:30:44.203' AS DateTime), N'Cửa Kính Cường Lực Tín Phong: Cửa kính cường lực mở lùa đẹp, Cửa Kính Cường Lực Tín Phong: Cửa kính cường lực mở lùa tại TPHCM,chất lượng cao', N'Cửa Kính Cường Lực Tín Phong: Cửa kính cường lực mở lùa tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (20, N'Cửa Kính Cường Lực Tín Phong: Cửa kính cường lực mở quay', N'Cửa Kính Cường Lực Tín Phong: Cửa kính cường lực mở quay', N'Cửa Kính Cường Lực Tín Phong: Cửa kính cường lực mở quay tại TPHCM', N'CKCL02', N'Cửa Kính Cường Lực Tín Phong: Cửa kính cường lực mở quay tại TPHCM', N'/Assets/Admin/DataUpload/images/ckclmoquay/av.jpg', NULL, CAST(1700000 AS Decimal(18, 0)), CAST(1600000 AS Decimal(18, 0)), 3, N'<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ckclmoquay/18579347_1270472346385160_714421051_n.jpg" style="height:568px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ckclmoquay/Cua%20kinh%20thuy%20luc%201%20canh.jpg" style="height:488px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ckclmoquay/cua-kinh-cuong-luc-12-ly-1.jpg" style="height:488px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ckclmoquay/cua-kinh-mo-quay-01-canh.jpg" style="height:468px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:365px; width:650px" /></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-31T00:37:24.210' AS DateTime), CAST(N'2017-08-31T00:37:24.210' AS DateTime), N'Cửa Kính Cường Lực Tín Phong: Cửa kính cường lực mở quay đẹp, Cửa Kính Cường Lực Tín Phong: Cửa kính cường lực mở quay tại TPHCM,chất lượng cao', N'Cửa Kính Cường Lực Tín Phong: Cửa kính cường lực mở quay tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (21, N'Phòng Tắm Kính Cường Lực Tín Phong', N'Phòng Tắm Kính Cường Lực Tín Phong', N'Phòng Tắm Kính Cường Lực Tín Phong tại TPHCM', N'CKCL03', N'Phòng Tắm Kính Cường Lực Tín Phong tại TPHCM
Chất lượng cao, nhiều mẫu để lựa chọn
Tiêu chuẩn kính theo chất lượng quốc tế', N'/Assets/Admin/DataUpload/images/ptkcl/av.jpg', NULL, CAST(1700000 AS Decimal(18, 0)), CAST(1600000 AS Decimal(18, 0)), 3, N'<p style="text-align:center"><strong><span style="font-size:24px"><span style="color:#27ae60">MỘT SỐ MẪU PH&Ograve;NG TẮM K&Iacute;NH CƯỜNG LỰC</span></span></strong></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ptkcl/cabin-vach-kinh-phong-tam-4.jpeg" style="height:890px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ptkcl/gia-lam-phong-tam-kinh-3.jpg" style="height:531px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ptkcl/kinh-phong-tam.png" style="height:433px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ptkcl/l%C3%B9a%20ngang-goc.png" style="height:550px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ptkcl/phong-tam-kinh-10.jpg" style="height:650px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ptkcl/phong-tam-kinh-cuong-luc2.jpg" style="height:845px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ptkcl/phong-tam-kinh3.jpg" style="height:614px; width:650px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:365px; width:650px" /></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a></p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-31T00:47:00.727' AS DateTime), CAST(N'2017-08-31T00:47:00.727' AS DateTime), N'Phòng Tắm Kính Cường Lực Tín Phong đẹp, Phòng Tắm Kính Cường Lực Tín Phong  tại TPHCM,chất lượng cao, tiêu chuẩn quốc tế, bảo hành theo tiêu chuẩn Tín Phong', N'Phòng Tắm Kính Cường Lực Tín Phong  tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (22, N'Cửa cuốn tấm liền Tín Phong Auto', N'Cửa cuốn tấm liền Tín Phong Auto', N'Cửa cuốn tấm liền Tín Phong Auto tại TPHCM', N'CC01', N'Cửa cuốn tấm liền Tín Phong Auto tại TPHCM', N'/Assets/Admin/DataUpload/images/cctl/av.jpg', NULL, CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 4, N'<p style="text-align:center"><span style="color:#27ae60"><strong><span style="font-size:24px">5 ưu điểm v&agrave;ng của cửa cuốn tấm liền T&iacute;n Phong khiến bạn kh&ocirc;ng thể chối từ</span></strong></span></p>

<p dir="ltr"><span style="font-size:16px">► Ng&ocirc;i nh&agrave; qu&yacute; kh&aacute;ch đang ở được thiết kế theo lối nh&agrave; ống v&agrave; kh&ocirc;ng c&oacute; lối tho&aacute;t hiểm.</span></p>

<p dir="ltr"><span style="font-size:16px">► Qu&yacute; kh&aacute;ch cảm thấy bức bối v&agrave; lo lắng về độ an to&agrave;n của đại gia đ&igrave;nh m&igrave;nh.</span></p>

<p dir="ltr"><span style="font-size:16px">► &ldquo;V&ograve; đầu suy nghĩ&rdquo; đ&acirc;u l&agrave; bộ cửa vừa c&oacute; thao t&aacute;c dễ d&agrave;ng khi sử dụng vừa đảm bảo an to&agrave;n bảo mật cho ng&ocirc;i nh&agrave;?</span></p>

<p dir="ltr"><span style="font-size:16px">► Đ&acirc;y rồi! Cửa cuốn tấm liền được ph&acirc;n phối bởi T&iacute;n Phong.</span><br />
&nbsp;</p>

<p dir="ltr"><span style="font-size:16px">Cửa cuốn tấm liền T&iacute;n Phong l&agrave; d&ograve;ng sản phẩm được sản xuất v&agrave; lắp đặt tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại của nước ngo&agrave;i, được lắp r&aacute;p theo m&ocirc; h&igrave;nh kh&eacute;p k&iacute;n, nang cửa l&agrave; những tấm phiến lớn được l&agrave;m từ l&agrave; hợp kim cao cấp; c&oacute; khả năng chống gỉ cao; bền bỉ với thời gian.</span></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cctl/cua-cuon-tam-lien-3.jpg" style="height:487px; width:650px" /><br />
<strong><span style="font-size:16px"><em>Cửa cuốn tấm liền T&iacute;n Phong m&agrave;u v&agrave;ng kem</em></span></strong><br />
&nbsp;</p>

<p dir="ltr"><span style="font-size:16px">Do đ&oacute; cửa cuốn tấm liền T&iacute;n Phong được xem l&agrave; d&ograve;ng cửa cuốn c&oacute; tuổi thọ cao rất ph&ugrave; hợp với kh&iacute; hậu của Việt Nam v&agrave; hiện nay rất được nhiều c&aacute;c hộ gia đ&igrave;nh, gara &ocirc;-t&ocirc; v&agrave; cửa h&agrave;ng kinh doanh tin d&ugrave;ng bởi t&iacute;nh an to&agrave;n, tiện lợi, dễ sử dụng v&agrave; thiết kế đẹp mắt, sang trọng.</span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cctl/ap-14-520x370.jpg" style="height:463px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cctl/cua-cuon-tam-lien-eco-series-4.jpg" style="height:520px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cctl/cua-cuon-tam-lien-song-vuong-1-e1422087270524-500x375.jpg" style="height:488px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/cctl/sua-cua-cuon-dai-loan.jpg" style="height:488px; width:650px" /></span></p>

<p dir="ltr" style="text-align:center"><span style="font-size:16px"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:365px; width:650px" /></span></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a></p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-31T00:54:28.367' AS DateTime), CAST(N'2017-08-31T01:04:23.523' AS DateTime), N'Cửa cuốn tấm liền Tín Phong Auto tại TPHCM đẹp, Cửa cuốn tấm liền Tín Phong Auto tại TPHCM,chất lượng cao', N'Cửa cuốn tấm liền Tín Phong Auto  tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [MetaTitle], [SeoTitle], [Code], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [CategoryID], [ProductDetail], [Waranty], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ViewCount]) VALUES (23, N'Cửa cuốn khe thoáng Tín Phong Auto', N'Cửa cuốn khe thoáng Tín Phong Auto', N'Cửa cuốn khe thoáng Tín Phong Auto tại TPHCM', N'CC02', N'Cửa cuốn khe thoáng Tín Phong Auto tại TPHCM', N'/Assets/Admin/DataUpload/images/cckt/av.jpg', NULL, CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 4, N'<p dir="ltr" style="text-align:center"><span style="color:#27ae60"><strong><span style="font-size:24px">Thật sai lầm nếu kh&ocirc;ng d&ugrave;ng cửa cuốn khe tho&aacute;ng T&iacute;n Phong</span></strong></span><br />
&nbsp;</p>

<p dir="ltr"><span style="font-size:16px">► Qu&yacute; kh&aacute;ch thật bận bịu</span></p>

<p dir="ltr"><span style="font-size:16px">► Qu&yacute; kh&aacute;ch muốn nhanh ch&oacute;ng t&igrave;m bộ cửa vừa đảm bảo an to&agrave;n vừa mang đến sự th&ocirc;ng tho&aacute;ng cho ng&ocirc;i nh&agrave;.</span></p>

<p dir="ltr"><span style="font-size:16px">► Cửa cuốn khe tho&aacute;ng T&iacute;n Phong&ndash; sự lựa chọn tối ưu cho qu&yacute; kh&aacute;ch.</span><br />
&nbsp;</p>

<p dir="ltr"><span style="font-size:16px">Cửa cuốn khe tho&aacute;ng T&iacute;n Phong - d&ograve;ng sản phẩm hiện đại được lắp r&aacute;p theo m&ocirc; h&igrave;nh lỗ tho&aacute;ng; c&aacute;c nan cửa được c&aacute;ch nhau bởi c&aacute;c lỗ tho&aacute;ng h&igrave;nh thoi gi&uacute;p kh&ocirc;ng kh&iacute; được lưu th&ocirc;ng v&agrave;o trong ng&ocirc;i nh&agrave; dễ d&agrave;ng.</span><br />
&nbsp;</p>

<p dir="ltr"><span style="font-size:16px">Hơn nữa, to&agrave;n bộ nan th&acirc;n cửa đều được l&agrave;m từ th&eacute;p hợp kim nh&ocirc;m cao cấp được đ&ugrave;n ph&ocirc;i ở l&ograve; t&ocirc;i nhiệt gần 200 độ C khoảng 6-7 lần, sau đ&oacute; đem l&agrave;m nguội v&agrave; tr&aacute;ng men trước khi sơn do đ&oacute; cửa c&oacute; khả năng chống gỉ s&eacute;t; chống oxy h&oacute;a cực tốt gi&uacute;p cho cửa được vận h&agrave;nh một c&aacute;ch trơn tru hơn, nhanh ch&oacute;ng, kh&ocirc;ng sợ bị bạc m&agrave;u.</span><br />
&nbsp;</p>

<p dir="ltr"><span style="font-size:16px">V&igrave; l&yacute; do đ&oacute; cửa cuốn khe tho&aacute;ng T&iacute;n Phong trở th&agrave;nh một d&ograve;ng sản phẩm sử dụng kh&aacute; phổ biến cho c&aacute;c gara sửa xe, c&aacute;c cửa h&agrave;ng, showroom kinh doanh hoặc c&aacute;c nh&agrave; phố mặt tiền&hellip;</span></p>

<p dir="ltr" style="text-align:center"><span style="color:#27ae60"><strong><span style="font-size:24px">Một số mẫu&nbsp;cửa cuốn khe tho&aacute;ng T&iacute;n Phong</span></strong></span></p>

<p dir="ltr" style="text-align:center"><span style="color:#27ae60"><strong><span style="font-size:24px"><img alt="" src="/Assets/Admin/DataUpload/images/cckt/cua-cuon-khe-thoang-12.jpg" style="height:650px; width:650px" /></span></strong></span></p>

<p dir="ltr" style="text-align:center"><span style="color:#27ae60"><strong><span style="font-size:24px"><img alt="" src="/Assets/Admin/DataUpload/images/cckt/cua-cuon-khe-thoang-2.jpg" style="height:400px; width:650px" /></span></strong></span></p>

<p dir="ltr" style="text-align:center"><span style="color:#27ae60"><strong><span style="font-size:24px"><img alt="" src="/Assets/Admin/DataUpload/images/cckt/cua-cuon-khe-thoang-4.jpg" style="height:433px; width:650px" /></span></strong></span></p>

<p dir="ltr" style="text-align:center"><span style="color:#27ae60"><strong><span style="font-size:24px"><img alt="" src="/Assets/Admin/DataUpload/images/cckt/cua-cuon-khe-thoang2.jpg" style="height:520px; width:650px" /></span></strong></span></p>

<p dir="ltr" style="text-align:center"><span style="color:#27ae60"><strong><span style="font-size:24px"><img alt="" src="/Assets/Admin/DataUpload/images/cckt/cua-cuon-nhom-khe-thoang-cong-nghe-duc-2.jpg" style="height:433px; width:650px" /></span></strong></span></p>

<p dir="ltr" style="text-align:center"><span style="color:#27ae60"><strong><span style="font-size:24px"><img alt="" src="/Assets/Admin/DataUpload/images/cckt/mtv1444876451.JPG" style="height:271px; width:650px" /></span></strong></span></p>

<p dir="ltr" style="text-align:center"><span style="color:#27ae60"><strong><span style="font-size:24px"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:365px; width:650px" /></span></strong></span></p>

<hr />
<p dir="ltr"><strong>tags :&nbsp;</strong><br />
<a href="http://localhost:57298/cua-nhua-loi-thep" target="_blank">cửa nhựa l&otilde;i th&eacute;p tại tphcm</a>&nbsp;,<br />
<a href="http://localhost:57298/cua-nhom-xingfa" target="_blank">cửa nh&ocirc;m xingfa tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-kinh-cuong-luc" target="_blank">k&iacute;nh cường lực tại tphcm</a>,<br />
<a href="http://localhost:57298/cua-cuon-tu-dong-auto" target="_blank">cửa cuốn tại tphcm</a>.</p>

<p dir="ltr">&nbsp;</p>
', 12, CAST(N'2017-08-31T01:07:22.257' AS DateTime), CAST(N'2017-08-31T01:07:22.257' AS DateTime), N'Cửa cuốn khe thoáng Tín Phong Auto tại TPHCM đẹp, Cửa cuốn khe thoáng Tín Phong Auto tại TPHCM,chất lượng cao', N'Cửa cuốn khe thoáng Tín Phong Auto tại TP Hồ Chí Minh | Cửa đẹp chất lượng tốt, bảo hành trọn đời Liên hệ Tín Phong để báo giá 0901417789-02866802244 XƯỞNG SẢN XUẤT: SỐ 08 ĐG 22, P.LINH ĐÔNG, Q. THỦ ĐỨC, HCM ĐC: 315 ĐINH BỘ LĨNH, P.26, Q. BÌNH THẠNH, HCM	', 1, 1000)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 
GO
INSERT [dbo].[ProductCategory] ([ID], [Name], [Description], [MetaTitle], [DisplayOrder], [SeoTitle], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status]) VALUES (1, N'Cửa nhựa lõi thép Tín Phong', N'<p><span style="font-size:22px"><span style="color:#27ae60"><em><strong>&gt;&gt;&gt; 4 LỢI &Iacute;CH &quot;&Iacute;T NGƯỜI BIẾT&quot; NẾU KH&Ocirc;NG SỬ DỤNG CỬA NHỰA L&Otilde;I TH&Eacute;P&nbsp;</strong></em><strong><u>T&Iacute;N PHONG</u></strong></span></span></p>

<p><span style="font-size:16px"><strong>&diams; Lợi &iacute;ch số 1</strong>: Nhờ v&agrave;o thiết kế c&oacute; độ k&iacute;n kh&iacute;t l&yacute; tưởng,&nbsp;<a href="/cua-nhua-loi-thep"><strong>Cửa nhựa l&otilde;i th&eacute;p T</strong><strong>&iacute;n Phong</strong></a>&nbsp;giảm kh&iacute; điều h&ograve;a tho&aacute;t ra ngo&agrave;i từ đ&oacute; giảm được tối đa chi ph&iacute; điện năng ti&ecirc;u thụ, giảm nỗi đau đầu v&igrave; chi ph&iacute; tiền điện h&agrave;ng th&aacute;ng cho kh&aacute;ch h&agrave;ng.</span></p>

<p><span style="font-size:16px"><strong>&diams; Lợi &iacute;ch số 2</strong>: Nhờ v&agrave;o việc sử dụng thanh profile v&agrave; phụ kiện cao cấp, do vậy&nbsp;<a href="/cua-nhua-loi-thep"><strong>cửa nhựa l&otilde;i th&eacute;p upvc</strong></a>&nbsp;T&iacute;n Phong&nbsp;c&oacute; độ bền cao, d&ugrave;ng l&acirc;u vẫn chưa bị ố v&agrave;ng hay hư hỏng phụ kiện. Gi&uacute;p gia chủ ho&agrave;n to&agrave;n tiết kiệm chi ph&iacute; sửa chữa, cũng như chẳng cần đau đầu v&igrave; cửa T&iacute;n Phong rất hiếm khi xảy ra trục trặc.<br />
<strong>&diams; Lợi &iacute;ch số 3</strong>: Nhờ cấu tạo cửa c&oacute; độ d&agrave;y l&yacute; tưởng do vậy cửa T&iacute;n Phong c&oacute; khả năng c&aacute;ch &acirc;m tuyệt vời. Mang lại kh&ocirc;ng gian nghỉ ngơi thư gi&atilde;n c&ugrave;ng gia đ&igrave;nh sau những ồn &agrave;o của cuộc sống đ&ocirc; thị n&aacute;o nhiệt.<br />
<strong>&diams; Lợi &iacute;ch số 4</strong>: Cửa T&iacute;n Phong với kiểu d&aacute;ng sang trọng, m&agrave;u sắc h&agrave;i h&ograve;a, bảo đảm ng&ocirc;i nh&agrave; qu&yacute; kh&aacute;ch sẽ v&ocirc; c&ugrave;ng bắt mắt khiến nhiều người trầm trồ khen ngợi. Thật l&agrave; &ldquo;o&aacute;ch nhất phố&rdquo; phải kh&ocirc;ng n&agrave;o!<br />
<br />
Cửa T&iacute;n Phong mang tới những lợi &iacute;ch qu&aacute; tuyệt vời! C&agrave;ng sử dụng những sản phẩm của T&iacute;n Phong, Qu&yacute; kh&aacute;ch sẽ c&agrave;ng thấy r&otilde; được gi&aacute; trị sử dụng cao đến mức n&agrave;o. Thậm ch&iacute; c&oacute; kh&aacute;ch h&agrave;ng c&ograve;n n&oacute;i rằng: &quot; T&iacute;nh ra th&igrave; cửa T&iacute;n phong lại qu&aacute; rẻ, d&ugrave;ng cửa T&iacute;n Phong lại c&oacute; qu&aacute; nhiều c&aacute;i lợi&quot;</span></p>

<p><span style="font-size:22px"><strong><span style="color:#27ae60"><em>&gt;&gt;&gt; MỘT SỐ H&Igrave;NH ẢNH&nbsp;CỬA NHỰA L&Otilde;I TH&Eacute;P&nbsp;</em><u>T&Iacute;N PHONG</u></span></strong></span></p>

<p style="text-align:center"><img alt="http://localhost:57298/Assets/Admin/DataUpload/images/cnlt6.jpg" src="http://localhost:57298/Assets/Admin/DataUpload/images/cnlt6.jpg" style="height:283px; width:400px" /></p>

<p style="text-align:center"><img alt="http://localhost:57298/Assets/Admin/DataUpload/images/cnlt1.jpg" src="http://localhost:57298/Assets/Admin/DataUpload/images/cnlt1.jpg" style="height:197px; width:400px" /></p>

<p style="text-align:center"><img alt="http://localhost:57298/Assets/Admin/DataUpload/images/cnlt3.jpg" src="http://localhost:57298/Assets/Admin/DataUpload/images/cnlt3.jpg" style="height:270px; width:400px" /></p>

<p style="text-align:center"><img alt="http://localhost:57298/Assets/Admin/DataUpload/images/cnlt2.jpg" src="http://localhost:57298/Assets/Admin/DataUpload/images/cnlt2.jpg" style="height:225px; width:400px" /></p>

<p style="text-align:center"><img alt="http://localhost:57298/Assets/Admin/DataUpload/images/cnlt5.jpg" src="http://localhost:57298/Assets/Admin/DataUpload/images/cnlt5.jpg" /></p>

<p style="text-align:center"><img alt="http://localhost:57298/Assets/Admin/DataUpload/images/cnlt4.jpg" src="http://localhost:57298/Assets/Admin/DataUpload/images/cnlt4.jpg" style="height:269px; width:400px" /></p>

<p><span style="font-size:22px"><strong><span style="color:#27ae60"><em>&gt;&gt;&gt; SẢN PHẨM ĐANG C&Oacute; TẠI&nbsp;</em><u>T&Iacute;N PHONG. VUI L&Ograve;NG LI&Ecirc;N HỆ ĐỂ B&Aacute;O GI&Aacute;</u></span></strong></span></p>

<p style="text-align:center"><strong><span style="font-size:24px"><span style="color:#27ae60"><u><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:253px; width:400px" /></u></span></span></strong></p>
', N'Cửa loại nhựa lõi thép tại Tín Phong - Giảm giá đến 10% trong tháng 9 và 10 năm 2017', 1, N'Cửa loại nhựa lõi thép tại Tín Phong - Giảm giá đến 10% trong tháng 9 và 10 năm 2017', NULL, CAST(N'2017-08-31T14:57:16.303' AS DateTime), N'Cửa nhựa lõi thép đẹp, Cửa nhựa lõi thép tại tphcm,chất lượng tốt', N'Gọi ☎0977 098 527 Tín Phong thương hiệu cửa nhựa lõi thép được tin dùng. Văn phòng tại ✅ Tp Hồ Chí Minh Cửa nhựa lõi thép tại tphcm, thủ đức, bình thạnh, quận 10, quận 1, quận gò vấp', 1)
GO
INSERT [dbo].[ProductCategory] ([ID], [Name], [Description], [MetaTitle], [DisplayOrder], [SeoTitle], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status]) VALUES (2, N'Cửa Nhôm XingFa', N'<p><span style="font-size:24px"><span style="color:#27ae60"><strong>&gt;&gt;&gt;&nbsp;</strong><strong>5 ĐIỂM KH&Aacute;C BIỆT KHIẾN KH&Aacute;CH H&Agrave;NG LU&Ocirc;N TIN D&Ugrave;NG CỬA NH&Ocirc;M XINGFA T&Iacute;N PHONG</strong></span></span></p>

<p><span style="font-size:16px">&diams;&nbsp;<strong>Điểm thứ nhất:</strong>&nbsp;Một trong những điều l&agrave;m T&iacute;n Phong trở th&agrave;nh m&ocirc;t thương hiệu uy t&iacute;n trong l&ograve;ng kh&aacute;ch h&agrave;ng đ&oacute; ch&iacute;nh l&agrave; việc T&iacute;n Phong cam kết sử dụng 100%&nbsp;<a href="http://www.tpwindow.vn/cua-nhom-xingfa">nh&ocirc;m xingfa nhập khẩu</a>&nbsp;ch&iacute;nh h&atilde;ng cao cấp.<br />
&diams;&nbsp;<strong>Điểm thứ hai:&nbsp;</strong>Cửa&nbsp;<a href="https://www.tpwindow.vn/cua-nhom-xingfa">nh&ocirc;m xingfa</a>&nbsp;T&iacute;n Phong sử dụng 100% phụ kiện đồng bộ cao cấp, ch&iacute;nh h&atilde;ng. C&oacute; thể kh&aacute;ch h&agrave;ng kh&ocirc;ng biết, đ&atilde; c&oacute; kh&ocirc;ng &iacute;t c&aacute;c c&ocirc;ng ty chỉ sử dụng phụ kiện loại 2 hoặc loại 3. C&oacute; gi&aacute; ch&ecirc;nh lệch 85 ng&agrave;n đến 135 ng&agrave;n/ 1 bộ phụ kiện. Một bộ cửa sử dụng phụ kiện loại 2, loại 3 v&agrave; phụ kiện ch&iacute;nh h&atilde;ng loại I c&oacute; thể ch&ecirc;nh lệch gi&aacute; tới 3-5 triệu/ bộ cửa loại lớn v&agrave; 1- 2,5 triệu/ bộ cửa loại nhỏ. Việc sử dụng h&agrave;ng k&eacute;m chất lượng như vậy ảnh hưởng đến tuổi thọ của c&aacute;c bộ cửa. Đối với Cửa đẹp T&iacute;n Phong , cửa nh&ocirc;m xingfa T&iacute;n Phong được sản xuất từ 100% nh&ocirc;m xingfa ch&iacute;nh h&atilde;ng v&agrave; cam kết trung thực sử dụng duy nhất 100% hệ phụ kiện ch&iacute;nh h&atilde;ng, chỉ duy nhất Loại I để c&oacute; một bộ cửa nh&ocirc;m chắc chắn v&agrave; an to&agrave;n theo khuyến nghị của tập đo&agrave;n xingfa.<br />
&diams;&nbsp;<strong>Điểm thứ ba:</strong>&nbsp;Để mỗi thanh nh&ocirc;m xingfa đạt ti&ecirc;u chuẩn chất lượng v&agrave; duy tr&igrave; chất lượng đồng đều th&igrave; ngay từ kh&acirc;u thi c&ocirc;ng, T&iacute;n Phong đ&atilde; mạnh dạn đầu tư d&acirc;y chuyền xử l&yacute; nh&ocirc;m hiện đại. Cửa nh&ocirc;m xingfa T&iacute;n Phong được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại n&ecirc;n tỉ lệ sai s&oacute;t cực nhỏ.<br />
&diams;&nbsp;<strong>Điểm thứ tư:</strong>&nbsp;Nhờ v&agrave;o việc sử dụng thanh nh&ocirc;m v&agrave; phụ kiện ch&iacute;nh h&atilde;ng, cửa nh&ocirc;m xingfa T&iacute;n Phong c&oacute; độ bền cao, chịu lực tốt, kh&ocirc;ng bị cong v&ecirc;nh, co ng&oacute;t; đặc biệt l&agrave; &ldquo;khắc tinh&rdquo; của thời tiết khắc nghiệt. Từ đ&oacute; gi&uacute;p qu&yacute; kh&aacute;ch tiết kiệm kh&aacute; nhiều chi ph&iacute; trong việc sửa chữa, thay mới v&igrave; trường hợp cửa nh&ocirc;m xingfa T&iacute;n Phong hư hỏng l&agrave; rất hiếm.<br />
&diams;&nbsp;<strong>Điểm thứ năm:</strong>&nbsp;Cửa nh&ocirc;m xingfa T&iacute;n Phong được sơn lớp sơn tĩnh điện cao cấp n&ecirc;n kh&ocirc;ng sợ bị bạc m&agrave;u hay bong tr&oacute;c lu&ocirc;n giữ được vẻ đẹp sang trọng, hiện đại như mới khiến người ngo&agrave;i nh&igrave;n v&agrave;o phải &ldquo;gật g&ugrave; khen ngợi&rdquo;.</span></p>

<p><span style="font-size:24px"><span style="color:#27ae60"><strong>&gt;&gt;&gt; MỘT SỐ H&Igrave;NH ẢNH MẪU CỬA</strong></span></span></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xf1.jpg" style="height:400px; width:400px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xf2.jpg" style="height:427px; width:400px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xf3.jpg" style="height:272px; width:400px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xf4.jpg" style="height:300px; width:400px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/xf5.jpg" style="height:265px; width:400px" /></p>

<p><span style="font-size:24px"><span style="color:#27ae60"><strong>&gt;&gt;&gt; C&Aacute;C SẢN PHẨM CỦA NH&Ocirc;M XINGFA TẠI T&Iacute;N PHONG</strong></span></span></p>

<p>&nbsp;</p>
', N'Cửa Nhôm XingFa ALUMINUM Tín Phong - Giá rẻ thiết kế đẹp', 2, N'Cửa Nhôm XingFa ALUMINUM Tín Phong - Giá rẻ thiết kế đẹp', NULL, CAST(N'2017-09-01T00:46:32.033' AS DateTime), N'Cửa Nhôm XingFa đẹp chất lượng cao, giá rẻ bảo hành trọn đời', N'Gọi ☎0977 098 527 ✅ Sản phấm cao cấp ✅ Bảo hành uy tín ✅ Dịch vụ trên sự mong đợi Thương hiệu cửa nhôm xingfa Tín Phong được tin dùng. Văn phòng tại   ✅ Tp Hồ Chí Minh, xưởng Thủ Đức, Thi công tại tất cả các quận 1 2 3 4 5 6 7 8 9 10 11 12 Bình Thạnh Gò Vấp Nhà Bè Củ Chi Thủ Đức', 1)
GO
INSERT [dbo].[ProductCategory] ([ID], [Name], [Description], [MetaTitle], [DisplayOrder], [SeoTitle], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status]) VALUES (3, N'Cửa kính cường lực', N'<p><span style="font-size:24px"><span style="color:#27ae60"><strong>&gt;&gt;&nbsp;ĐẶC ĐIỂM K&Iacute;NH ĐỂ LẮP CỬA K&Iacute;NH CƯỜNG LỰC T&Iacute;N PHONG GLASS &lt;&lt;</strong></span></span><br />
&nbsp;</p>

<p><span style="font-size:16px">K&iacute;nh cường lực được t&ocirc;i luyện trong l&ograve; k&iacute;nh ở ngưỡng nhiệt độ khoảng 700 độ C. Sau đ&oacute; l&agrave;m lạnh nhanh nhằm tăng khả năng chịu lực, chịu va đập của k&iacute;nh. Ch&iacute;nh bởi trải qua quy tr&igrave;nh t&ocirc;i luyện kỳ c&ocirc;ng như vậy n&ecirc;n k&iacute;nh cường lực c&oacute; độ cứng cao gấp 3 đến 4 lần k&iacute;nh th&ocirc;ng thường. V&agrave; đặc biệt khi vỡ, thay v&igrave; k&iacute;nh tạo c&aacute;c mảng k&iacute;nh sắc nhọn th&igrave; sẽ vỡ th&agrave;nh vụn, v&ocirc; c&ugrave;ng an to&agrave;n cho người sử dụng nếu kh&ocirc;ng may xảy ra bất trắc. K&iacute;nh cường lực T&iacute;n Phong sử dụng l&agrave; k&iacute;nh chất lượng cao, tạo t&iacute;nh thẩm mỹ, v&agrave; đặt biệt dễ d&agrave;ng lau ch&ugrave;i nếu c&oacute; vết b&aacute;m bẩn. Độ d&agrave;y k&iacute;nh cường lực T&iacute;n Phong sử dụng thường từ 8mm đển 21mm. T&ugrave;y v&agrave;o khẩu độ cửa, c&aacute;c nh&acirc;n vi&ecirc;n tư vấn của T&iacute;n Phong&nbsp;&nbsp;sẽ đưa ra phương &aacute;n th&iacute;ch hợp cho bộ cửa k&iacute;nh cường lực của qu&yacute; kh&aacute;ch.</span></p>

<p><span style="font-size:24px"><span style="color:#27ae60"><strong>&gt;&gt; H&Igrave;NH ẢNH THAM KHẢO&nbsp;&lt;&lt;</strong></span></span></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ckcl1.png" style="height:240px; width:400px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ckcl2.jpg" style="height:300px; width:400px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ckcl3.jpg" style="height:286px; width:400px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ckcl4.jpg" style="height:280px; width:400px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ckcl5.jpg" style="height:300px; width:400px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/ckcl6.jpg" style="height:171px; width:400px" /></p>

<p style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/bannerlan2.jpg" style="height:253px; width:450px" /></p>

<p><span style="font-size:24px"><span style="color:#27ae60"><strong>&gt;&gt; SẢN PHẨM TẠI T&Iacute;N PHONG&nbsp;&lt;&lt;</strong></span></span></p>

<p>&nbsp;</p>
', N'Cửa Kính cường lực Tín Phong tại TPHCM - Giá rẻ thiết kế đẹp', 3, N'Cửa Kính cường lực Tín Phong tại TPHCM - Giá rẻ thiết kế đẹp', CAST(N'2017-08-29T00:54:46.363' AS DateTime), CAST(N'2017-09-01T00:56:16.320' AS DateTime), N'Cửa Kính cường lực Tín Phong tại TPHCM - Giá rẻ thiết kế đẹp bảo hành trọn đời phục vụ tận nơi', N'Gọi ☎0977 098 527 ✅ Sản phấm cao cấp ✅ Bảo hành uy tín ✅ Dịch vụ trên sự mong đợi Thương hiệu cửa kính cường lực Tín Phong được tin dùng. Văn phòng tại   ✅ Tp Hồ Chí Minh, xưởng Thủ Đức, Thi công tại tất cả các quận 1 2 3 4 5 6 7 8 9 10 11 12 Bình Thạnh Gò Vấp Nhà Bè Củ Chi Thủ Đức', 1)
GO
INSERT [dbo].[ProductCategory] ([ID], [Name], [Description], [MetaTitle], [DisplayOrder], [SeoTitle], [CreatedDate], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status]) VALUES (4, N'Cửa cuốn tự động', N'<p dir="ltr"><span style="font-size:22px"><span style="color:#27ae60"><strong>&gt;&gt;&gt; 6 L&Yacute; DO TUYỆT ĐỐI QU&Yacute; KH&Aacute;CH KH&Ocirc;NG THỂ BỎ QUA CỬA CUỐN T&Iacute;N PHONG, CỬA CUỐN T&Iacute;N PHONG Ở TPHCM</strong></span></span></p>

<p dir="ltr"><span style="font-size:16px"><strong>&diams; L&yacute; do 1. An to&agrave;n cho người v&agrave; của.</strong></span></p>

<p dir="ltr"><span style="font-size:16px"><a href="https://www.tpwindow.vn/cua-cuon-tu-dong-auto">Cửa cuốn</a> T&iacute;n Phong c&oacute; t&aacute;c dụng đảo chiều cửa khi gặp vật cản hoặc chướng ngại vật trong qu&aacute; tr&igrave;nh đ&oacute;ng mở, đảm bảo an to&agrave;n cho người, vật nu&ocirc;i v&agrave; đồ đạc trong nh&agrave;.</span></p>

<p dir="ltr"><span style="font-size:16px">Hơn nữa, cửa cuốn T&iacute;n Phong c&ograve;n c&oacute; kết cấu rất đơn giản bao gồm nan cửa, bộ trục buly, bộ tời n&ecirc;n ho&agrave;n to&agrave;n c&oacute; thể mở bằng tay một c&aacute;ch nhẹ nh&agrave;ng, dễ d&agrave;ng để tho&aacute;t hiểm nhanh ch&oacute;ng bằng c&aacute;ch gạt chốt b&ecirc;n cạnh cửa. Thậm ch&iacute; với sức một đứa b&eacute; tầm 4-5 tuổi vẫn c&oacute; thể tự mở bằng tay nếu c&oacute; hỏa hoạn hoặc c&uacute;p điện.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>&diams; L&yacute; do 2. Chống trộm đột nhập, an ninh cao.</strong></span></p>

<p dir="ltr"><span style="font-size:16px">Qu&yacute; kh&aacute;ch đang lo sợ những bộ cửa cuốn k&eacute;m chất lượng tr&ecirc;n thị trường dễ d&agrave;ng bị kẻ gian sao ch&eacute;p m&atilde; số để đột nhập. H&atilde;y y&ecirc;n t&acirc;m cửa cuốn T&iacute;n Phong với c&ocirc;ng nghệ chống sao ch&eacute;p m&atilde; số c&ugrave;ng với 1 tỷ m&atilde; số kh&aacute;c nhau kh&ocirc;ng bao giờ tr&ugrave;ng lặp sau một lần sử dụng m&atilde; số cửa sẽ tự thay đổi. Ch&iacute;nh v&igrave; thế sử dụng cửa cuốn T&iacute;n Phong qu&yacute; kh&aacute;ch ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi sử dụng, đảm bảo cửa cuốn kh&ocirc;ng bị kẻ gian ph&aacute; m&atilde; v&agrave; đột nhập v&agrave;o b&ecirc;n trong.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>&diams; L&yacute; do 3. Đ&oacute;ng mở cửa nhẹ nh&agrave;ng, &ecirc;m &aacute;i.</strong></span></p>

<p dir="ltr"><span style="font-size:16px">Cửa cuốn T&iacute;n Phong c&oacute; khả năng giảm chấn 2 chiều, gi&uacute;p cửa đ&oacute;ng mở nhẹ nh&agrave;ng, &ecirc;m &aacute;i, giảm tới 90% tiếng ồn so với cửa cuốn truyền thống.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>&diams; L&yacute; do 4. Tốc độ mở cửa nhanh ch&oacute;ng.</strong></span></p>

<p dir="ltr"><span style="font-size:16px">Nếu cửa cuốn th&ocirc;ng thường khiến qu&yacute; kh&aacute;ch phải mất thời gian qu&aacute; l&acirc;u để cửa mở th&igrave; cửa cuốn T&iacute;n Phong với tốc độ mở cửa cực nhanh gi&uacute;p giảm thiểu thời gian chờ đợi.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>&diams; L&yacute; do 5. T&iacute;ch hợp nhiều t&iacute;nh năng th&ocirc;ng minh.</strong></span></p>

<p dir="ltr"><span style="font-size:16px">Cửa cuốn T&iacute;n Phong được trang bị hệ thống tay điều khiển từ xa tăng th&ecirc;m độ tiện lợi cho bộ cửa khi sử dụng.</span></p>

<p dir="ltr"><span style="font-size:16px">Kiểm tra qu&aacute; tr&igrave;nh đ&oacute;ng mở cửa cuốn T&iacute;n Phong khi ở nơi xa ho&agrave;n to&agrave;n c&oacute; thể nhờ được kết nối th&ocirc;ng minh với Smartphone.</span></p>

<p dir="ltr"><span style="font-size:16px">T&iacute;ch hợp hệ thống c&ograve;i b&aacute;o động, camera gi&aacute;m s&aacute;t, hệ thống b&aacute;o ch&aacute;y v&agrave; hệ thống chống đột nhập, đảm bảo an ninh tuyệt đối cho ng&ocirc;i nh&agrave; qu&yacute; kh&aacute;ch.</span></p>

<p dir="ltr"><span style="font-size:16px"><strong>&diams; L&yacute; do 6. M&agrave;u sắc đa dạng.</strong></span></p>

<p dir="ltr"><span style="font-size:16px">Với thiết kế th&acirc;n cửa v&agrave; m&agrave;u sắc đa dạng, phong ph&uacute; cửa cuốn T&iacute;n Phong g&oacute;p phần t&ocirc;n vinh vẻ đẹp sang trọng, đẳng cấp cho ng&ocirc;i nh&agrave; qu&yacute; kh&aacute;ch khiến h&agrave;ng x&oacute;m phải &ldquo;ng&oacute; ra ng&oacute; v&agrave;o&rdquo;.</span></p>

<p dir="ltr"><span style="font-size:16px">Với 6 ưu điểm vượt trội tr&ecirc;n cửa cuốn T&iacute;n Phong ho&agrave;n to&agrave;n trở th&agrave;nh &ldquo;si&ecirc;u phẩm&rdquo; cửa gi&uacute;p bảo vệ ng&ocirc;i nh&agrave; của qu&yacute; kh&aacute;ch tuyệt đối so với d&ograve;ng cửa cũ truyền thống.</span></p>

<p dir="ltr"><span style="font-size:16px">Nếu c&oacute; nhu cầu lắp đặt sử dụng cửa cuốn T&iacute;n Phong, cửa cuốn T&iacute;n Phong tại TP Hồ Ch&iacute; Minh&nbsp;li&ecirc;n hệ ngay T&iacute;n Phong qua số tổng đ&agrave;i: <strong>0977 098 527&nbsp;</strong> để được tư vấn ho&agrave;n to&agrave;n miễn ph&iacute; nh&eacute;.</span></p>

<p dir="ltr"><span style="font-size:24px"><span style="color:#27ae60"><strong>&gt;&gt;&gt; H&Igrave;NH ẢNH THAM KHẢO&nbsp;</strong></span></span></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cc1.jpg" style="height:300px; width:400px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cc2.jpg" style="height:325px; width:400px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cc3.jpg" style="height:400px; width:400px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cc4.jpg" style="height:319px; width:400px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cc5.jpg" style="height:301px; width:400px" /></p>

<p dir="ltr" style="text-align:center"><img alt="" src="/Assets/Admin/DataUpload/images/cc6.jpg" style="height:300px; width:400px" /></p>

<p dir="ltr"><span style="font-size:24px"><span style="color:#27ae60"><strong>&gt;&gt;&gt; C&Aacute;C SẢN PHẨM TẠI T&Iacute;N PHONG</strong></span></span></p>
', N'Cửa Cuốn Tự Động Tín Phong tại TPHCM - Giá rẻ thiết kế đẹp', 4, N'Cửa cuốn tự động Tín Phong tại TPHCM - Giá rẻ thiết kế đẹp', CAST(N'2017-08-29T01:02:52.697' AS DateTime), CAST(N'2017-09-01T00:55:11.227' AS DateTime), N'Cửa cuốn tự động đẹp chất lượng cao, giá rẻ bảo hành trọn đời', N'Gọi ☎0977 098 527 ✅ Sản phấm cao cấp ✅ Bảo hành uy tín ✅ Dịch vụ trên sự mong đợi Thương hiệu cửa cuốn tự động Tín Phong được tin dùng. Văn phòng tại   ✅ Tp Hồ Chí Minh, xưởng Thủ Đức, Thi công tại tất cả các quận 1 2 3 4 5 6 7 8 9 10 11 12 Bình Thạnh Gò Vấp Nhà Bè Củ Chi Thủ Đức', 1)
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 
GO
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [ModifiedDate], [Status]) VALUES (1, N'/Assets/Images/Sliders/bannerlan2_resize.jpg', 1, N'/lien-he', N'TINPHONG YÊU THƯƠNG KHÁCH HÀNG,KHÁCH HÀNG LÀ TRÊN HẾT', CAST(N'2017-08-28T23:39:52.393' AS DateTime), CAST(N'2017-08-28T23:39:52.393' AS DateTime), 1)
GO
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [ModifiedDate], [Status]) VALUES (2, N'/Assets/Images/Sliders/slider1.jpg', 2, N'/lien-he', N'Tín Phong thi công công trình nhà nước', CAST(N'2017-08-28T23:39:52.393' AS DateTime), CAST(N'2017-08-28T23:39:52.393' AS DateTime), 1)
GO
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [ModifiedDate], [Status]) VALUES (3, N'/Assets/Images/Sliders/slider2.jpg', 3, N'/lien-he', N'Đội ngũ thi công Tín Phong làm việc', CAST(N'2017-08-28T23:39:52.393' AS DateTime), CAST(N'2017-08-28T23:39:52.393' AS DateTime), 1)
GO
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [ModifiedDate], [Status]) VALUES (4, N'/Assets/Images/Sliders/slider3.jpg', 4, N'/lien-he', N'Dự án công trình Tín Phong', CAST(N'2017-08-28T23:39:52.393' AS DateTime), CAST(N'2017-08-28T23:39:52.393' AS DateTime), 1)
GO
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [ModifiedDate], [Status]) VALUES (5, N'/Assets/Images/Sliders/slider4.jpg', 5, N'/lien-he', N'Sản phẩm thi công bởi Tín Phong', CAST(N'2017-08-28T23:39:52.393' AS DateTime), CAST(N'2017-08-28T23:39:52.393' AS DateTime), 1)
GO
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [ModifiedDate], [Status]) VALUES (6, N'/Assets/Images/Sliders/slider5.jpg', 6, N'/lien-he', N'Tín Phong thi công cho công ty bảo vệ Đại Trường Hải', CAST(N'2017-08-28T23:39:52.393' AS DateTime), CAST(N'2017-08-28T23:39:52.393' AS DateTime), 1)
GO
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [ModifiedDate], [Status]) VALUES (7, N'/Assets/Images/Sliders/slider6.jpg', 7, N'/lien-he', N'Hình ảnh thi công bởi Tín Phong', CAST(N'2017-08-28T23:39:52.393' AS DateTime), CAST(N'2017-08-28T23:39:52.393' AS DateTime), 1)
GO
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [ModifiedDate], [Status]) VALUES (8, N'/Assets/Images/Sliders/slider7.jpg', 8, N'/lien-he', N'Sản phẩm thi công bởi Tín Phong', CAST(N'2017-08-28T23:39:52.393' AS DateTime), CAST(N'2017-08-28T23:39:52.393' AS DateTime), 1)
GO
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [ModifiedDate], [Status]) VALUES (9, N'/Assets/Images/Sliders/slider8.jpg', 9, N'/lien-he', N'Sản phẩm thi công bởi Tín Phong', CAST(N'2017-08-28T23:39:52.393' AS DateTime), CAST(N'2017-08-28T23:39:52.393' AS DateTime), 1)
GO
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [ModifiedDate], [Status]) VALUES (10, N'/Assets/Images/Sliders/slider9.jpg', 10, N'/lien-he', N'Đội ngũ làm việc Tín Phong tại công trình', CAST(N'2017-08-28T23:39:52.393' AS DateTime), CAST(N'2017-08-28T23:39:52.393' AS DateTime), 1)
GO
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [ModifiedDate], [Status]) VALUES (11, N'/Assets/Images/Sliders/slider11.jpg', 11, N'/lien-he', N'Sản phẩm thi công bởi Tín Phong', CAST(N'2017-08-28T23:39:52.393' AS DateTime), CAST(N'2017-08-28T23:39:52.393' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
ALTER TABLE [dbo].[About] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[About] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[About] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Admin] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Content] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Content] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[Content] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ContentCategory] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ContentCategory] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[ContentCategory] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Feedback] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Feedback] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Footer] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Menu] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[MenuType] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Slide] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Slide] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[Slide] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Tag] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK1] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[ProductCategory] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK1]
GO
alter table Menu
add constraint FK2
foreign key(TypeID) references MenuType(ID)

alter table Menu
add constraint FK3_shelf
foreign key(ParentID) references Menu(ID)
alter table Product
add constraint FK1
foreign  key (CategoryID) references ProductCategory(ID)

INSERT INTO ContentCategory(Name,Description,DisplayOrder,MetaTitle,SeoTitle,MetaKeywords,MetaDescriptions)
values(N'Tin Dự Án Đã Thi Công',N'Tin Dự Án Đã Thi Công',1,
N'cửa nhôm xingfa tphcm, cửa nhựa lõi thép tphcm, cửa kính cường lực tphcm, cửa cuốn auto tphcm',
N'cửa nhôm xingfa tphcm, cửa nhựa lõi thép tphcm, cửa kính cường lực tphcm, cửa cuốn auto tphcm',
N'cua nhom xingfa tphcm, cua nhua loi thep tphcm, cua kinh cuong luc tphcm, cua cuon auto tphcm',
N'cửa nhôm xingfa tphcm, cửa nhựa lõi thép tphcm, cửa kính cường lực tphcm, cửa cuốn auto tphcm')

