USE [ProjectDB]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 22.08.2021 23:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[AddressTitle] [nchar](50) NOT NULL,
	[City] [nvarchar](20) NOT NULL,
	[Town] [nvarchar](30) NOT NULL,
	[Neighborhood] [nvarchar](40) NOT NULL,
	[Status] [nvarchar](50) NULL,
	[PostalCode] [int] NOT NULL,
	[AddressDetail] [nvarchar](200) NOT NULL,
	[isUsed] [char](1) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 22.08.2021 23:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](45) NOT NULL,
	[LastName] [nvarchar](45) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](30) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nchar](11) NOT NULL,
	[Role] [nchar](1) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AskQuestion]    Script Date: 22.08.2021 23:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AskQuestion](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](45) NOT NULL,
	[LastName] [nvarchar](45) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[City] [nvarchar](45) NOT NULL,
	[Category] [nvarchar](40) NOT NULL,
	[Topic] [nvarchar](40) NOT NULL,
	[Message] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_AskQuestion] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 22.08.2021 23:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargo](
	[CargoID] [int] IDENTITY(1,1) NOT NULL,
	[CargoCompanyID] [int] NOT NULL,
	[OrderItemID] [int] NOT NULL,
	[Status] [nvarchar](30) NOT NULL,
	[ReceiverName] [nvarchar](50) NULL,
	[ReceiverLastName] [nvarchar](45) NULL,
	[DeliverDate] [smalldatetime] NULL,
 CONSTRAINT [PK_Cargo] PRIMARY KEY CLUSTERED 
(
	[CargoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CargoCompany]    Script Date: 22.08.2021 23:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CargoCompany](
	[CargoCompanyID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](100) NOT NULL,
	[PhoneNumber] [nchar](11) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CargoCompany] PRIMARY KEY CLUSTERED 
(
	[CargoCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 22.08.2021 23:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Date] [varchar](25) NOT NULL,
	[Message] [nvarchar](400) NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 22.08.2021 23:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](45) NOT NULL,
	[LastName] [nvarchar](45) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[PhoneNumber] [char](11) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[DateEntered] [smalldatetime] NOT NULL,
	[Role] [nchar](1) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favourite]    Script Date: 22.08.2021 23:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favourite](
	[FavouriteID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_Favourite] PRIMARY KEY CLUSTERED 
(
	[FavouriteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 22.08.2021 23:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
	[CargoPrice] [float] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 22.08.2021 23:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[OrderItemID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Status] [nvarchar](40) NULL,
 CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED 
(
	[OrderItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 22.08.2021 23:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[PaymentType] [nvarchar](40) NOT NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 22.08.2021 23:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierID] [int] NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Detail] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](400) NULL,
	[Price] [float] NOT NULL,
	[Stock] [int] NOT NULL,
	[Discount] [tinyint] NULL,
	[Status] [nvarchar](50) NULL,
	[Image] [nvarchar](2000) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 22.08.2021 23:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](20) NOT NULL,
	[NumberOfItems] [int] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 22.08.2021 23:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[ReceiptID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](11) NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Receipt] PRIMARY KEY CLUSTERED 
(
	[ReceiptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Saved]    Script Date: 22.08.2021 23:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Saved](
	[SavedID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_Saved] PRIMARY KEY CLUSTERED 
(
	[SavedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 22.08.2021 23:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_ShoppingCart] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 22.08.2021 23:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](100) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](40) NULL,
	[PhoneNumber] [nchar](20) NOT NULL,
	[City] [nvarchar](45) NOT NULL,
	[Town] [nvarchar](50) NULL,
	[AddressDetail] [nvarchar](200) NOT NULL,
	[PostalCode] [int] NOT NULL,
	[Website] [nvarchar](50) NULL,
	[Role] [nchar](1) NULL,
	[Status] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([AddressID], [CustomerID], [AddressTitle], [City], [Town], [Neighborhood], [Status], [PostalCode], [AddressDetail], [isUsed]) VALUES (6, 2, N'Ev                                                ', N'İstanbull', N'Maltepe', N'h', N'Changed', 34000, N'Beyaz sokake', N'N')
