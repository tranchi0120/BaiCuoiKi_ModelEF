USE [TRANCHIDB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 21/06/2021 10:23:09 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Description] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 21/06/2021 10:23:09 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[UnitCost] [decimal](15, 0) NULL,
	[Quantity] [int] NULL,
	[Image] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[Status] [nvarchar](50) NULL,
	[CategoryID] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 21/06/2021 10:23:09 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](20) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'1', N'Asus', N'Hàng chính hãng')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'2', N'Dell', N'Hàng chính hãng')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'3', N'Hp', N'Hàng chính hãng ')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'4', N'Msi', N'Hàng chính hãng')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'5', N'Acer', N'Hàng chính hãng')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'6', N'Lenovo', N'Hàng chính hãng ')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'8', N'LG', N'Hàng chính hãng ')
GO
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'Acer Aspire 7', N'Laptop Acer Aspire 7 A715', CAST(18000000 AS Decimal(15, 0)), 30, N'acer1.jpg', N'SSD 256 GB NVMe PCIeHDD 1 TB SATA 3', N'còn hàng', N'5')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'Acer Aspire 8', N'Laptop Acer Aspire 8 A716', CAST(13000000 AS Decimal(15, 0)), 20, N'acer2.jpg', N'SSD 256 GB NVMe PCIeHỗ trợ khe cắm HDD SATA', N'còn hàng', N'5')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'Acer Aspire 9 ', N'Laptop Acer Aspire 9 A716', CAST(18000000 AS Decimal(15, 0)), 20, N'acer3.jpg', N'SSD 256 GB NVMe PCIe', N'còn hàng', N'5')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'Asus A515MB', N'Laptop Asus VivoBook A515MB', CAST(16000000 AS Decimal(15, 0)), 15, N'asus4.jpg', N'SSD 512 GB NVMe PCle', N'còn hàng', N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'Asus X515MA', N'Laptop Asus VivoBook X515MA', CAST(15000000 AS Decimal(15, 0)), 20, N'asus1.jpg', N'SSD 256 GB NVMe PCIeHỗ trợ khe cắm HDD SATA', N'còn hàng', N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'Asus X515MB', N'Laptop Asus VivoBook X515MB', CAST(17000000 AS Decimal(15, 0)), 10, N'asus3.jpg', N'SSD 256 GB NVMe PCIeHDD 1 TB SATA 3', N'hết hàng ', N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'Dell Inspiron  02', N'Laptop Dell Inspiron 3502', CAST(17000000 AS Decimal(15, 0)), 15, N'dell2.jpg', N'SSD 256 GB NVMe PCIeHỗ trợ khe cắm HDD SATA', N'còn hàng', N'2')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'Dell Inspiron 01', N'Laptop Dell Inspiron 3501', CAST(18000000 AS Decimal(15, 0)), 20, N'dell1.jpg', N'SSD 256 GB NVMe PCIe', N'còn hàng', N'2')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'Dell XPS', N'Laptop Dell XPS 13 9310', CAST(20000000 AS Decimal(15, 0)), 20, N'dell3.jpg', N'SSD 512 GB NVMe PCIeHỗ trợ khe cắm HDD SATA', N'còn hàng', N'2')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'HP G7', N'Laptop HP 340s G7', CAST(15000000 AS Decimal(15, 0)), 15, N'hp1.jpg', N'SSD 256 GB NVMe PCIeKhông hỗ trợ khe cắm HDD', N'còn hàng', N'3')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'HP G7 i3', N'Laptop HP 340s G7 i3', CAST(17000000 AS Decimal(15, 0)), 10, N'hp2.jpg', N'SSD 256 GB NVMe PCIeKhông hỗ trợ khe cắm HDD', N'còn hàng', N'3')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'HP G7 i5', N'Laptop HP 340s G7 i5', CAST(20000000 AS Decimal(15, 0)), 15, N'hp3.jpg', N'SSD 512 GB NVMe PCle', N'còn hàng', N'3')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'Lenovo  15IMH', N'Laptop Lenovo Legion 5 15IMH05', CAST(18000000 AS Decimal(15, 0)), 10, N'dell2.jpg', N'SSD 256 GB NVMe PCIe', N'còn hàng', N'6')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'Lenovo 16IMH', N'Laptop Lenovo Legion 5 16IMH03', CAST(14000000 AS Decimal(15, 0)), 12, N'dell1.jpg', N'SSD 256 GB NVMe PCIe', N'còn hàng', N'6')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'Lenovo 18IMH', N'Laptop Lenovo Legion 5 18IMH01', CAST(15000000 AS Decimal(15, 0)), 15, N'dell3.jpg', N'SSD 256 GB NVMe PCIe', N'còn hàng', N'6')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'MSI 10SDK', N'Laptop MSI Gaming Leopard 10SDK', CAST(25000000 AS Decimal(15, 0)), 10, N'dell4.jpg', N'SSD 512 GB NVMe PCIeHỗ trợ khe cắm HDD SATA', N'còn hàng', N'4')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'MSI GF63 ', N'Laptop MSI GF63 10SC', CAST(20000000 AS Decimal(15, 0)), 15, N'dell1.jpg', N'Hỗ trợ khe cắm HDD SATASSD 512 GB NVMe PCIe', N'còn hàng', N'4')
GO
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (1, N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'activities')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (12, N'hieu', N'968855132dc5d0eb2ed7c0fc4ef3421e', N'blocked')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (14, N'huynh', N'724432de08f74e1fb4dfb69fb4cc7ba8', N'blocked')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (10, N'lam', N'1c6d6ca22cc31cb79e6e1f5277ef06e0', N'blocked')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (11, N'toan', N'7301eea172e89a223798467d4a91e7a9', N'blocked')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (3, N'tranchi', N'1e6086b705c7161eeb93a8b249a5ca7c', N'activities')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (4, N'trung ', N'c2d8730c4cdd662573b0214a0183bf98', N'blocked')
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Categorryid] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Categorryid]
GO
