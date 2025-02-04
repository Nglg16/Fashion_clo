USE [Shop]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 06/03/2024 16:00:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[bill_id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[total] [money] NOT NULL,
	[payment] [varchar](250) NOT NULL,
	[address] [ntext] NOT NULL,
	[date] [date] NOT NULL,
	[phone] [bigint] NOT NULL,
 CONSTRAINT [PK_bill] PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_detail]    Script Date: 06/03/2024 16:00:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_detail](
	[detail_id] [bigint] IDENTITY(1,1) NOT NULL,
	[bill_id] [bigint] NOT NULL,
	[product_id] [varchar](100) NOT NULL,
	[quantity] [int] NOT NULL,
	[size] [nchar](10) NOT NULL,
	[color] [nvarchar](150) NOT NULL,
	[price] [money] NOT NULL,
 CONSTRAINT [PK_bill_detail] PRIMARY KEY CLUSTERED 
(
	[detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 06/03/2024 16:00:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[cart_id] [bigint] NOT NULL,
	[product_id] [varchar](100) NOT NULL,
	[product_name] [varchar](255) NOT NULL,
	[product_img] [varchar](255) NOT NULL,
	[product_price] [float] NOT NULL,
	[total] [float] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_cart] PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 06/03/2024 16:00:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](255) NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 06/03/2024 16:00:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [varchar](100) NOT NULL,
	[category_id] [int] NOT NULL,
	[product_name] [nvarchar](max) NOT NULL,
	[product_price] [money] NOT NULL,
	[product_describe] [nvarchar](max) NOT NULL,
	[quantity] [int] NOT NULL,
	[img] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_color]    Script Date: 06/03/2024 16:00:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_color](
	[product_id] [varchar](100) NOT NULL,
	[color] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_size]    Script Date: 06/03/2024 16:00:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_size](
	[product_id] [varchar](100) NOT NULL,
	[size] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 06/03/2024 16:00:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](200) NULL,
	[user_email] [varchar](255) NOT NULL,
	[user_pass] [nvarchar](255) NOT NULL,
	[isAdmin] [nvarchar](50) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bill] ON 

INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (1, 1, 229000.0000, N'COD', N'4/47LeDuan', CAST(N'2023-10-22' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (2, 1, 229000.0000, N'VNPAY', N'4/47LeDuan', CAST(N'2023-10-23' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (3, 1, 229000.0000, N'MOMO', N'4/47LeDuan', CAST(N'2023-10-23' AS Date), 123)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (4, 1, 149000.0000, N'MOMO', N'4/47LeDuan', CAST(N'2023-10-23' AS Date), 111)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (5, 1, 298000.0000, N'VNPAY', N'4/47LeDuan', CAST(N'2023-10-23' AS Date), 123)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (45, 5, 648000.0000, N'MOMO', N'Hà Đông, Hà Nội', CAST(N'2021-11-04' AS Date), 919208356)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (46, 5, 298000.0000, N'MOMO', N'Ninh Bình', CAST(N'2021-11-04' AS Date), 888195313)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (47, 5, 378000.0000, N'VNPAY', N'Ninh Bình', CAST(N'2021-11-03' AS Date), 88195313)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (48, 5, 270000.0000, N'Chua thanh toán (VNPAY)', N'Ninh Bình', CAST(N'2021-11-04' AS Date), 383298183)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (49, 5, 417000.0000, N'Chua thanh toán (VNPAY)', N'Ninh Bình', CAST(N'2021-11-04' AS Date), 888195313)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (50, 5, 567000.0000, N'COD', N'Ninh Bình', CAST(N'2021-11-04' AS Date), 888195313)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (51, 5, 278000.0000, N'COD', N'test', CAST(N'2021-11-04' AS Date), 123)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (52, 5, 189000.0000, N'COD', N'è', CAST(N'2021-11-04' AS Date), 2)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (53, 5, 259000.0000, N'MOMO', N'Check', CAST(N'2021-11-04' AS Date), 888195313)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (54, 5, 270000.0000, N'VNPAY', N'Check', CAST(N'2021-11-04' AS Date), 888195313)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (55, 5, 259000.0000, N'MOMO', N'jrtn', CAST(N'2021-11-06' AS Date), 2)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (56, 5, 810000.0000, N'VNPAY', N'df', CAST(N'2021-11-06' AS Date), 3)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (57, 5, 149000.0000, N'MOMO', N'Ninh Binh', CAST(N'2021-11-08' AS Date), 383298183)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (58, 5, 417000.0000, N'VNPAY', N'bf', CAST(N'2021-11-08' AS Date), 4)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (59, 5, 149000.0000, N'COD', N'rshfxb12414', CAST(N'2021-11-08' AS Date), 23544353)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (60, 5, 517000.0000, N'MOMO', N'Ninh Bình', CAST(N'2021-11-09' AS Date), 888195313)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (61, 5, 139000.0000, N'VNPAY', N'ưgrs', CAST(N'2021-11-09' AS Date), 32)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (62, 1, 280000.0000, N'COD', N'4/47LeDuan', CAST(N'2023-10-26' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (63, 3, 438000.0000, N'COD', N'4/47LeDuan', CAST(N'2023-10-26' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (64, 1, 270000.0000, N'COD', N'4/47LeDuan', CAST(N'2023-10-27' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (65, 3, 270000.0000, N'MOMO', N'4/47LeDuan', CAST(N'2023-10-27' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (66, 3, 259000.0000, N'VNPAY', N'4/47LeDuan', CAST(N'2023-10-27' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (67, 3, 270000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (68, 1, 219000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (69, 1, 240000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (70, 1, 219000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (71, 1, 270000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (72, 1, 270000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (73, 1, 219000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (74, 1, 259000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (75, 1, 360000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (76, 1, 219000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (77, 1, 219000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (78, 1, 270000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (79, 1, 219000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (80, 1, 219000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (81, 1, 219000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (82, 1, 270000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (83, 1, 259000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (84, 1, 259000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (85, 1, 240000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-03' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (86, 1, 259000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-04' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (87, 3, 259000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-05' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (88, 1, 250000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-05' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (89, 3, 259000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-05' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (90, 3, 259000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-05' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (91, 1, 259000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-05' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (92, 3, 270000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-05' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (93, 3, 360000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-05' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (94, 3, 250000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-05' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (95, 1, 15000.0000, N'COD', N'Điện Dương', CAST(N'2023-11-05' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (96, 1, 259000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-05' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (97, 3, 219000.0000, N'MOMO', N'Điện Dương', CAST(N'2023-11-05' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (98, 1, 259000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-06' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (99, 1, 259000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-06' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (100, 1, 219000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-06' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (101, 1, 259000.0000, N'MOMO', N'Điện Dương', CAST(N'2023-11-06' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (102, 1, 270000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-06' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (103, 1, 15000.0000, N'COD', N'Điện Dương', CAST(N'2023-11-09' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (104, 1, 15000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-09' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (105, 12, 60000.0000, N'COD', N'Điện Dương', CAST(N'2023-11-09' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (106, 12, 219000.0000, N'VNPAY', N'Điện Dương', CAST(N'2023-11-09' AS Date), 777919595)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (107, 12, 270000.0000, N'MOMO', N'Điện Dương', CAST(N'2023-11-09' AS Date), 777919595)
SET IDENTITY_INSERT [dbo].[bill] OFF
GO
SET IDENTITY_INSERT [dbo].[bill_detail] ON 

INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (40, 45, N'T2129', 1, N'XS        ', N'White', 270000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (44, 48, N'T2129', 1, N'XS        ', N'White', 270000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (49, 53, N'T2127', 1, N'L         ', N'Black', 259000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (50, 54, N'T2129', 1, N'XS        ', N'White', 270000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (51, 55, N'T2128', 1, N'XS        ', N'White', 259000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (52, 56, N'T2129', 3, N'XS        ', N'White', 810000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (59, 1, N'T2106', 1, N'S         ', N'Yellow', 229000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (60, 2, N'T2106', 1, N'S         ', N'Yellow', 229000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (61, 3, N'T2106', 1, N'S         ', N'Yellow', 229000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (65, 63, N'T2106', 2, N'S         ', N'Yellow', 438000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (66, 64, N'T2129', 1, N'XS        ', N'White', 270000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (67, 65, N'T2129', 1, N'XS        ', N'White', 270000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (68, 66, N'T2127', 1, N'L         ', N'Black', 259000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (69, 67, N'T2129', 1, N'XS        ', N'White', 270000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (70, 68, N'T2106', 1, N'S         ', N'Yellow', 219000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (71, 69, N'T2130', 1, N'S         ', N'Grey', 240000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (72, 70, N'T2106', 1, N'S         ', N'Yellow', 219000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (73, 71, N'T2129', 1, N'XS        ', N'White', 270000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (74, 72, N'T2129', 1, N'XS        ', N'White', 270000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (75, 73, N'T2106', 1, N'S         ', N'Yellow', 219000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (76, 74, N'T2127', 1, N'L         ', N'Black', 259000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (77, 75, N'TD481', 1, N'L         ', N'White', 360000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (78, 76, N'T2106', 1, N'S         ', N'Yellow', 219000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (79, 77, N'T2106', 1, N'S         ', N'Yellow', 219000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (80, 78, N'T2129', 1, N'XS        ', N'White', 270000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (81, 79, N'T2106', 1, N'S         ', N'Yellow', 219000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (82, 80, N'T2106', 1, N'S         ', N'Yellow', 219000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (83, 81, N'T2106', 1, N'S         ', N'Yellow', 219000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (84, 82, N'T2129', 1, N'XS        ', N'White', 270000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (85, 83, N'T2127', 1, N'L         ', N'Black', 259000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (86, 84, N'T2127', 1, N'L         ', N'Black', 259000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (87, 85, N'T2130', 1, N'S         ', N'Grey', 240000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (88, 86, N'T2127', 1, N'L         ', N'Black', 259000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (89, 87, N'T2128', 1, N'XS        ', N'White', 259000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (90, 88, N'T2131', 1, N'L         ', N'Grey', 250000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (91, 89, N'T2128', 1, N'XS        ', N'White', 259000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (92, 90, N'T2128', 1, N'XS        ', N'White', 259000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (93, 91, N'T2127', 1, N'L         ', N'Black', 259000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (94, 92, N'T2129', 1, N'XS        ', N'White', 270000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (95, 93, N'TD481', 1, N'L         ', N'White', 360000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (96, 94, N'T2131', 1, N'L         ', N'Grey', 250000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (97, 95, N'QJ2100', 1, N'S         ', N'Gray', 15000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (98, 96, N'T2128', 1, N'XS        ', N'White', 259000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (99, 97, N'T2106', 1, N'S         ', N'Yellow', 219000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (100, 98, N'T2128', 1, N'XS        ', N'White', 259000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (101, 99, N'T2127', 1, N'L         ', N'Black', 259000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (102, 100, N'T2106', 1, N'S         ', N'Yellow', 219000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (103, 101, N'T2128', 1, N'XS        ', N'White', 259000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (104, 102, N'T2129', 1, N'XS        ', N'White', 270000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (105, 103, N'B121', 1, N'S         ', N'Gray', 15000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (106, 104, N'B121', 1, N'S         ', N'Gray', 15000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (107, 105, N'B111', 4, N'S         ', N'Gray', 60000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (108, 106, N'T2106', 1, N'S         ', N'Yellow', 219000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [color], [price]) VALUES (109, 107, N'T2129', 1, N'XS        ', N'White', 270000.0000)
SET IDENTITY_INSERT [dbo].[bill_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([category_id], [category_name]) VALUES (1, N'SHIRT')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (2, N'T-SHIRT')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (3, N'OUTERWEAR')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (4, N'HOODIES')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (5, N'SHORT&PANTS')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (6, N'ACCESSORIES')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (7, N'SOCIAL')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (14, N'SWEATSHIRTS')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (15, N'JEANS')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (16, N'Shoes')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (17, N'Dress')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (18, N'Dresss')
SET IDENTITY_INSERT [dbo].[category] OFF
GO
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'B111', 3, N'Áo ', 15000.0000, N'Áo tay dài trăng in chữ', 0, N'images/TD481.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'B121', 17, N'Áo Thun', 15000.0000, N'12312312', 2, N'images/T2119.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'B211', 2, N'Giầy', 15000.0000, N'Áo thun xanh in chữ Angel', 4, N'images/product30.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'QJ2100', 7, N'Quần jean', 15000.0000, N'Quần dài, ống xuông', 20, N'images/product29.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'T2106', 2, N'Shin-chan Tee', 219000.0000, N'Cổ Tròn Tay Ngắn  Hình In Trước', 47, N'images/T2106.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'T2119', 3, N'Giày', 15000.0000, N'đẹp', 4, N'images/AT536.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'T2127', 2, N'Fucking Awesome Tee In Black', 259000.0000, N'Cổ Tròn Tay Ngắn Vạt Ngang  Hình Phía Trước Và Sau', 87, N'images/T2127.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'T2128', 2, N'Fucking Awesome Tee', 259000.0000, N'Cổ Tròn Tay Ngắn Vạt Ngang Hình Phía Trước Và Sau', 56, N'images/T2128.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'T2129', 2, N'I''m Not Psycho Tee', 270000.0000, N'Cổ Tròn Tay Ngắn Vạt Ngang  Hình Phía Trước Và Sau', 92, N'images/T2129.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'T2130', 2, N'Acid Washed Dark', 240000.0000, N'Cổ Tròn
Tay Ngắn
Vạt Ngang
Stone Wash', 298, N'images/T2130.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'T2131', 2, N'Exceptional Tee With Distressed', 250000.0000, N'Tay Ngắn Vạt Ngang Hình Phía Trước Và Sau Stone Wash', 196, N'images/T2131.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'TD481', 14, N'''''Sinner'''' Sweater', 360000.0000, N'Cổ Tròn Vạt Ngang Tay Dài Bo Hình In Mặt Trước Và Sau ', 27, N'images/TD481.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'TD509', 14, N'Champion Sweater', 169000.0000, N'Cổ Tròn Vạt Ngang Tay Dài Bo Hình Thêu Trước ', 447, N'images/TD509.png')
GO
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'T2131', N'Grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'T2131', N'Blue')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'T2106', N'Yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'QJ2100', N'Gray')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'T2130', N'Grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'QJ2100', N'Black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'QJ2100', N'Pink')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'B111', N'Gray')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'B111', N'Black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'TD509', N'Purple')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'TD509', N'Blue')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'TD509', N'Black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'TD509', N'White')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'TD481', N'White')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'B211', N'Gray')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'T2128', N'White')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'T2128', N'Green')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'T2127', N'Black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'B211', N'Black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'T2129', N'White')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'B211', N'Blue')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'T2119', N'White pink')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'B121', N'Gray')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (N'B121', N'Black')
GO
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2131', N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2131', N'XL')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2131', N'XXL')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2106', N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2106', N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2130', N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2130', N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2106', N'XL')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2106', N'XXL')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2106', N'3XL')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'TD509', N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'TD509', N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'TD509', N'XL')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'TD509', N'XXL')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'TD481', N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'TD481', N'XL')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'QJ2100', N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'QJ2100', N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'QJ2100', N'SL')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'QJ2100', N'XL')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'B111', N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2128', N'XS')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2128', N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2128', N'XL')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2127', N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2129', N'XS')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2129', N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2129', N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2129', N'XL')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'B111', N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'B111', N'SL')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'B211', N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'B211', N'SL')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'B211', N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2119', N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2119', N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'T2119', N'SL')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'B121', N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'B121', N'SL')
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (1, N'Admin', N'Admin@gmail.com', N'admin1', N'TRUE')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (2, N'Buu', N'buuldde170501@fpt.edu.vn', N'123456', N'FALSE')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (3, N'Buu', N'buule.210303@gmail.com', N'123', N'TRUE')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (4, N'Huy', N'huy@gmail.com', N'1248', N'FALSE')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (5, N'Hai', N'hai@gmail.com', N'123', N'FALSE')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (6, N'Dinh', N'Dinh@yahoo.com', N'1245', N'FALSE')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (7, N'', N'buu12@gmail.com', N'123', N'False')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (8, N'hoang', N'h1oa2ng@gmail.com', N'123', N'False')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (9, N'Buulll', N'12Bu3u2lll@gmail.com', N'123', N'False')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (10, N'Buule', N'buule2121@gmai.com', N'123', N'False')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (11, N'Admin', N'admin@sadasdasd.com', N'123', N'False')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (12, N'Buu12', N'buu210321@gmai.com', N'1234', N'False')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (13, N'Buule', N'buule212121@gmail.com', N'abcxyz123', N'False')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_users]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_bill_detail_bill] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([bill_id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FK_bill_detail_bill]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_bill_detail_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FK_bill_detail_product]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK_cart_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK_cart_product]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category]
GO
ALTER TABLE [dbo].[product_color]  WITH CHECK ADD  CONSTRAINT [FK_product_color_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[product_color] CHECK CONSTRAINT [FK_product_color_product]
GO
ALTER TABLE [dbo].[product_size]  WITH CHECK ADD  CONSTRAINT [FK_product_size_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[product_size] CHECK CONSTRAINT [FK_product_size_product]
GO