INSERT [dbo].[Address] ([AddressID], [CustomerID], [AddressTitle], [City], [Town], [Neighborhood], [Status], [PostalCode], [AddressDetail], [isUsed]) VALUES (8, 2, N'İş                                                ', N'İstanbul', N'Ataşehir', N'Yıldız', N'Active', 34000, N'Deniz caddesi, Fidan sokak, Demir apt. 48/50', N'Y')
INSERT [dbo].[Address] ([AddressID], [CustomerID], [AddressTitle], [City], [Town], [Neighborhood], [Status], [PostalCode], [AddressDetail], [isUsed]) VALUES (12, 2, N'Ev                                                ', N'İstanbul', N'Maltepe', N'Küçükyalı', N'Active', 34000, N'Beyaz sokake', N'Y')
INSERT [dbo].[Address] ([AddressID], [CustomerID], [AddressTitle], [City], [Town], [Neighborhood], [Status], [PostalCode], [AddressDetail], [isUsed]) VALUES (15, 6, N'Okul                                              ', N'Sakarya', N'Beyaz', N'Yıldız', N'Changed', 34000, N'Menekşe Sokak', N'Y')
INSERT [dbo].[Address] ([AddressID], [CustomerID], [AddressTitle], [City], [Town], [Neighborhood], [Status], [PostalCode], [AddressDetail], [isUsed]) VALUES (16, 6, N'Okul                                              ', N'Sakaryaa', N'Beyaz', N'Yıldız', N'Changed', 34000, N'Menekşe Sokak', N'Y')
INSERT [dbo].[Address] ([AddressID], [CustomerID], [AddressTitle], [City], [Town], [Neighborhood], [Status], [PostalCode], [AddressDetail], [isUsed]) VALUES (17, 8, N'Ev                                                ', N'İstanbul', N'Ataşehir', N'Nar', N'Active', 34000, N'Veli sokak, Beyaz apartman No:34 , Kat 5, Daire 23', N'Y')
INSERT [dbo].[Address] ([AddressID], [CustomerID], [AddressTitle], [City], [Town], [Neighborhood], [Status], [PostalCode], [AddressDetail], [isUsed]) VALUES (19, 8, N'İş                                                ', N'İstanbul', N'Üsküdar', N'Kısıklı', N'Active', 34000, N'Öğretmen caddesi, X plaza No:24', N'Y')
INSERT [dbo].[Address] ([AddressID], [CustomerID], [AddressTitle], [City], [Town], [Neighborhood], [Status], [PostalCode], [AddressDetail], [isUsed]) VALUES (21, 9, N'Ev                                                ', N'İstanbul', N'Maltepe', N'Erenköy', N'Active', 34000, N'Menekse sokak, Beyaz apartmanı No : 34', N'Y')
INSERT [dbo].[Address] ([AddressID], [CustomerID], [AddressTitle], [City], [Town], [Neighborhood], [Status], [PostalCode], [AddressDetail], [isUsed]) VALUES (22, 6, N'Ev                                                ', N'Sakarya', N'Beyaz', N'Yıldız', N'Active', 34000, N'Menekşe Sokak', N'N')
INSERT [dbo].[Address] ([AddressID], [CustomerID], [AddressTitle], [City], [Town], [Neighborhood], [Status], [PostalCode], [AddressDetail], [isUsed]) VALUES (23, 10, N'Ev                                                ', N'İstanbul', N'Kadıköy', N'Suadiye', N'Changed', 34000, N'Kırmızı caddesi', N'Y')
INSERT [dbo].[Address] ([AddressID], [CustomerID], [AddressTitle], [City], [Town], [Neighborhood], [Status], [PostalCode], [AddressDetail], [isUsed]) VALUES (24, 10, N'Ev                                                ', N'İstanbul', N'Kadıköy', N'Suadiye', N'Active', 34000, N'Kırmızı caddesi, Nergis Apt No:34', N'N')
INSERT [dbo].[Address] ([AddressID], [CustomerID], [AddressTitle], [City], [Town], [Neighborhood], [Status], [PostalCode], [AddressDetail], [isUsed]) VALUES (25, 11, N'Ev                                                ', N'Ankara', N'Çankaya', N'Sarı', N'Active', 360000, N'Fırın caddesi', N'Y')
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([AdminID], [FirstName], [LastName], [Username], [Password], [Email], [Phone], [Role]) VALUES (2, N'Derin', N'Pınar', N'admin123', N'1234', N'derinpinar@gmail.com', N'05430000   ', N'A')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[AskQuestion] ON 

INSERT [dbo].[AskQuestion] ([QuestionID], [FirstName], [LastName], [Email], [City], [Category], [Topic], [Message]) VALUES (4, N'Suna', N'Hanım', N'gkpnrelif@gmail.com', N'Ankara', N'Şikayet', N'Sponsorluk ve Etkinlik İşlemleri', N'Sıkıntı')
INSERT [dbo].[AskQuestion] ([QuestionID], [FirstName], [LastName], [Email], [City], [Category], [Topic], [Message]) VALUES (5, N'Aslı', N'Aslı', N'ef@gmail.com', N'Adana', N'Bilgi', N'Mağaza İşlemleri', N'teşekkürler')
INSERT [dbo].[AskQuestion] ([QuestionID], [FirstName], [LastName], [Email], [City], [Category], [Topic], [Message]) VALUES (6, N'Büşra', N'Aksu', N'busraaksu@gmail.com', N'Çanakkale', N'Teşekkür', N'Toplu Satış', N'Toplu satışlarda indirim imkanı nasıldır? Bilgi verebilir misiniz?')
INSERT [dbo].[AskQuestion] ([QuestionID], [FirstName], [LastName], [Email], [City], [Category], [Topic], [Message]) VALUES (7, N'Selma', N'Umut', N's@gmail.com', N'Adıyaman', N'Talep', N'Mağaza İşlemleri', N'Kozyatağına bir mağaza açılabilir')
SET IDENTITY_INSERT [dbo].[AskQuestion] OFF
GO
SET IDENTITY_INSERT [dbo].[Cargo] ON 

INSERT [dbo].[Cargo] ([CargoID], [CargoCompanyID], [OrderItemID], [Status], [ReceiverName], [ReceiverLastName], [DeliverDate]) VALUES (14, 2, 19, N'Hazırlanıyor', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([CargoID], [CargoCompanyID], [OrderItemID], [Status], [ReceiverName], [ReceiverLastName], [DeliverDate]) VALUES (15, 2, 20, N'Hazırlanıyor', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([CargoID], [CargoCompanyID], [OrderItemID], [Status], [ReceiverName], [ReceiverLastName], [DeliverDate]) VALUES (16, 2, 21, N'Hazırlanıyor', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([CargoID], [CargoCompanyID], [OrderItemID], [Status], [ReceiverName], [ReceiverLastName], [DeliverDate]) VALUES (17, 2, 22, N'Hazırlanıyor', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([CargoID], [CargoCompanyID], [OrderItemID], [Status], [ReceiverName], [ReceiverLastName], [DeliverDate]) VALUES (18, 2, 23, N'Hazırlanıyor', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([CargoID], [CargoCompanyID], [OrderItemID], [Status], [ReceiverName], [ReceiverLastName], [DeliverDate]) VALUES (19, 2, 24, N'Hazırlanıyor', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([CargoID], [CargoCompanyID], [OrderItemID], [Status], [ReceiverName], [ReceiverLastName], [DeliverDate]) VALUES (20, 2, 25, N'Hazırlanıyor', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([CargoID], [CargoCompanyID], [OrderItemID], [Status], [ReceiverName], [ReceiverLastName], [DeliverDate]) VALUES (21, 2, 26, N'Hazırlanıyor', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([CargoID], [CargoCompanyID], [OrderItemID], [Status], [ReceiverName], [ReceiverLastName], [DeliverDate]) VALUES (22, 2, 27, N'Hazırlanıyor', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([CargoID], [CargoCompanyID], [OrderItemID], [Status], [ReceiverName], [ReceiverLastName], [DeliverDate]) VALUES (23, 2, 28, N'Hazırlanıyor', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([CargoID], [CargoCompanyID], [OrderItemID], [Status], [ReceiverName], [ReceiverLastName], [DeliverDate]) VALUES (24, 2, 29, N'Hazırlanıyor', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([CargoID], [CargoCompanyID], [OrderItemID], [Status], [ReceiverName], [ReceiverLastName], [DeliverDate]) VALUES (25, 2, 30, N'Hazırlanıyor', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([CargoID], [CargoCompanyID], [OrderItemID], [Status], [ReceiverName], [ReceiverLastName], [DeliverDate]) VALUES (26, 2, 31, N'Hazırlanıyor', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([CargoID], [CargoCompanyID], [OrderItemID], [Status], [ReceiverName], [ReceiverLastName], [DeliverDate]) VALUES (27, 2, 32, N'Hazırlanıyor', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Cargo] OFF
GO
SET IDENTITY_INSERT [dbo].[CargoCompany] ON 

INSERT [dbo].[CargoCompany] ([CargoCompanyID], [CompanyName], [PhoneNumber], [Email]) VALUES (2, N'Yurtiçi', N'05432324545', N'yurticicargo@gmail.com')
SET IDENTITY_INSERT [dbo].[CargoCompany] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([CommentID], [CustomerID], [ProductID], [Date], [Message]) VALUES (11, 6, 3, N'20.08.2021 17:31:58', N'Hayat güzel')
INSERT [dbo].[Comment] ([CommentID], [CustomerID], [ProductID], [Date], [Message]) VALUES (12, 6, 2, N'20.08.2021 17:34:10', N'Tadı çok güzel, tavsiye ederim')
INSERT [dbo].[Comment] ([CommentID], [CustomerID], [ProductID], [Date], [Message]) VALUES (13, 6, 1, N'20.08.2021 17:36:50', N'Çikolatayla beraber tadı harika oluyor')
INSERT [dbo].[Comment] ([CommentID], [CustomerID], [ProductID], [Date], [Message]) VALUES (14, 2, 1, N'20.08.2021 20:55:21', N'Her gün içiyorum çok lezzetli')
INSERT [dbo].[Comment] ([CommentID], [CustomerID], [ProductID], [Date], [Message]) VALUES (15, 2, 49, N'20.08.2021 20:55:39', N'Ekonomik')
INSERT [dbo].[Comment] ([CommentID], [CustomerID], [ProductID], [Date], [Message]) VALUES (16, 9, 55, N'20.08.2021 21:02:21', N'Tadı çok güzel ')
INSERT [dbo].[Comment] ([CommentID], [CustomerID], [ProductID], [Date], [Message]) VALUES (17, 9, 69, N'20.08.2021 21:08:40', N'İlk defa denedim tadı güzeldi')
INSERT [dbo].[Comment] ([CommentID], [CustomerID], [ProductID], [Date], [Message]) VALUES (20, 10, 1, N'22.08.2021 23:04:09', N'Damla sakızı aroması çok güzelmiş')
INSERT [dbo].[Comment] ([CommentID], [CustomerID], [ProductID], [Date], [Message]) VALUES (22, 10, 19, N'22.08.2021 23:05:34', N'Daha ekonomik')
INSERT [dbo].[Comment] ([CommentID], [CustomerID], [ProductID], [Date], [Message]) VALUES (23, 10, 49, N'22.08.2021 23:06:07', N'Damla sakızlısı daha güzel')
INSERT [dbo].[Comment] ([CommentID], [CustomerID], [ProductID], [Date], [Message]) VALUES (26, 10, 67, N'22.08.2021 23:11:50', N'İlk defa denedim tadı harika')
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [DateEntered], [Role]) VALUES (2, N'Elif', N'Gökpınar', N'gkpnrelif@gmail.com', N'05304456693', N'1234', CAST(N'2021-01-10T00:00:00' AS SmallDateTime), N'U')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [DateEntered], [Role]) VALUES (3, N'Deniz', N'Yılmaz', N'denizyilmaz@gmail.com', N'05304456767', N'1234', CAST(N'2021-01-23T00:00:00' AS SmallDateTime), N'U')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [DateEntered], [Role]) VALUES (5, N'Aydın', N'Sarı', N'ays@gmail.com', N'05305233456', N'1234', CAST(N'2021-08-10T00:00:00' AS SmallDateTime), N'U')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [DateEntered], [Role]) VALUES (6, N'Feyza', N'Deniz', N'f@gmail.com', N'05432234567', N'12345', CAST(N'2021-08-18T00:00:00' AS SmallDateTime), N'U')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [DateEntered], [Role]) VALUES (7, N'Umut', N'Pınar', N'umutpinar@gmail.com', N'05400000000', N'1234', CAST(N'2021-08-20T00:00:00' AS SmallDateTime), N'U')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [DateEntered], [Role]) VALUES (8, N'Neşe', N'Pınar', N'nesepinar@gmail.com', N'05300000000', N'1234', CAST(N'2021-08-20T00:00:00' AS SmallDateTime), N'U')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [DateEntered], [Role]) VALUES (9, N'Menekşe', N'Sevinç', N'menekse@gmail.com', N'05300000000', N'1234', CAST(N'2021-08-20T00:00:00' AS SmallDateTime), N'U')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [DateEntered], [Role]) VALUES (10, N'Canan', N'Yılmaz', N'c@gmail.com', N'05433213144', N'1234', CAST(N'2021-08-22T00:00:00' AS SmallDateTime), N'U')
INSERT [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [DateEntered], [Role]) VALUES (11, N'Bahar', N'İlk', N'b@gmail.com', N'05430000000', N'1234', CAST(N'2021-08-22T00:00:00' AS SmallDateTime), N'U')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Favourite] ON 

INSERT [dbo].[Favourite] ([FavouriteID], [CustomerID], [ProductID]) VALUES (7, 8, 48)
INSERT [dbo].[Favourite] ([FavouriteID], [CustomerID], [ProductID]) VALUES (8, 8, 67)
INSERT [dbo].[Favourite] ([FavouriteID], [CustomerID], [ProductID]) VALUES (9, 9, 55)
INSERT [dbo].[Favourite] ([FavouriteID], [CustomerID], [ProductID]) VALUES (10, 10, 1)
INSERT [dbo].[Favourite] ([FavouriteID], [CustomerID], [ProductID]) VALUES (11, 10, 19)
INSERT [dbo].[Favourite] ([FavouriteID], [CustomerID], [ProductID]) VALUES (12, 11, 1)
SET IDENTITY_INSERT [dbo].[Favourite] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [CustomerID], [AddressID], [CargoPrice]) VALUES (15, 2, 8, 0)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [AddressID], [CargoPrice]) VALUES (16, 2, 12, 0)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [AddressID], [CargoPrice]) VALUES (17, 2, 8, 0)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [AddressID], [CargoPrice]) VALUES (18, 2, 8, 10)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [AddressID], [CargoPrice]) VALUES (19, 2, 8, 10)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [AddressID], [CargoPrice]) VALUES (20, 6, 15, 10)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [AddressID], [CargoPrice]) VALUES (21, 2, 8, 10)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [AddressID], [CargoPrice]) VALUES (22, 2, 8, 0)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [AddressID], [CargoPrice]) VALUES (23, 8, 17, 0)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [AddressID], [CargoPrice]) VALUES (24, 9, 21, 0)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [AddressID], [CargoPrice]) VALUES (25, 6, 16, 0)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [AddressID], [CargoPrice]) VALUES (26, 10, 23, 0)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [AddressID], [CargoPrice]) VALUES (27, 11, 25, 0)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItem] ON 

INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (11, 15, 19, 1, 39, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (12, 15, 3, 1, 4355, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (13, 15, 2, 1, 150, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (14, 15, 1, 2, 7.5, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (15, 15, 48, 2, 32.5, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (16, 16, 2, 2, 150, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (17, 16, 19, 3, 39, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (18, 16, 48, 1, 32.5, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (19, 17, 3, 1, 4355, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (20, 17, 49, 1, 45, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (21, 19, 1, 1, 7.5, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (22, 20, 1, 2, 7.5, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (23, 21, 1, 1, 7.5, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (24, 22, 3, 1, 4355, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (25, 23, 67, 1, 50, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (26, 23, 19, 2, 39, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (27, 24, 49, 2, 45, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (28, 25, 2, 1, 150, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (29, 26, 1, 3, 7, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (30, 26, 19, 1, 41, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (31, 27, 68, 1, 310, N'Eklendi')
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ProductID], [Quantity], [Price], [Status]) VALUES (32, 27, 48, 1, 21, N'Eklendi')
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([PaymentID], [OrderID], [PaymentType], [Price]) VALUES (10, 15, N'Banka/Kredi Kartı', 0)
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [PaymentType], [Price]) VALUES (11, 16, N'Kapıda Ödeme', 7)
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [PaymentType], [Price]) VALUES (12, 17, N'Kapıda Ödeme', 7)
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [PaymentType], [Price]) VALUES (13, 19, N'Kapıda Ödeme', 7)
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [PaymentType], [Price]) VALUES (14, 20, N'Banka/Kredi Kartı', 0)
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [PaymentType], [Price]) VALUES (15, 21, N'Kapıda Ödeme', 7)
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [PaymentType], [Price]) VALUES (16, 22, N'Kapıda Ödeme', 7)
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [PaymentType], [Price]) VALUES (17, 23, N'Kapıda Ödeme', 7)
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [PaymentType], [Price]) VALUES (18, 24, N'Kapıda Ödeme', 7)
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [PaymentType], [Price]) VALUES (19, 25, N'Kapıda Ödeme', 7)
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [PaymentType], [Price]) VALUES (20, 26, N'Kapıda Ödeme', 7)
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [PaymentType], [Price]) VALUES (21, 27, N'Kapıda Ödeme', 7)
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [SupplierID], [ProductCategoryID], [ProductName], [Detail], [Description], [Price], [Stock], [Discount], [Status], [Image]) VALUES (1, 5, 1, N'Damla Sakızlı Türk Kahvesi', N'100gr', N'%100 Arabica Çekirdek', 7, 98, 0, N'Active', N'~/upload/damla_sakızlı.jpg')
INSERT [dbo].[Product] ([ProductID], [SupplierID], [ProductCategoryID], [ProductName], [Detail], [Description], [Price], [Stock], [Discount], [Status], [Image]) VALUES (2, 5, 2, N'Kenya Kavrulmuş Çekirdek', N'1 kg', N'Kavrulmuş, Öğütülmüş 100% Kahve Çekirdeği içerir.', 150, 19, 0, N'Active', N'~/upload/kenya.jpg')
INSERT [dbo].[Product] ([ProductID], [SupplierID], [ProductCategoryID], [ProductName], [Detail], [Description], [Price], [Stock], [Discount], [Status], [Image]) VALUES (3, 5, 6, N'Sıcak Çikolata Teneke Kutu', N'400gr', NULL, 71, 29, 0, N'Active', N'~/upload/sıcak_cikolata.jpg')
INSERT [dbo].[Product] ([ProductID], [SupplierID], [ProductCategoryID], [ProductName], [Detail], [Description], [Price], [Stock], [Discount], [Status], [Image]) VALUES (19, 5, 5, N'2''si 1 Arada Klasik Hazır Kahve', N'40 adet', N'Kahve Beyazlatıcısı (glukoz şurubu, tam hidrojenize bitkisel yağ(hindistancevizi),stabilizörler(sodyum polifosfat,dipotasyum fosfat),süt proteini, emülgatör(yağ asitlerinin mono ve digliseritleri),topaklanmayı önleyici(silikon dioksit)), çözünebilir kahve.', 41, 38, 0, N'Active', N'~/upload/2si1arada.jpg')
INSERT [dbo].[Product] ([ProductID], [SupplierID], [ProductCategoryID], [ProductName], [Detail], [Description], [Price], [Stock], [Discount], [Status], [Image]) VALUES (48, 5, 3, N'Fındık Aromalı Filtre Kahve', N'250gr', N'Taze Öğütülmüş', 21, 2, 0, N'Active', N'~/upload/fındıkaromalı.png')
INSERT [dbo].[Product] ([ProductID], [SupplierID], [ProductCategoryID], [ProductName], [Detail], [Description], [Price], [Stock], [Discount], [Status], [Image]) VALUES (49, 5, 5, N'3''ü 1 Arada Damla Sakızlı Hazır Kahve', N'40 adet', N'Kahve Beyazlatıcısı (glukoz şurubu, tam hidrojenize bitkisel yağ(hindistan cevizi),stabilizörler ,süt proteini, emülgatör, topaklanmayı önleyici, çözünebilir kahve, aroma verici içerir.', 45, 4, NULL, N'Active', N'~/upload/3u1arada.jpg')
INSERT [dbo].[Product] ([ProductID], [SupplierID], [ProductCategoryID], [ProductName], [Detail], [Description], [Price], [Stock], [Discount], [Status], [Image]) VALUES (52, 6, 1, N'Mehmet Efendi Türk Kahvesi', N'100gr', NULL, 10.5, 5, 0, N'Active', N'~/upload/kurukahveci1.jpg')
INSERT [dbo].[Product] ([ProductID], [SupplierID], [ProductCategoryID], [ProductName], [Detail], [Description], [Price], [Stock], [Discount], [Status], [Image]) VALUES (55, 6, 1, N'Kurukahveci Mehmet Efendi', N'500gr', NULL, 48.99, 4, NULL, N'Active', N'~/upload/kurukahveci2.jpg')
INSERT [dbo].[Product] ([ProductID], [SupplierID], [ProductCategoryID], [ProductName], [Detail], [Description], [Price], [Stock], [Discount], [Status], [Image]) VALUES (67, 6, 1, N'Kurukahveci Mehmet Efendi Filtre Kahve', N'100gr', N'Kolombiya kahvesi genelde asiditesi yüksek, zengin ve güçlü gövdelidir. Tatlı fındıksıdan çikolata, karamel, tropikal meyveye kadar geniş yelpazede çok farklı lezzetler barındırır.', 50, 3, NULL, N'Active', N'~/upload/kolombiya_kurukahveci.jpg')
INSERT [dbo].[Product] ([ProductID], [SupplierID], [ProductCategoryID], [ProductName], [Detail], [Description], [Price], [Stock], [Discount], [Status], [Image]) VALUES (68, 5, 4, N'Espresso Çekirdek Kahve', N'3kg', NULL, 310, 4, NULL, N'Active', N'~/upload/espresso_kd.png')
INSERT [dbo].[Product] ([ProductID], [SupplierID], [ProductCategoryID], [ProductName], [Detail], [Description], [Price], [Stock], [Discount], [Status], [Image]) VALUES (69, 5, 2, N'Kosta Rika Kavrulmuş Çekirdek', N'1kg', N'Kahve severlerin ihtiyaçlarına göre çok sayıda farklı gramajda ambalajlama yapıyoruz. Üstelik farklı alternatifler sunan ambalajlarımızın tümünde oksijen miktarını düşürerek kahvelerimizin tazeliğini ve aromasını koruyoruz. ', 160, 6, NULL, N'Active', N'~/upload/kostarika.png')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([ProductCategoryID], [CategoryName], [NumberOfItems]) VALUES (1, N'Türk Kahvesi', 11)
INSERT [dbo].[ProductCategory] ([ProductCategoryID], [CategoryName], [NumberOfItems]) VALUES (2, N'Yöresel Kahve', 10)
INSERT [dbo].[ProductCategory] ([ProductCategoryID], [CategoryName], [NumberOfItems]) VALUES (3, N'Filtre Kahve', 20)
INSERT [dbo].[ProductCategory] ([ProductCategoryID], [CategoryName], [NumberOfItems]) VALUES (4, N'Espresso', 10)
INSERT [dbo].[ProductCategory] ([ProductCategoryID], [CategoryName], [NumberOfItems]) VALUES (5, N'Hazır Kahveler', 19)
INSERT [dbo].[ProductCategory] ([ProductCategoryID], [CategoryName], [NumberOfItems]) VALUES (6, N'Sıcak Çikolata', 10)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Receipt] ON 

INSERT [dbo].[Receipt] ([ReceiptID], [OrderID], [AddressID], [FirstName], [LastName], [Email], [PhoneNumber], [Date]) VALUES (7, 15, 8, N'Elif', N'Gökpınar', N'gkpnrelif@gmail.com', N'05304456693', CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Receipt] ([ReceiptID], [OrderID], [AddressID], [FirstName], [LastName], [Email], [PhoneNumber], [Date]) VALUES (8, 16, 8, N'Elif', N'Gökpınar', N'gkpnrelif@gmail.com', N'05304456693', CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Receipt] ([ReceiptID], [OrderID], [AddressID], [FirstName], [LastName], [Email], [PhoneNumber], [Date]) VALUES (9, 17, 8, N'Elif', N'Gökpınar', N'gkpnrelif@gmail.com', N'05304456693', CAST(N'2021-08-17' AS Date))
INSERT [dbo].[Receipt] ([ReceiptID], [OrderID], [AddressID], [FirstName], [LastName], [Email], [PhoneNumber], [Date]) VALUES (10, 19, 12, N'Elif', N'Gökpınar', N'gkpnrelif@gmail.com', N'05304456693', CAST(N'2021-08-18' AS Date))
INSERT [dbo].[Receipt] ([ReceiptID], [OrderID], [AddressID], [FirstName], [LastName], [Email], [PhoneNumber], [Date]) VALUES (11, 20, 15, N'Feyza', N'Gök', N'f@gmail.com', N'05432234567', CAST(N'2021-08-18' AS Date))
INSERT [dbo].[Receipt] ([ReceiptID], [OrderID], [AddressID], [FirstName], [LastName], [Email], [PhoneNumber], [Date]) VALUES (12, 21, 8, N'Elif', N'Gökpınar', N'gkpnrelif@gmail.com', N'05304456693', CAST(N'2021-08-20' AS Date))
INSERT [dbo].[Receipt] ([ReceiptID], [OrderID], [AddressID], [FirstName], [LastName], [Email], [PhoneNumber], [Date]) VALUES (13, 22, 8, N'Elif', N'Gökpınar', N'gkpnrelif@gmail.com', N'05304456693', CAST(N'2021-08-20' AS Date))
INSERT [dbo].[Receipt] ([ReceiptID], [OrderID], [AddressID], [FirstName], [LastName], [Email], [PhoneNumber], [Date]) VALUES (14, 23, 19, N'Neşe', N'Pınar', N'nesepinar@gmail.com', N'05300000000', CAST(N'2021-08-20' AS Date))
INSERT [dbo].[Receipt] ([ReceiptID], [OrderID], [AddressID], [FirstName], [LastName], [Email], [PhoneNumber], [Date]) VALUES (15, 24, 21, N'Menekşe', N'Sevinç', N'menekse@gmail.com', N'05300000000', CAST(N'2021-08-20' AS Date))
INSERT [dbo].[Receipt] ([ReceiptID], [OrderID], [AddressID], [FirstName], [LastName], [Email], [PhoneNumber], [Date]) VALUES (16, 25, 16, N'Feyza', N'Deniz', N'f@gmail.com', N'05432234567', CAST(N'2021-08-20' AS Date))
INSERT [dbo].[Receipt] ([ReceiptID], [OrderID], [AddressID], [FirstName], [LastName], [Email], [PhoneNumber], [Date]) VALUES (17, 26, 23, N'Canan', N'Yılmaz', N'c@gmail.com', N'05433213144', CAST(N'2021-08-22' AS Date))
INSERT [dbo].[Receipt] ([ReceiptID], [OrderID], [AddressID], [FirstName], [LastName], [Email], [PhoneNumber], [Date]) VALUES (18, 27, 25, N'Bahar', N'İlk', N'b@gmail.com', N'05430000000', CAST(N'2021-08-22' AS Date))
SET IDENTITY_INSERT [dbo].[Receipt] OFF
GO
SET IDENTITY_INSERT [dbo].[Saved] ON 

INSERT [dbo].[Saved] ([SavedID], [CustomerID], [ProductID]) VALUES (8, 8, 19)
INSERT [dbo].[Saved] ([SavedID], [CustomerID], [ProductID]) VALUES (9, 8, 68)
INSERT [dbo].[Saved] ([SavedID], [CustomerID], [ProductID]) VALUES (10, 9, 55)
INSERT [dbo].[Saved] ([SavedID], [CustomerID], [ProductID]) VALUES (11, 10, 1)
INSERT [dbo].[Saved] ([SavedID], [CustomerID], [ProductID]) VALUES (12, 10, 19)
INSERT [dbo].[Saved] ([SavedID], [CustomerID], [ProductID]) VALUES (13, 11, 1)
SET IDENTITY_INSERT [dbo].[Saved] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingCart] ON 

INSERT [dbo].[ShoppingCart] ([CartID], [CustomerID], [ProductID], [Quantity], [Price]) VALUES (48, 6, 3, 8, 71)
INSERT [dbo].[ShoppingCart] ([CartID], [CustomerID], [ProductID], [Quantity], [Price]) VALUES (49, 6, 55, 2, 48.99)
INSERT [dbo].[ShoppingCart] ([CartID], [CustomerID], [ProductID], [Quantity], [Price]) VALUES (51, 6, 2, 4, 150)
INSERT [dbo].[ShoppingCart] ([CartID], [CustomerID], [ProductID], [Quantity], [Price]) VALUES (52, 6, 68, 1, 310)
INSERT [dbo].[ShoppingCart] ([CartID], [CustomerID], [ProductID], [Quantity], [Price]) VALUES (56, 10, 19, 4, 41)
SET IDENTITY_INSERT [dbo].[ShoppingCart] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [Username], [Password], [Email], [PhoneNumber], [City], [Town], [AddressDetail], [PostalCode], [Website], [Role], [Status]) VALUES (5, N'Kahve Dünyası', N'k1', N'1234', N'musterihizmetleri@kahvedunyasi.com', N'0 850 393 70 70     ', N'İstanbul', N'Beyoğlu', N'Ömer Avni Mahallesi, Meclisi Mebusan Caddesi, İnebolu Sokak, Ekemen Han No:1 Kat:4
Beyoğlu / İstanbul', 34000, N'www.kahvedunyasi.com', N'S', N'Active')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [Username], [Password], [Email], [PhoneNumber], [City], [Town], [AddressDetail], [PostalCode], [Website], [Role], [Status]) VALUES (6, N'Kurukahveci Mehmet Efendi', N'k2', N'1234', N'mehmetefendi@mehmetefendi.com', N'(0212) 511 42 62    ', N'İstanbul', N'Eminönü', N'Tahmis Sokağı 66
Eminönü 34116 İstanbul', 34000, N'www.https://www.mehmetefendi.com', N'S', N'Active')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [Username], [Password], [Email], [PhoneNumber], [City], [Town], [AddressDetail], [PostalCode], [Website], [Role], [Status]) VALUES (7, N'İbrahim Bey Türk Kahveleri', N'k3', N'1234', N'info@ibrahimbey.com', N'+90 212 882 72 73   ', N'İstanbul', N'Büyükçekmece', N'Fatih Mahallesi İzmir Caddesi 6/BB Buyukcekmece Istanbul', 34000, N'www.http://www.ibrahimbey.com', N'S', N'Active')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [Username], [Password], [Email], [PhoneNumber], [City], [Town], [AddressDetail], [PostalCode], [Website], [Role], [Status]) VALUES (8, N'Ülker', N'k4', N'1234', N'info@ülker', N'+90 216 524 29 00   ', N'İstanbul', N'Üsküdar', N'Ferah Caddesi. Kısıklı Mahallesi. No 1 34692 İstanbul - Türkiye', 34000, N'www.ulker.com.tr', N'S', N'Active')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [Username], [Password], [Email], [PhoneNumber], [City], [Town], [AddressDetail], [PostalCode], [Website], [Role], [Status]) VALUES (9, N'Coffee Black Pearl', N'k5', N'1234', N'info@coffeeblackpearl.com', N'+90 212 882 72 73   ', N'İstanbul', N'Büyükçekmece', N'FATİH MAH. İZMİR CAD. NO:6B/B BÜYÜKÇEKMECE İSTANBUL', 34000, N'www.https://www.coffeeblackpearl.com', N'S', N'Active')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [Username], [Password], [Email], [PhoneNumber], [City], [Town], [AddressDetail], [PostalCode], [Website], [Role], [Status]) VALUES (11, N'Bayram Efendi Osmalı Kahvecisi', N'k6', N'1234', N'info@osmanlikahvecisi.com', N'444 88 45           ', N'Antalya', N'Döşemealtı', N'444 88 45', 38000, N'www.https://osmanlikahvecisi.com', N'S', N'Active')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [Username], [Password], [Email], [PhoneNumber], [City], [Town], [AddressDetail], [PostalCode], [Website], [Role], [Status]) VALUES (14, N'Yeni Kahve', N'k8', N'1234', N'yenikahve@gmail.com', N'05300000000         ', N'İstanbul', N'Maltepe', N'Saray caddesi, X Plaza B blok, Kozyatağı Mahallesi', 34000, N'www.yenikahve.com', N'S', N'Deleted')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [Username], [Password], [Email], [PhoneNumber], [City], [Town], [AddressDetail], [PostalCode], [Website], [Role], [Status]) VALUES (19, N's', N's', N's', N's', N'2                   ', N's', N's', N's', 2, N's', N'S', N'Deleted')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Customer]
GO
ALTER TABLE [dbo].[Cargo]  WITH CHECK ADD  CONSTRAINT [FK_Cargo_Cargo] FOREIGN KEY([OrderItemID])
REFERENCES [dbo].[OrderItem] ([OrderItemID])
GO
ALTER TABLE [dbo].[Cargo] CHECK CONSTRAINT [FK_Cargo_Cargo]
GO
ALTER TABLE [dbo].[Cargo]  WITH CHECK ADD  CONSTRAINT [FK_Cargo_CargoCompany] FOREIGN KEY([CargoCompanyID])
REFERENCES [dbo].[CargoCompany] ([CargoCompanyID])
GO
ALTER TABLE [dbo].[Cargo] CHECK CONSTRAINT [FK_Cargo_CargoCompany]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Customer]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Product]
GO
ALTER TABLE [dbo].[Favourite]  WITH CHECK ADD  CONSTRAINT [FK_Favourite_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Favourite] CHECK CONSTRAINT [FK_Favourite_Customer]
GO
ALTER TABLE [dbo].[Favourite]  WITH CHECK ADD  CONSTRAINT [FK_Favourite_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Favourite] CHECK CONSTRAINT [FK_Favourite_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Address]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Order]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Product]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Order]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[ProductCategory] ([ProductCategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([SupplierID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_Address]
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_Receipt] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_Receipt]
GO
ALTER TABLE [dbo].[Saved]  WITH CHECK ADD  CONSTRAINT [FK_Saved_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Saved] CHECK CONSTRAINT [FK_Saved_Customer]
GO
ALTER TABLE [dbo].[Saved]  WITH CHECK ADD  CONSTRAINT [FK_Saved_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Saved] CHECK CONSTRAINT [FK_Saved_Product]
GO
ALTER TABLE [dbo].[ShoppingCart]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[ShoppingCart] CHECK CONSTRAINT [FK_ShoppingCart_Customer]
GO
ALTER TABLE [dbo].[ShoppingCart]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ShoppingCart] CHECK CONSTRAINT [FK_ShoppingCart_Product]
GO
