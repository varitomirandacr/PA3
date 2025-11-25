USE [ProductDB]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/24/2025 8:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](255) NULL,
	[Description] [nvarchar](1000) NULL,
	[LastModified] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Components]    Script Date: 11/24/2025 8:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Components](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[content] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Components] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 11/24/2025 8:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[InventoryID] [int] IDENTITY(1,1) NOT NULL,
	[UnitPrice] [decimal](10, 2) NULL,
	[UnitsInStock] [int] NULL,
	[LastUpdated] [datetime] NULL,
	[ProductId] [int] NULL,
	[DateAdded] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 11/24/2025 8:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[message] [nvarchar](255) NOT NULL,
	[is_read] [bit] NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/24/2025 8:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](255) NULL,
	[InventoryID] [int] NULL,
	[SupplierID] [int] NULL,
	[Description] [nvarchar](1000) NULL,
	[Rating] [decimal](3, 2) NULL,
	[CategoryID] [int] NULL,
	[LastModified] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[CreatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/24/2025 8:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 11/24/2025 8:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](255) NULL,
	[ContactName] [nvarchar](255) NULL,
	[ContactTitle] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Address] [nvarchar](1000) NULL,
	[City] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[LastModified] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 11/24/2025 8:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](1000) NULL,
	[Status] [nvarchar](50) NULL,
	[DueDate] [datetime] NULL,
	[CreatedAt] [datetime] NULL,
	[LastModified] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserActions]    Script Date: 11/24/2025 8:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserActions](
	[Id] [numeric](18, 0) NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 11/24/2025 8:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[Id] [numeric](18, 0) NULL,
	[RoldID] [numeric](18, 0) NULL,
	[UserID] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/24/2025 8:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[PasswordHash] [nvarchar](255) NULL,
	[CreatedAt] [datetime] NULL,
	[IsActive] [bit] NULL,
	[LastModified] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[RoleID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [LastModified], [ModifiedBy]) VALUES (1, N'Beveragesop - v6', N'Drinks like soda, water, and juice xx', NULL, NULL)
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [LastModified], [ModifiedBy]) VALUES (2, N'Food - v2', N'All kinds of food items', CAST(N'2025-06-30T20:56:17.580' AS DateTime), N'System')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [LastModified], [ModifiedBy]) VALUES (3, N'Snacks', N'Snack items like chips and candy', NULL, N'System')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [LastModified], [ModifiedBy]) VALUES (4, N'Dairy', N'Milk, cheese, and other dairy products', NULL, N'System')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [LastModified], [ModifiedBy]) VALUES (5, N'Electronics', N'Devices and gadgets', CAST(N'2025-02-12T20:44:38.100' AS DateTime), N'System')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [LastModified], [ModifiedBy]) VALUES (12, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Components] ON 
GO
INSERT [dbo].[Components] ([ID], [name], [content]) VALUES (CAST(2 AS Numeric(18, 0)), N'image', N'image')
GO
INSERT [dbo].[Components] ([ID], [name], [content]) VALUES (CAST(3 AS Numeric(18, 0)), N'media', N'media')
GO
INSERT [dbo].[Components] ([ID], [name], [content]) VALUES (CAST(4 AS Numeric(18, 0)), N'chart', N'chart')
GO
SET IDENTITY_INSERT [dbo].[Components] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 
GO
INSERT [dbo].[Inventory] ([InventoryID], [UnitPrice], [UnitsInStock], [LastUpdated], [ProductId], [DateAdded], [ModifiedBy]) VALUES (1, CAST(2.99 AS Decimal(10, 2)), 200, NULL, 1, NULL, NULL)
GO
INSERT [dbo].[Inventory] ([InventoryID], [UnitPrice], [UnitsInStock], [LastUpdated], [ProductId], [DateAdded], [ModifiedBy]) VALUES (2, CAST(3.49 AS Decimal(10, 2)), 150, CAST(N'2025-02-12T20:44:48.367' AS DateTime), 2, CAST(N'2025-02-12T20:44:48.367' AS DateTime), N'System')
GO
INSERT [dbo].[Inventory] ([InventoryID], [UnitPrice], [UnitsInStock], [LastUpdated], [ProductId], [DateAdded], [ModifiedBy]) VALUES (3, CAST(5.99 AS Decimal(10, 2)), 100, CAST(N'2025-02-12T20:44:48.367' AS DateTime), 3, CAST(N'2025-02-12T20:44:48.367' AS DateTime), N'System')
GO
INSERT [dbo].[Inventory] ([InventoryID], [UnitPrice], [UnitsInStock], [LastUpdated], [ProductId], [DateAdded], [ModifiedBy]) VALUES (4, CAST(1.99 AS Decimal(10, 2)), 250, CAST(N'2025-02-12T20:44:48.367' AS DateTime), 4, CAST(N'2025-02-12T20:44:48.367' AS DateTime), N'System')
GO
INSERT [dbo].[Inventory] ([InventoryID], [UnitPrice], [UnitsInStock], [LastUpdated], [ProductId], [DateAdded], [ModifiedBy]) VALUES (5, CAST(2.49 AS Decimal(10, 2)), 180, CAST(N'2025-02-12T20:44:48.367' AS DateTime), 5, CAST(N'2025-02-12T20:44:48.367' AS DateTime), N'System')
GO
INSERT [dbo].[Inventory] ([InventoryID], [UnitPrice], [UnitsInStock], [LastUpdated], [ProductId], [DateAdded], [ModifiedBy]) VALUES (6, CAST(3.49 AS Decimal(10, 2)), 200, CAST(N'2025-02-12T20:44:48.367' AS DateTime), 6, CAST(N'2025-02-12T20:44:48.367' AS DateTime), N'System')
GO
INSERT [dbo].[Inventory] ([InventoryID], [UnitPrice], [UnitsInStock], [LastUpdated], [ProductId], [DateAdded], [ModifiedBy]) VALUES (7, CAST(199.99 AS Decimal(10, 2)), 50, CAST(N'2025-02-12T20:44:48.367' AS DateTime), 7, CAST(N'2025-02-12T20:44:48.367' AS DateTime), N'System')
GO
INSERT [dbo].[Inventory] ([InventoryID], [UnitPrice], [UnitsInStock], [LastUpdated], [ProductId], [DateAdded], [ModifiedBy]) VALUES (8, CAST(999.99 AS Decimal(10, 2)), 30, CAST(N'2025-02-12T20:44:48.367' AS DateTime), 8, CAST(N'2025-02-12T20:44:48.367' AS DateTime), N'System')
GO
INSERT [dbo].[Inventory] ([InventoryID], [UnitPrice], [UnitsInStock], [LastUpdated], [ProductId], [DateAdded], [ModifiedBy]) VALUES (9, CAST(799.99 AS Decimal(10, 2)), 40, CAST(N'2025-02-12T20:44:48.367' AS DateTime), 9, CAST(N'2025-02-12T20:44:48.367' AS DateTime), N'System')
GO
INSERT [dbo].[Inventory] ([InventoryID], [UnitPrice], [UnitsInStock], [LastUpdated], [ProductId], [DateAdded], [ModifiedBy]) VALUES (10, CAST(149.99 AS Decimal(10, 2)), 60, CAST(N'2025-02-12T20:44:48.367' AS DateTime), 10, CAST(N'2025-02-12T20:44:48.367' AS DateTime), N'System')
GO
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[Notifications] ON 
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (1, 78, N'Notification message 1 ', 0, NULL)
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (2, 70, N'Notification message 2', 0, CAST(N'2025-02-24T17:31:22.520' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (3, 29, N'Notification message 3', 0, CAST(N'2025-02-24T17:31:22.520' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (4, 25, N'Notification message 4', 1, CAST(N'2025-02-24T17:31:22.520' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (5, 56, N'Notification message 5', 0, CAST(N'2025-02-24T17:31:22.520' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (6, 35, N'Notification message 6', 1, CAST(N'2025-02-24T17:31:22.520' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (7, 96, N'Notification message 7', 0, CAST(N'2025-02-24T17:31:22.520' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (8, 86, N'Notification message 8', 0, CAST(N'2025-02-24T17:31:22.520' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (9, 12, N'Notification message 9', 0, CAST(N'2025-02-24T17:31:22.520' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (10, 77, N'Notification message 10', 0, CAST(N'2025-02-24T17:31:22.520' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (11, 40, N'Notification message 11', 0, CAST(N'2025-02-24T17:31:22.520' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (12, 10, N'Notification message 12', 1, CAST(N'2025-02-24T17:31:22.520' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (13, 52, N'Notification message 13', 1, CAST(N'2025-02-24T17:31:22.520' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (14, 31, N'Notification message 14', 1, CAST(N'2025-02-24T17:31:22.520' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (15, 92, N'Notification message 15', 0, CAST(N'2025-02-24T17:31:22.520' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (16, 46, N'Notification message 16', 0, CAST(N'2025-02-24T17:31:22.520' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (17, 52, N'Notification message 17', 0, CAST(N'2025-02-24T17:31:22.520' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (18, 24, N'Notification message 18', 1, CAST(N'2025-02-24T17:31:22.523' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (19, 14, N'Notification message 19', 0, CAST(N'2025-02-24T17:31:22.523' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (20, 37, N'Notification message 20', 1, CAST(N'2025-02-24T17:31:22.523' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (21, 8, N'Notification message 21', 0, CAST(N'2025-02-24T17:31:22.523' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (22, 5, N'Notification message 22', 0, CAST(N'2025-02-24T17:31:22.523' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (23, 51, N'Notification message 23', 0, CAST(N'2025-02-24T17:31:22.523' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (24, 63, N'Notification message 24', 1, CAST(N'2025-02-24T17:31:22.523' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (25, 64, N'Notification message 25', 1, CAST(N'2025-02-24T17:31:22.523' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (26, 70, N'Notification message 26', 0, CAST(N'2025-02-24T17:31:22.523' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (27, 5, N'Notification message 27', 1, CAST(N'2025-02-24T17:31:22.523' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (28, 43, N'Notification message 28', 1, CAST(N'2025-02-24T17:31:22.527' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (29, 33, N'Notification message 29', 0, CAST(N'2025-02-24T17:31:22.527' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (30, 45, N'Notification message 30', 0, CAST(N'2025-02-24T17:31:22.527' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (31, 58, N'Notification message 31', 0, CAST(N'2025-02-24T17:31:22.533' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (32, 8, N'Notification message 32', 1, CAST(N'2025-02-24T17:31:22.533' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (33, 95, N'Notification message 33', 0, CAST(N'2025-02-24T17:31:22.533' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (34, 3, N'Notification message 34', 0, CAST(N'2025-02-24T17:31:22.533' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (35, 40, N'Notification message 35', 0, CAST(N'2025-02-24T17:31:22.533' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (36, 11, N'Notification message 36', 0, CAST(N'2025-02-24T17:31:22.537' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (37, 99, N'Notification message 37', 1, CAST(N'2025-02-24T17:31:22.537' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (38, 59, N'Notification message 38', 1, CAST(N'2025-02-24T17:31:22.537' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (39, 88, N'Notification message 39', 0, CAST(N'2025-02-24T17:31:22.537' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (40, 71, N'Notification message 40', 0, CAST(N'2025-02-24T17:31:22.540' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (41, 38, N'Notification message 41', 0, CAST(N'2025-02-24T17:31:22.540' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (42, 99, N'Notification message 42', 1, CAST(N'2025-02-24T17:31:22.540' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (43, 1, N'Notification message 43', 0, CAST(N'2025-02-24T17:31:22.540' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (44, 80, N'Notification message 44', 1, CAST(N'2025-02-24T17:31:22.540' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (45, 2, N'Notification message 45', 0, CAST(N'2025-02-24T17:31:22.540' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (46, 40, N'Notification message 46', 1, CAST(N'2025-02-24T17:31:22.540' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (47, 94, N'Notification message 47', 1, CAST(N'2025-02-24T17:31:22.543' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (48, 17, N'Notification message 48', 0, CAST(N'2025-02-24T17:31:22.543' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (49, 9, N'Notification message 49', 0, CAST(N'2025-02-24T17:31:22.543' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (50, 64, N'Notification message 50', 1, CAST(N'2025-02-24T17:31:22.543' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (51, 38, N'Notification message 51', 0, CAST(N'2025-02-24T17:31:22.543' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (52, 93, N'Notification message 52', 1, CAST(N'2025-02-24T17:31:22.543' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (53, 82, N'Notification message 53', 0, CAST(N'2025-02-24T17:31:22.560' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (54, 74, N'Notification message 54', 0, CAST(N'2025-02-24T17:31:22.560' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (55, 18, N'Notification message 55', 0, CAST(N'2025-02-24T17:31:22.560' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (56, 52, N'Notification message 56', 0, CAST(N'2025-02-24T17:31:22.560' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (57, 26, N'Notification message 57', 1, CAST(N'2025-02-24T17:31:22.560' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (58, 26, N'Notification message 58', 0, CAST(N'2025-02-24T17:31:22.560' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (59, 1, N'Notification message 59', 1, CAST(N'2025-02-24T17:31:22.560' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (60, 52, N'Notification message 60', 0, CAST(N'2025-02-24T17:31:22.563' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (61, 76, N'Notification message 61', 0, CAST(N'2025-02-24T17:31:22.563' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (62, 53, N'Notification message 62', 1, CAST(N'2025-02-24T17:31:22.563' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (63, 53, N'Notification message 63', 1, CAST(N'2025-02-24T17:31:22.563' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (64, 24, N'Notification message 64', 1, CAST(N'2025-02-24T17:31:22.563' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (65, 89, N'Notification message 65', 0, CAST(N'2025-02-24T17:31:22.563' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (66, 88, N'Notification message 66', 0, CAST(N'2025-02-24T17:31:22.563' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (67, 47, N'Notification message 67', 1, CAST(N'2025-02-24T17:31:22.563' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (68, 42, N'Notification message 68', 1, CAST(N'2025-02-24T17:31:22.563' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (69, 22, N'Notification message 69', 0, CAST(N'2025-02-24T17:31:22.563' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (70, 16, N'Notification message 70', 1, CAST(N'2025-02-24T17:31:22.563' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (71, 29, N'Notification message 71', 1, CAST(N'2025-02-24T17:31:22.563' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (72, 71, N'Notification message 72', 0, CAST(N'2025-02-24T17:31:22.563' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (73, 12, N'Notification message 73', 1, CAST(N'2025-02-24T17:31:22.563' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (74, 49, N'Notification message 74', 1, CAST(N'2025-02-24T17:31:22.563' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (75, 56, N'Notification message 75', 0, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (76, 26, N'Notification message 76', 1, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (77, 84, N'Notification message 77', 0, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (78, 95, N'Notification message 78', 1, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (79, 35, N'Notification message 79', 1, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (80, 3, N'Notification message 80', 0, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (81, 73, N'Notification message 81', 1, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (82, 42, N'Notification message 82', 0, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (83, 8, N'Notification message 83', 1, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (84, 56, N'Notification message 84', 0, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (85, 18, N'Notification message 85', 1, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (86, 9, N'Notification message 86', 0, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (87, 63, N'Notification message 87', 0, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (88, 44, N'Notification message 88', 0, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (89, 9, N'Notification message 89', 1, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (90, 14, N'Notification message 90', 0, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (91, 7, N'Notification message 91', 0, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (92, 12, N'Notification message 92', 0, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (93, 31, N'Notification message 93', 1, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (94, 70, N'Notification message 94', 0, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (95, 70, N'Notification message 95', 0, CAST(N'2025-02-24T17:31:22.567' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (96, 2, N'Notification message 96', 1, CAST(N'2025-02-24T17:31:22.570' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (97, 20, N'Notification message 97', 0, CAST(N'2025-02-24T17:31:22.570' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (98, 2, N'Notification message 98', 1, CAST(N'2025-02-24T17:31:22.570' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (99, 70, N'Notification message 99', 1, CAST(N'2025-02-24T17:31:22.570' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (100, 66, N'Notification message 100', 0, CAST(N'2025-02-24T17:31:22.570' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (101, 57, N'Notification message 101', 1, CAST(N'2025-02-24T17:31:22.570' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (102, 12, N'Notification message 102', 1, CAST(N'2025-02-24T17:31:22.570' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (103, 32, N'Notification message 103', 1, CAST(N'2025-02-24T17:31:22.570' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (104, 28, N'Notification message 104', 0, CAST(N'2025-02-24T17:31:22.570' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (105, 70, N'Notification message 105', 0, CAST(N'2025-02-24T17:31:22.570' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (106, 91, N'Notification message 106', 0, CAST(N'2025-02-24T17:31:22.570' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (107, 83, N'Notification message 107', 1, CAST(N'2025-02-24T17:31:22.570' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (108, 64, N'Notification message 108', 1, CAST(N'2025-02-24T17:31:22.570' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (109, 94, N'Notification message 109', 0, CAST(N'2025-02-24T17:31:22.573' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (110, 47, N'Notification message 110', 1, CAST(N'2025-02-24T17:31:22.573' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (111, 95, N'Notification message 111', 1, CAST(N'2025-02-24T17:31:22.573' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (112, 6, N'Notification message 112', 1, CAST(N'2025-02-24T17:31:22.573' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (113, 91, N'Notification message 113', 0, CAST(N'2025-02-24T17:31:22.573' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (114, 50, N'Notification message 114', 0, CAST(N'2025-02-24T17:31:22.573' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (115, 29, N'Notification message 115', 1, CAST(N'2025-02-24T17:31:22.577' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (116, 34, N'Notification message 116', 1, CAST(N'2025-02-24T17:31:22.577' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (117, 83, N'Notification message 117', 1, CAST(N'2025-02-24T17:31:22.577' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (118, 36, N'Notification message 118', 0, CAST(N'2025-02-24T17:31:22.577' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (119, 77, N'Notification message 119', 1, CAST(N'2025-02-24T17:31:22.577' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (120, 84, N'Notification message 120', 1, CAST(N'2025-02-24T17:31:22.577' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (121, 56, N'Notification message 121', 0, CAST(N'2025-02-24T17:31:22.577' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (122, 11, N'Notification message 122', 1, CAST(N'2025-02-24T17:31:22.577' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (123, 91, N'Notification message 123', 0, CAST(N'2025-02-24T17:31:22.577' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (124, 90, N'Notification message 124', 1, CAST(N'2025-02-24T17:31:22.577' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (125, 31, N'Notification message 125', 1, CAST(N'2025-02-24T17:31:22.577' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (126, 8, N'Notification message 126', 0, CAST(N'2025-02-24T17:31:22.577' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (127, 34, N'Notification message 127', 0, CAST(N'2025-02-24T17:31:22.577' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (128, 95, N'Notification message 128', 1, CAST(N'2025-02-24T17:31:22.577' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (129, 98, N'Notification message 129', 1, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (130, 82, N'Notification message 130', 0, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (131, 67, N'Notification message 131', 0, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (132, 34, N'Notification message 132', 0, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (133, 81, N'Notification message 133', 1, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (134, 9, N'Notification message 134', 0, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (135, 42, N'Notification message 135', 1, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (136, 80, N'Notification message 136', 0, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (137, 28, N'Notification message 137', 0, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (138, 77, N'Notification message 138', 0, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (139, 39, N'Notification message 139', 0, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (140, 80, N'Notification message 140', 1, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (141, 83, N'Notification message 141', 1, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (142, 62, N'Notification message 142', 0, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (143, 9, N'Notification message 143', 0, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (144, 89, N'Notification message 144', 0, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (145, 39, N'Notification message 145', 1, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (146, 49, N'Notification message 146', 0, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (147, 9, N'Notification message 147', 1, CAST(N'2025-02-24T17:31:22.580' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (148, 17, N'Notification message 148', 0, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (149, 94, N'Notification message 149', 1, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (150, 24, N'Notification message 150', 0, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (151, 81, N'Notification message 151', 1, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (152, 33, N'Notification message 152', 1, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (153, 6, N'Notification message 153', 0, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (154, 94, N'Notification message 154', 1, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (155, 59, N'Notification message 155', 0, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (156, 18, N'Notification message 156', 0, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (157, 11, N'Notification message 157', 1, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (158, 77, N'Notification message 158', 1, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (159, 78, N'Notification message 159', 1, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (160, 81, N'Notification message 160', 1, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (161, 76, N'Notification message 161', 0, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (162, 59, N'Notification message 162', 0, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (163, 34, N'Notification message 163', 0, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (164, 12, N'Notification message 164', 1, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (165, 70, N'Notification message 165', 1, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (166, 86, N'Notification message 166', 1, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (167, 65, N'Notification message 167', 1, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (168, 25, N'Notification message 168', 0, CAST(N'2025-02-24T17:31:22.583' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (169, 80, N'Notification message 169', 0, CAST(N'2025-02-24T17:31:22.587' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (170, 7, N'Notification message 170', 1, CAST(N'2025-02-24T17:31:22.587' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (171, 81, N'Notification message 171', 0, CAST(N'2025-02-24T17:31:22.587' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (172, 5, N'Notification message 172', 0, CAST(N'2025-02-24T17:31:22.587' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (173, 72, N'Notification message 173', 1, CAST(N'2025-02-24T17:31:22.587' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (174, 4, N'Notification message 174', 0, CAST(N'2025-02-24T17:31:22.587' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (175, 39, N'Notification message 175', 1, CAST(N'2025-02-24T17:31:22.587' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (176, 87, N'Notification message 176', 0, CAST(N'2025-02-24T17:31:22.587' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (177, 53, N'Notification message 177', 1, CAST(N'2025-02-24T17:31:22.587' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (178, 94, N'Notification message 178', 1, CAST(N'2025-02-24T17:31:22.587' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (179, 67, N'Notification message 179', 0, CAST(N'2025-02-24T17:31:22.587' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (180, 26, N'Notification message 180', 1, CAST(N'2025-02-24T17:31:22.587' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (181, 33, N'Notification message 181', 1, CAST(N'2025-02-24T17:31:22.587' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (182, 71, N'Notification message 182', 0, CAST(N'2025-02-24T17:31:22.587' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (183, 24, N'Notification message 183', 1, CAST(N'2025-02-24T17:31:22.587' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (184, 23, N'Notification message 184', 0, CAST(N'2025-02-24T17:31:22.590' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (185, 31, N'Notification message 185', 1, CAST(N'2025-02-24T17:31:22.590' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (186, 100, N'Notification message 186', 1, CAST(N'2025-02-24T17:31:22.590' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (187, 43, N'Notification message 187', 0, CAST(N'2025-02-24T17:31:22.590' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (188, 70, N'Notification message 188', 1, CAST(N'2025-02-24T17:31:22.590' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (189, 29, N'Notification message 189', 0, CAST(N'2025-02-24T17:31:22.590' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (190, 79, N'Notification message 190', 1, CAST(N'2025-02-24T17:31:22.593' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (191, 66, N'Notification message 191', 1, CAST(N'2025-02-24T17:31:22.593' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (192, 42, N'Notification message 192', 1, CAST(N'2025-02-24T17:31:22.593' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (193, 69, N'Notification message 193', 0, CAST(N'2025-02-24T17:31:22.593' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (194, 82, N'Notification message 194', 1, CAST(N'2025-02-24T17:31:22.593' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (195, 39, N'Notification message 195', 1, CAST(N'2025-02-24T17:31:22.593' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (196, 26, N'Notification message 196', 1, CAST(N'2025-02-24T17:31:22.593' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (197, 78, N'Notification message 197', 1, CAST(N'2025-02-24T17:31:22.593' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (198, 56, N'Notification message 198', 0, CAST(N'2025-02-24T17:31:22.593' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (199, 18, N'Notification message 199', 1, CAST(N'2025-02-24T17:31:22.597' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (200, 84, N'Notification message 200', 1, CAST(N'2025-02-24T17:31:22.597' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (201, 10, N'Notification message 201', 0, CAST(N'2025-02-24T17:31:22.597' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (202, 24, N'Notification message 202', 0, CAST(N'2025-02-24T17:31:22.597' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (203, 74, N'Notification message 203', 0, CAST(N'2025-02-24T17:31:22.597' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (204, 73, N'Notification message 204', 0, CAST(N'2025-02-24T17:31:22.597' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (205, 1, N'Notification message 205', 0, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (206, 33, N'Notification message 206', 1, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (207, 46, N'Notification message 207', 0, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (208, 80, N'Notification message 208', 0, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (209, 81, N'Notification message 209', 1, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (210, 55, N'Notification message 210', 1, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (211, 62, N'Notification message 211', 1, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (212, 13, N'Notification message 212', 0, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (213, 96, N'Notification message 213', 1, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (214, 58, N'Notification message 214', 1, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (215, 24, N'Notification message 215', 1, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (216, 78, N'Notification message 216', 1, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (217, 40, N'Notification message 217', 0, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (218, 32, N'Notification message 218', 0, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (219, 4, N'Notification message 219', 0, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (220, 4, N'Notification message 220', 0, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (221, 13, N'Notification message 221', 0, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (222, 26, N'Notification message 222', 1, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (223, 12, N'Notification message 223', 0, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (224, 70, N'Notification message 224', 1, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (225, 52, N'Notification message 225', 1, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (226, 23, N'Notification message 226', 0, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (227, 63, N'Notification message 227', 0, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (228, 68, N'Notification message 228', 1, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (229, 11, N'Notification message 229', 0, CAST(N'2025-02-24T17:31:22.600' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (230, 46, N'Notification message 230', 1, CAST(N'2025-02-24T17:31:22.603' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (231, 1, N'Notification message 231', 1, CAST(N'2025-02-24T17:31:22.603' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (232, 74, N'Notification message 232', 1, CAST(N'2025-02-24T17:31:22.603' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (233, 57, N'Notification message 233', 0, CAST(N'2025-02-24T17:31:22.603' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (234, 86, N'Notification message 234', 0, CAST(N'2025-02-24T17:31:22.603' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (235, 70, N'Notification message 235', 0, CAST(N'2025-02-24T17:31:22.603' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (236, 16, N'Notification message 236', 1, CAST(N'2025-02-24T17:31:22.603' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (237, 45, N'Notification message 237', 1, CAST(N'2025-02-24T17:31:22.603' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (238, 27, N'Notification message 238', 1, CAST(N'2025-02-24T17:31:22.603' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (239, 19, N'Notification message 239', 1, CAST(N'2025-02-24T17:31:22.603' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (240, 97, N'Notification message 240', 0, CAST(N'2025-02-24T17:31:22.603' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (241, 7, N'Notification message 241', 1, CAST(N'2025-02-24T17:31:22.603' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (242, 14, N'Notification message 242', 1, CAST(N'2025-02-24T17:31:22.603' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (243, 53, N'Notification message 243', 1, CAST(N'2025-02-24T17:31:22.603' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (244, 30, N'Notification message 244', 0, CAST(N'2025-02-24T17:31:22.603' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (245, 15, N'Notification message 245', 0, CAST(N'2025-02-24T17:31:22.603' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (246, 87, N'Notification message 246', 0, CAST(N'2025-02-24T17:31:22.607' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (247, 57, N'Notification message 247', 1, CAST(N'2025-02-24T17:31:22.607' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (248, 41, N'Notification message 248', 1, CAST(N'2025-02-24T17:31:22.607' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (249, 15, N'Notification message 249', 0, CAST(N'2025-02-24T17:31:22.607' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (250, 46, N'Notification message 250', 1, CAST(N'2025-02-24T17:31:22.607' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (251, 90, N'Notification message 251', 0, CAST(N'2025-02-24T17:31:22.607' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (252, 37, N'Notification message 252', 0, CAST(N'2025-02-24T17:31:22.607' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (253, 18, N'Notification message 253', 1, CAST(N'2025-02-24T17:31:22.607' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (254, 8, N'Notification message 254', 1, CAST(N'2025-02-24T17:31:22.607' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (255, 50, N'Notification message 255', 1, CAST(N'2025-02-24T17:31:22.607' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (256, 29, N'Notification message 256', 1, CAST(N'2025-02-24T17:31:22.607' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (257, 5, N'Notification message 257', 0, CAST(N'2025-02-24T17:31:22.607' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (258, 51, N'Notification message 258', 1, CAST(N'2025-02-24T17:31:22.607' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (259, 43, N'Notification message 259', 1, CAST(N'2025-02-24T17:31:22.607' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (260, 93, N'Notification message 260', 0, CAST(N'2025-02-24T17:31:22.607' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (261, 9, N'Notification message 261', 1, CAST(N'2025-02-24T17:31:22.607' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (262, 46, N'Notification message 262', 0, CAST(N'2025-02-24T17:31:22.610' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (263, 9, N'Notification message 263', 1, CAST(N'2025-02-24T17:31:22.610' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (264, 31, N'Notification message 264', 0, CAST(N'2025-02-24T17:31:22.610' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (265, 31, N'Notification message 265', 0, CAST(N'2025-02-24T17:31:22.610' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (266, 49, N'Notification message 266', 1, CAST(N'2025-02-24T17:31:22.610' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (267, 49, N'Notification message 267', 0, CAST(N'2025-02-24T17:31:22.610' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (268, 18, N'Notification message 268', 1, CAST(N'2025-02-24T17:31:22.610' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (269, 54, N'Notification message 269', 1, CAST(N'2025-02-24T17:31:22.610' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (270, 93, N'Notification message 270', 0, CAST(N'2025-02-24T17:31:22.610' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (271, 21, N'Notification message 271', 0, CAST(N'2025-02-24T17:31:22.610' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (272, 94, N'Notification message 272', 1, CAST(N'2025-02-24T17:31:22.610' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (273, 100, N'Notification message 273', 0, CAST(N'2025-02-24T17:31:22.610' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (274, 62, N'Notification message 274', 1, CAST(N'2025-02-24T17:31:22.610' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (275, 85, N'Notification message 275', 0, CAST(N'2025-02-24T17:31:22.610' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (276, 24, N'Notification message 276', 1, CAST(N'2025-02-24T17:31:22.613' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (277, 62, N'Notification message 277', 1, CAST(N'2025-02-24T17:31:22.613' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (278, 94, N'Notification message 278', 1, CAST(N'2025-02-24T17:31:22.613' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (279, 77, N'Notification message 279', 1, CAST(N'2025-02-24T17:31:22.613' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (280, 52, N'Notification message 280', 0, CAST(N'2025-02-24T17:31:22.613' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (281, 51, N'Notification message 281', 0, CAST(N'2025-02-24T17:31:22.613' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (282, 54, N'Notification message 282', 1, CAST(N'2025-02-24T17:31:22.613' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (283, 79, N'Notification message 283', 0, CAST(N'2025-02-24T17:31:22.613' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (284, 76, N'Notification message 284', 1, CAST(N'2025-02-24T17:31:22.613' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (285, 23, N'Notification message 285', 0, CAST(N'2025-02-24T17:31:22.613' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (286, 47, N'Notification message 286', 0, CAST(N'2025-02-24T17:31:22.613' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (287, 32, N'Notification message 287', 1, CAST(N'2025-02-24T17:31:22.613' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (288, 27, N'Notification message 288', 1, CAST(N'2025-02-24T17:31:22.613' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (289, 10, N'Notification message 289', 1, CAST(N'2025-02-24T17:31:22.613' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (290, 39, N'Notification message 290', 1, CAST(N'2025-02-24T17:31:22.613' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (291, 68, N'Notification message 291', 1, CAST(N'2025-02-24T17:31:22.613' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (292, 86, N'Notification message 292', 0, CAST(N'2025-02-24T17:31:22.613' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (293, 22, N'Notification message 293', 1, CAST(N'2025-02-24T17:31:22.613' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (294, 39, N'Notification message 294', 1, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (295, 99, N'Notification message 295', 0, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (296, 19, N'Notification message 296', 0, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (297, 8, N'Notification message 297', 1, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (298, 68, N'Notification message 298', 1, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (299, 46, N'Notification message 299', 1, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (300, 96, N'Notification message 300', 0, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (301, 74, N'Notification message 301', 1, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (302, 15, N'Notification message 302', 0, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (303, 61, N'Notification message 303', 0, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (304, 24, N'Notification message 304', 0, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (305, 96, N'Notification message 305', 1, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (306, 67, N'Notification message 306', 0, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (307, 90, N'Notification message 307', 1, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (308, 3, N'Notification message 308', 0, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (309, 17, N'Notification message 309', 0, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (310, 80, N'Notification message 310', 0, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (311, 34, N'Notification message 311', 1, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (312, 18, N'Notification message 312', 0, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (313, 50, N'Notification message 313', 1, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (314, 58, N'Notification message 314', 1, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (315, 46, N'Notification message 315', 0, CAST(N'2025-02-24T17:31:22.617' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (316, 27, N'Notification message 316', 1, CAST(N'2025-02-24T17:31:22.653' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (317, 91, N'Notification message 317', 0, CAST(N'2025-02-24T17:31:22.653' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (318, 16, N'Notification message 318', 0, CAST(N'2025-02-24T17:31:22.653' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (319, 9, N'Notification message 319', 1, CAST(N'2025-02-24T17:31:22.653' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (320, 4, N'Notification message 320', 0, CAST(N'2025-02-24T17:31:22.653' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (321, 21, N'Notification message 321', 0, CAST(N'2025-02-24T17:31:22.653' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (322, 29, N'Notification message 322', 0, CAST(N'2025-02-24T17:31:22.653' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (323, 29, N'Notification message 323', 0, CAST(N'2025-02-24T17:31:22.653' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (324, 30, N'Notification message 324', 0, CAST(N'2025-02-24T17:31:22.653' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (325, 60, N'Notification message 325', 0, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (326, 13, N'Notification message 326', 1, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (327, 61, N'Notification message 327', 1, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (328, 91, N'Notification message 328', 0, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (329, 8, N'Notification message 329', 1, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (330, 98, N'Notification message 330', 1, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (331, 99, N'Notification message 331', 0, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (332, 68, N'Notification message 332', 0, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (333, 90, N'Notification message 333', 0, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (334, 42, N'Notification message 334', 1, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (335, 68, N'Notification message 335', 0, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (336, 5, N'Notification message 336', 0, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (337, 1, N'Notification message 337', 1, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (338, 50, N'Notification message 338', 1, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (339, 5, N'Notification message 339', 1, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (340, 16, N'Notification message 340', 0, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (341, 43, N'Notification message 341', 0, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (342, 29, N'Notification message 342', 0, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (343, 29, N'Notification message 343', 1, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (344, 63, N'Notification message 344', 1, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (345, 27, N'Notification message 345', 0, CAST(N'2025-02-24T17:31:22.657' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (346, 35, N'Notification message 346', 1, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (347, 47, N'Notification message 347', 1, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (348, 62, N'Notification message 348', 0, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (349, 99, N'Notification message 349', 1, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (350, 93, N'Notification message 350', 0, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (351, 73, N'Notification message 351', 0, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (352, 83, N'Notification message 352', 1, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (353, 45, N'Notification message 353', 0, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (354, 47, N'Notification message 354', 0, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (355, 73, N'Notification message 355', 1, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (356, 100, N'Notification message 356', 0, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (357, 89, N'Notification message 357', 1, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (358, 68, N'Notification message 358', 0, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (359, 64, N'Notification message 359', 1, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (360, 59, N'Notification message 360', 0, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (361, 14, N'Notification message 361', 0, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (362, 7, N'Notification message 362', 1, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (363, 44, N'Notification message 363', 1, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (364, 13, N'Notification message 364', 1, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (365, 30, N'Notification message 365', 0, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (366, 79, N'Notification message 366', 1, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (367, 63, N'Notification message 367', 0, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (368, 65, N'Notification message 368', 1, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (369, 85, N'Notification message 369', 1, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (370, 14, N'Notification message 370', 1, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (371, 36, N'Notification message 371', 1, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (372, 65, N'Notification message 372', 0, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (373, 92, N'Notification message 373', 1, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (374, 40, N'Notification message 374', 1, CAST(N'2025-02-24T17:31:22.660' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (375, 78, N'Notification message 375', 1, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (376, 81, N'Notification message 376', 1, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (377, 6, N'Notification message 377', 1, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (378, 34, N'Notification message 378', 0, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (379, 43, N'Notification message 379', 0, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (380, 49, N'Notification message 380', 0, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (381, 72, N'Notification message 381', 0, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (382, 53, N'Notification message 382', 1, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (383, 6, N'Notification message 383', 0, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (384, 54, N'Notification message 384', 1, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (385, 12, N'Notification message 385', 0, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (386, 9, N'Notification message 386', 0, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (387, 5, N'Notification message 387', 0, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (388, 43, N'Notification message 388', 1, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (389, 84, N'Notification message 389', 1, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (390, 9, N'Notification message 390', 1, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (391, 3, N'Notification message 391', 1, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (392, 69, N'Notification message 392', 1, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (393, 8, N'Notification message 393', 0, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (394, 79, N'Notification message 394', 1, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (395, 60, N'Notification message 395', 1, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (396, 63, N'Notification message 396', 1, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (397, 9, N'Notification message 397', 0, CAST(N'2025-02-24T17:31:22.663' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (398, 96, N'Notification message 398', 0, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (399, 97, N'Notification message 399', 0, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (400, 38, N'Notification message 400', 1, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (401, 76, N'Notification message 401', 1, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (402, 63, N'Notification message 402', 0, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (403, 65, N'Notification message 403', 0, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (404, 84, N'Notification message 404', 1, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (405, 33, N'Notification message 405', 1, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (406, 96, N'Notification message 406', 1, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (407, 1, N'Notification message 407', 1, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (408, 99, N'Notification message 408', 1, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (409, 24, N'Notification message 409', 0, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (410, 22, N'Notification message 410', 0, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (411, 15, N'Notification message 411', 0, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (412, 37, N'Notification message 412', 1, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (413, 16, N'Notification message 413', 0, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (414, 47, N'Notification message 414', 1, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (415, 57, N'Notification message 415', 1, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (416, 54, N'Notification message 416', 0, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (417, 94, N'Notification message 417', 1, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (418, 51, N'Notification message 418', 1, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (419, 20, N'Notification message 419', 1, CAST(N'2025-02-24T17:31:22.667' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (420, 10, N'Notification message 420', 1, CAST(N'2025-02-24T17:31:22.700' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (421, 58, N'Notification message 421', 0, CAST(N'2025-02-24T17:31:22.700' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (422, 34, N'Notification message 422', 0, CAST(N'2025-02-24T17:31:22.700' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (423, 7, N'Notification message 423', 1, CAST(N'2025-02-24T17:31:22.700' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (424, 11, N'Notification message 424', 1, CAST(N'2025-02-24T17:31:22.700' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (425, 69, N'Notification message 425', 0, CAST(N'2025-02-24T17:31:22.700' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (426, 34, N'Notification message 426', 0, CAST(N'2025-02-24T17:31:22.700' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (427, 46, N'Notification message 427', 0, CAST(N'2025-02-24T17:31:22.700' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (428, 95, N'Notification message 428', 1, CAST(N'2025-02-24T17:31:22.700' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (429, 76, N'Notification message 429', 1, CAST(N'2025-02-24T17:31:22.700' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (430, 66, N'Notification message 430', 1, CAST(N'2025-02-24T17:31:22.700' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (431, 72, N'Notification message 431', 0, CAST(N'2025-02-24T17:31:22.700' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (432, 6, N'Notification message 432', 1, CAST(N'2025-02-24T17:31:22.700' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (433, 24, N'Notification message 433', 0, CAST(N'2025-02-24T17:31:22.703' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (434, 19, N'Notification message 434', 0, CAST(N'2025-02-24T17:31:22.703' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (435, 47, N'Notification message 435', 0, CAST(N'2025-02-24T17:31:22.703' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (436, 57, N'Notification message 436', 0, CAST(N'2025-02-24T17:31:22.703' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (437, 35, N'Notification message 437', 0, CAST(N'2025-02-24T17:31:22.703' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (438, 44, N'Notification message 438', 1, CAST(N'2025-02-24T17:31:22.703' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (439, 77, N'Notification message 439', 1, CAST(N'2025-02-24T17:31:22.703' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (440, 54, N'Notification message 440', 0, CAST(N'2025-02-24T17:31:22.703' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (441, 79, N'Notification message 441', 0, CAST(N'2025-02-24T17:31:22.703' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (442, 39, N'Notification message 442', 0, CAST(N'2025-02-24T17:31:22.703' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (443, 20, N'Notification message 443', 1, CAST(N'2025-02-24T17:31:22.703' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (444, 19, N'Notification message 444', 1, CAST(N'2025-02-24T17:31:22.703' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (445, 12, N'Notification message 445', 0, CAST(N'2025-02-24T17:31:22.703' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (446, 64, N'Notification message 446', 0, CAST(N'2025-02-24T17:31:22.703' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (447, 92, N'Notification message 447', 1, CAST(N'2025-02-24T17:31:22.703' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (448, 78, N'Notification message 448', 0, CAST(N'2025-02-24T17:31:22.707' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (449, 34, N'Notification message 449', 1, CAST(N'2025-02-24T17:31:22.707' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (450, 16, N'Notification message 450', 1, CAST(N'2025-02-24T17:31:22.707' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (451, 33, N'Notification message 451', 0, CAST(N'2025-02-24T17:31:22.707' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (452, 8, N'Notification message 452', 1, CAST(N'2025-02-24T17:31:22.707' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (453, 12, N'Notification message 453', 0, CAST(N'2025-02-24T17:31:22.707' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (454, 3, N'Notification message 454', 0, CAST(N'2025-02-24T17:31:22.707' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (455, 8, N'Notification message 455', 0, CAST(N'2025-02-24T17:31:22.707' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (456, 73, N'Notification message 456', 0, CAST(N'2025-02-24T17:31:22.707' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (457, 52, N'Notification message 457', 1, CAST(N'2025-02-24T17:31:22.707' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (458, 93, N'Notification message 458', 1, CAST(N'2025-02-24T17:31:22.707' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (459, 17, N'Notification message 459', 1, CAST(N'2025-02-24T17:31:22.707' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (460, 95, N'Notification message 460', 0, CAST(N'2025-02-24T17:31:22.707' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (461, 51, N'Notification message 461', 0, CAST(N'2025-02-24T17:31:22.707' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (462, 39, N'Notification message 462', 1, CAST(N'2025-02-24T17:31:22.707' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (463, 92, N'Notification message 463', 1, CAST(N'2025-02-24T17:31:22.707' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (464, 69, N'Notification message 464', 1, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (465, 16, N'Notification message 465', 1, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (466, 94, N'Notification message 466', 1, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (467, 55, N'Notification message 467', 0, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (468, 11, N'Notification message 468', 1, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (469, 82, N'Notification message 469', 0, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (470, 39, N'Notification message 470', 0, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (471, 19, N'Notification message 471', 1, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (472, 16, N'Notification message 472', 0, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (473, 80, N'Notification message 473', 0, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (474, 37, N'Notification message 474', 1, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (475, 82, N'Notification message 475', 0, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (476, 86, N'Notification message 476', 0, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (477, 74, N'Notification message 477', 1, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (478, 53, N'Notification message 478', 0, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (479, 30, N'Notification message 479', 0, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (480, 24, N'Notification message 480', 1, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (481, 25, N'Notification message 481', 0, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (482, 73, N'Notification message 482', 1, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (483, 74, N'Notification message 483', 0, CAST(N'2025-02-24T17:31:22.710' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (484, 100, N'Notification message 484', 1, CAST(N'2025-02-24T17:31:22.713' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (485, 35, N'Notification message 485', 0, CAST(N'2025-02-24T17:31:22.713' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (486, 70, N'Notification message 486', 0, CAST(N'2025-02-24T17:31:22.713' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (487, 97, N'Notification message 487', 0, CAST(N'2025-02-24T17:31:22.713' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (488, 38, N'Notification message 488', 1, CAST(N'2025-02-24T17:31:22.713' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (489, 99, N'Notification message 489', 1, CAST(N'2025-02-24T17:31:22.713' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (490, 57, N'Notification message 490', 1, CAST(N'2025-02-24T17:31:22.713' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (491, 50, N'Notification message 491', 0, CAST(N'2025-02-24T17:31:22.713' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (492, 82, N'Notification message 492', 0, CAST(N'2025-02-24T17:31:22.713' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (493, 84, N'Notification message 493', 0, CAST(N'2025-02-24T17:31:22.713' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (494, 23, N'Notification message 494', 1, CAST(N'2025-02-24T17:31:22.713' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (495, 87, N'Notification message 495', 0, CAST(N'2025-02-24T17:31:22.713' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (496, 40, N'Notification message 496', 0, CAST(N'2025-02-24T17:31:22.713' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (497, 39, N'Notification message 497', 0, CAST(N'2025-02-24T17:31:22.713' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (498, 78, N'Notification message 498', 1, CAST(N'2025-02-24T17:31:22.713' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (499, 98, N'Notification message 499', 0, CAST(N'2025-02-24T17:31:22.713' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (500, 4, N'Notification message 500', 1, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (501, 10, N'Notification message 501', 0, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (502, 77, N'Notification message 502', 0, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (503, 19, N'Notification message 503', 0, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (504, 84, N'Notification message 504', 0, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (505, 24, N'Notification message 505', 1, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (506, 84, N'Notification message 506', 1, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (507, 95, N'Notification message 507', 1, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (508, 45, N'Notification message 508', 0, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (509, 40, N'Notification message 509', 0, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (510, 98, N'Notification message 510', 0, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (511, 95, N'Notification message 511', 1, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (512, 23, N'Notification message 512', 0, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (513, 100, N'Notification message 513', 0, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (514, 98, N'Notification message 514', 1, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (515, 13, N'Notification message 515', 1, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (516, 44, N'Notification message 516', 1, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (517, 71, N'Notification message 517', 1, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (518, 82, N'Notification message 518', 1, CAST(N'2025-02-24T17:31:22.717' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (519, 70, N'Notification message 519', 0, CAST(N'2025-02-24T17:31:22.720' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (520, 29, N'Notification message 520', 1, CAST(N'2025-02-24T17:31:22.720' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (521, 5, N'Notification message 521', 0, CAST(N'2025-02-24T17:31:22.720' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (522, 43, N'Notification message 522', 0, CAST(N'2025-02-24T17:31:22.720' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (523, 53, N'Notification message 523', 0, CAST(N'2025-02-24T17:31:22.720' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (524, 3, N'Notification message 524', 1, CAST(N'2025-02-24T17:31:22.720' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (525, 71, N'Notification message 525', 0, CAST(N'2025-02-24T17:31:22.777' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (526, 78, N'Notification message 526', 0, CAST(N'2025-02-24T17:31:22.777' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (527, 92, N'Notification message 527', 1, CAST(N'2025-02-24T17:31:22.777' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (528, 55, N'Notification message 528', 1, CAST(N'2025-02-24T17:31:22.777' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (529, 46, N'Notification message 529', 1, CAST(N'2025-02-24T17:31:22.777' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (530, 56, N'Notification message 530', 0, CAST(N'2025-02-24T17:31:22.777' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (531, 43, N'Notification message 531', 0, CAST(N'2025-02-24T17:31:22.777' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (532, 10, N'Notification message 532', 1, CAST(N'2025-02-24T17:31:22.777' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (533, 38, N'Notification message 533', 1, CAST(N'2025-02-24T17:31:22.777' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (534, 87, N'Notification message 534', 0, CAST(N'2025-02-24T17:31:22.777' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (535, 64, N'Notification message 535', 1, CAST(N'2025-02-24T17:31:22.777' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (536, 69, N'Notification message 536', 1, CAST(N'2025-02-24T17:31:22.777' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (537, 62, N'Notification message 537', 1, CAST(N'2025-02-24T17:31:22.777' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (538, 82, N'Notification message 538', 0, CAST(N'2025-02-24T17:31:22.777' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (539, 62, N'Notification message 539', 1, CAST(N'2025-02-24T17:31:22.777' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (540, 75, N'Notification message 540', 1, CAST(N'2025-02-24T17:31:22.780' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (541, 49, N'Notification message 541', 0, CAST(N'2025-02-24T17:31:22.780' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (542, 20, N'Notification message 542', 1, CAST(N'2025-02-24T17:31:22.780' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (543, 19, N'Notification message 543', 1, CAST(N'2025-02-24T17:31:22.780' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (544, 74, N'Notification message 544', 0, CAST(N'2025-02-24T17:31:22.780' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (545, 12, N'Notification message 545', 1, CAST(N'2025-02-24T17:31:22.780' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (546, 67, N'Notification message 546', 0, CAST(N'2025-02-24T17:31:22.780' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (547, 47, N'Notification message 547', 0, CAST(N'2025-02-24T17:31:22.780' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (548, 90, N'Notification message 548', 0, CAST(N'2025-02-24T17:31:22.780' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (549, 40, N'Notification message 549', 0, CAST(N'2025-02-24T17:31:22.780' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (550, 24, N'Notification message 550', 0, CAST(N'2025-02-24T17:31:22.780' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (551, 61, N'Notification message 551', 1, CAST(N'2025-02-24T17:31:22.780' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (552, 41, N'Notification message 552', 0, CAST(N'2025-02-24T17:31:22.780' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (553, 78, N'Notification message 553', 1, CAST(N'2025-02-24T17:31:22.780' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (554, 78, N'Notification message 554', 1, CAST(N'2025-02-24T17:31:22.780' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (555, 80, N'Notification message 555', 1, CAST(N'2025-02-24T17:31:22.780' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (556, 94, N'Notification message 556', 1, CAST(N'2025-02-24T17:31:22.780' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (557, 62, N'Notification message 557', 1, CAST(N'2025-02-24T17:31:22.780' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (558, 51, N'Notification message 558', 1, CAST(N'2025-02-24T17:31:22.783' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (559, 45, N'Notification message 559', 1, CAST(N'2025-02-24T17:31:22.783' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (560, 33, N'Notification message 560', 1, CAST(N'2025-02-24T17:31:22.783' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (561, 95, N'Notification message 561', 0, CAST(N'2025-02-24T17:31:22.783' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (562, 43, N'Notification message 562', 0, CAST(N'2025-02-24T17:31:22.783' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (563, 11, N'Notification message 563', 1, CAST(N'2025-02-24T17:31:22.783' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (564, 10, N'Notification message 564', 1, CAST(N'2025-02-24T17:31:22.783' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (565, 57, N'Notification message 565', 1, CAST(N'2025-02-24T17:31:22.783' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (566, 60, N'Notification message 566', 1, CAST(N'2025-02-24T17:31:22.783' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (567, 36, N'Notification message 567', 1, CAST(N'2025-02-24T17:31:22.783' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (568, 59, N'Notification message 568', 0, CAST(N'2025-02-24T17:31:22.783' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (569, 42, N'Notification message 569', 1, CAST(N'2025-02-24T17:31:22.783' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (570, 53, N'Notification message 570', 0, CAST(N'2025-02-24T17:31:22.783' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (571, 56, N'Notification message 571', 1, CAST(N'2025-02-24T17:31:22.783' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (572, 97, N'Notification message 572', 0, CAST(N'2025-02-24T17:31:22.783' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (573, 61, N'Notification message 573', 0, CAST(N'2025-02-24T17:31:22.787' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (574, 28, N'Notification message 574', 0, CAST(N'2025-02-24T17:31:22.787' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (575, 57, N'Notification message 575', 1, CAST(N'2025-02-24T17:31:22.787' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (576, 43, N'Notification message 576', 0, CAST(N'2025-02-24T17:31:22.787' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (577, 80, N'Notification message 577', 1, CAST(N'2025-02-24T17:31:22.787' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (578, 48, N'Notification message 578', 0, CAST(N'2025-02-24T17:31:22.787' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (579, 88, N'Notification message 579', 0, CAST(N'2025-02-24T17:31:22.787' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (580, 91, N'Notification message 580', 0, CAST(N'2025-02-24T17:31:22.787' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (581, 36, N'Notification message 581', 0, CAST(N'2025-02-24T17:31:22.787' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (582, 46, N'Notification message 582', 1, CAST(N'2025-02-24T17:31:22.787' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (583, 44, N'Notification message 583', 0, CAST(N'2025-02-24T17:31:22.787' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (584, 41, N'Notification message 584', 0, CAST(N'2025-02-24T17:31:22.787' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (585, 47, N'Notification message 585', 1, CAST(N'2025-02-24T17:31:22.787' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (586, 41, N'Notification message 586', 0, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (587, 92, N'Notification message 587', 1, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (588, 84, N'Notification message 588', 0, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (589, 11, N'Notification message 589', 0, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (590, 49, N'Notification message 590', 0, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (591, 70, N'Notification message 591', 0, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (592, 60, N'Notification message 592', 1, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (593, 85, N'Notification message 593', 1, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (594, 92, N'Notification message 594', 0, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (595, 30, N'Notification message 595', 0, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (596, 86, N'Notification message 596', 1, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (597, 4, N'Notification message 597', 0, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (598, 88, N'Notification message 598', 1, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (599, 15, N'Notification message 599', 0, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (600, 5, N'Notification message 600', 0, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (601, 30, N'Notification message 601', 1, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (602, 8, N'Notification message 602', 1, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (603, 39, N'Notification message 603', 0, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (604, 88, N'Notification message 604', 0, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (605, 93, N'Notification message 605', 0, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (606, 15, N'Notification message 606', 1, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (607, 96, N'Notification message 607', 0, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (608, 11, N'Notification message 608', 1, CAST(N'2025-02-24T17:31:22.790' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (609, 49, N'Notification message 609', 1, CAST(N'2025-02-24T17:31:22.793' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (610, 27, N'Notification message 610', 1, CAST(N'2025-02-24T17:31:22.793' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (611, 98, N'Notification message 611', 1, CAST(N'2025-02-24T17:31:22.793' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (612, 71, N'Notification message 612', 1, CAST(N'2025-02-24T17:31:22.793' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (613, 8, N'Notification message 613', 1, CAST(N'2025-02-24T17:31:22.793' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (614, 61, N'Notification message 614', 1, CAST(N'2025-02-24T17:31:22.793' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (615, 88, N'Notification message 615', 0, CAST(N'2025-02-24T17:31:22.793' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (616, 84, N'Notification message 616', 1, CAST(N'2025-02-24T17:31:22.793' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (617, 69, N'Notification message 617', 1, CAST(N'2025-02-24T17:31:22.793' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (618, 29, N'Notification message 618', 0, CAST(N'2025-02-24T17:31:22.793' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (619, 80, N'Notification message 619', 1, CAST(N'2025-02-24T17:31:22.793' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (620, 11, N'Notification message 620', 1, CAST(N'2025-02-24T17:31:22.793' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (621, 53, N'Notification message 621', 1, CAST(N'2025-02-24T17:31:22.793' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (622, 71, N'Notification message 622', 1, CAST(N'2025-02-24T17:31:22.793' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (623, 42, N'Notification message 623', 0, CAST(N'2025-02-24T17:31:22.793' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (624, 61, N'Notification message 624', 1, CAST(N'2025-02-24T17:31:22.793' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (625, 5, N'Notification message 625', 1, CAST(N'2025-02-24T17:31:22.793' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (626, 53, N'Notification message 626', 0, CAST(N'2025-02-24T17:31:22.793' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (627, 4, N'Notification message 627', 1, CAST(N'2025-02-24T17:31:22.797' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (628, 32, N'Notification message 628', 1, CAST(N'2025-02-24T17:31:22.797' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (629, 27, N'Notification message 629', 1, CAST(N'2025-02-24T17:31:22.797' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (630, 37, N'Notification message 630', 1, CAST(N'2025-02-24T17:31:22.853' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (631, 57, N'Notification message 631', 0, CAST(N'2025-02-24T17:31:22.853' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (632, 38, N'Notification message 632', 1, CAST(N'2025-02-24T17:31:22.853' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (633, 74, N'Notification message 633', 0, CAST(N'2025-02-24T17:31:22.853' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (634, 26, N'Notification message 634', 1, CAST(N'2025-02-24T17:31:22.853' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (635, 96, N'Notification message 635', 0, CAST(N'2025-02-24T17:31:22.853' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (636, 54, N'Notification message 636', 1, CAST(N'2025-02-24T17:31:22.853' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (637, 66, N'Notification message 637', 1, CAST(N'2025-02-24T17:31:22.853' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (638, 26, N'Notification message 638', 0, CAST(N'2025-02-24T17:31:22.857' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (639, 16, N'Notification message 639', 1, CAST(N'2025-02-24T17:31:22.857' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (640, 41, N'Notification message 640', 0, CAST(N'2025-02-24T17:31:22.857' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (641, 67, N'Notification message 641', 1, CAST(N'2025-02-24T17:31:22.857' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (642, 21, N'Notification message 642', 1, CAST(N'2025-02-24T17:31:22.857' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (643, 17, N'Notification message 643', 1, CAST(N'2025-02-24T17:31:22.857' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (644, 38, N'Notification message 644', 0, CAST(N'2025-02-24T17:31:22.857' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (645, 52, N'Notification message 645', 1, CAST(N'2025-02-24T17:31:22.857' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (646, 68, N'Notification message 646', 0, CAST(N'2025-02-24T17:31:22.857' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (647, 52, N'Notification message 647', 0, CAST(N'2025-02-24T17:31:22.857' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (648, 26, N'Notification message 648', 0, CAST(N'2025-02-24T17:31:22.857' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (649, 29, N'Notification message 649', 0, CAST(N'2025-02-24T17:31:22.857' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (650, 10, N'Notification message 650', 0, CAST(N'2025-02-24T17:31:22.857' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (651, 99, N'Notification message 651', 0, CAST(N'2025-02-24T17:31:22.857' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (652, 85, N'Notification message 652', 1, CAST(N'2025-02-24T17:31:22.857' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (653, 71, N'Notification message 653', 0, CAST(N'2025-02-24T17:31:22.857' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (654, 75, N'Notification message 654', 0, CAST(N'2025-02-24T17:31:22.857' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (655, 21, N'Notification message 655', 1, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (656, 94, N'Notification message 656', 0, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (657, 77, N'Notification message 657', 0, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (658, 48, N'Notification message 658', 1, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (659, 3, N'Notification message 659', 1, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (660, 100, N'Notification message 660', 0, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (661, 39, N'Notification message 661', 1, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (662, 27, N'Notification message 662', 0, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (663, 25, N'Notification message 663', 0, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (664, 20, N'Notification message 664', 1, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (665, 52, N'Notification message 665', 1, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (666, 65, N'Notification message 666', 1, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (667, 29, N'Notification message 667', 0, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (668, 41, N'Notification message 668', 0, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (669, 90, N'Notification message 669', 0, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (670, 35, N'Notification message 670', 0, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (671, 30, N'Notification message 671', 1, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (672, 50, N'Notification message 672', 1, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (673, 45, N'Notification message 673', 1, CAST(N'2025-02-24T17:31:22.860' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (674, 65, N'Notification message 674', 1, CAST(N'2025-02-24T17:31:22.863' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (675, 66, N'Notification message 675', 1, CAST(N'2025-02-24T17:31:22.863' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (676, 28, N'Notification message 676', 1, CAST(N'2025-02-24T17:31:22.863' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (677, 72, N'Notification message 677', 0, CAST(N'2025-02-24T17:31:22.863' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (678, 64, N'Notification message 678', 0, CAST(N'2025-02-24T17:31:22.863' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (679, 85, N'Notification message 679', 0, CAST(N'2025-02-24T17:31:22.863' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (680, 46, N'Notification message 680', 0, CAST(N'2025-02-24T17:31:22.863' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (681, 46, N'Notification message 681', 1, CAST(N'2025-02-24T17:31:22.863' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (682, 20, N'Notification message 682', 1, CAST(N'2025-02-24T17:31:22.863' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (683, 93, N'Notification message 683', 0, CAST(N'2025-02-24T17:31:22.863' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (684, 54, N'Notification message 684', 1, CAST(N'2025-02-24T17:31:22.863' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (685, 48, N'Notification message 685', 1, CAST(N'2025-02-24T17:31:22.863' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (686, 89, N'Notification message 686', 1, CAST(N'2025-02-24T17:31:22.863' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (687, 27, N'Notification message 687', 1, CAST(N'2025-02-24T17:31:22.863' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (688, 8, N'Notification message 688', 0, CAST(N'2025-02-24T17:31:22.863' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (689, 81, N'Notification message 689', 1, CAST(N'2025-02-24T17:31:22.863' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (690, 87, N'Notification message 690', 0, CAST(N'2025-02-24T17:31:22.863' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (691, 96, N'Notification message 691', 1, CAST(N'2025-02-24T17:31:22.863' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (692, 48, N'Notification message 692', 0, CAST(N'2025-02-24T17:31:22.867' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (693, 70, N'Notification message 693', 1, CAST(N'2025-02-24T17:31:22.867' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (694, 69, N'Notification message 694', 1, CAST(N'2025-02-24T17:31:22.867' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (695, 60, N'Notification message 695', 0, CAST(N'2025-02-24T17:31:22.867' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (696, 91, N'Notification message 696', 0, CAST(N'2025-02-24T17:31:22.867' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (697, 95, N'Notification message 697', 0, CAST(N'2025-02-24T17:31:22.867' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (698, 7, N'Notification message 698', 1, CAST(N'2025-02-24T17:31:22.867' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (699, 11, N'Notification message 699', 1, CAST(N'2025-02-24T17:31:22.867' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (700, 74, N'Notification message 700', 1, CAST(N'2025-02-24T17:31:22.867' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (701, 62, N'Notification message 701', 0, CAST(N'2025-02-24T17:31:22.867' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (702, 35, N'Notification message 702', 1, CAST(N'2025-02-24T17:31:22.867' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (703, 26, N'Notification message 703', 0, CAST(N'2025-02-24T17:31:22.867' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (704, 16, N'Notification message 704', 0, CAST(N'2025-02-24T17:31:22.867' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (705, 50, N'Notification message 705', 0, CAST(N'2025-02-24T17:31:22.867' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (706, 44, N'Notification message 706', 1, CAST(N'2025-02-24T17:31:22.867' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (707, 50, N'Notification message 707', 1, CAST(N'2025-02-24T17:31:22.867' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (708, 90, N'Notification message 708', 0, CAST(N'2025-02-24T17:31:22.867' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (709, 58, N'Notification message 709', 1, CAST(N'2025-02-24T17:31:22.870' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (710, 35, N'Notification message 710', 1, CAST(N'2025-02-24T17:31:22.870' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (711, 72, N'Notification message 711', 1, CAST(N'2025-02-24T17:31:22.870' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (712, 71, N'Notification message 712', 1, CAST(N'2025-02-24T17:31:22.870' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (713, 57, N'Notification message 713', 1, CAST(N'2025-02-24T17:31:22.870' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (714, 14, N'Notification message 714', 0, CAST(N'2025-02-24T17:31:22.870' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (715, 65, N'Notification message 715', 0, CAST(N'2025-02-24T17:31:22.870' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (716, 35, N'Notification message 716', 0, CAST(N'2025-02-24T17:31:22.870' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (717, 85, N'Notification message 717', 1, CAST(N'2025-02-24T17:31:22.870' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (718, 46, N'Notification message 718', 1, CAST(N'2025-02-24T17:31:22.870' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (719, 61, N'Notification message 719', 1, CAST(N'2025-02-24T17:31:22.870' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (720, 48, N'Notification message 720', 1, CAST(N'2025-02-24T17:31:22.870' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (721, 8, N'Notification message 721', 1, CAST(N'2025-02-24T17:31:22.870' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (722, 46, N'Notification message 722', 0, CAST(N'2025-02-24T17:31:22.870' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (723, 99, N'Notification message 723', 0, CAST(N'2025-02-24T17:31:22.870' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (724, 88, N'Notification message 724', 0, CAST(N'2025-02-24T17:31:22.870' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (725, 40, N'Notification message 725', 0, CAST(N'2025-02-24T17:31:22.870' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (726, 54, N'Notification message 726', 0, CAST(N'2025-02-24T17:31:22.873' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (727, 58, N'Notification message 727', 0, CAST(N'2025-02-24T17:31:22.873' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (728, 61, N'Notification message 728', 0, CAST(N'2025-02-24T17:31:22.873' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (729, 12, N'Notification message 729', 0, CAST(N'2025-02-24T17:31:22.873' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (730, 46, N'Notification message 730', 1, CAST(N'2025-02-24T17:31:22.873' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (731, 71, N'Notification message 731', 1, CAST(N'2025-02-24T17:31:22.873' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (732, 4, N'Notification message 732', 1, CAST(N'2025-02-24T17:31:22.873' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (733, 84, N'Notification message 733', 0, CAST(N'2025-02-24T17:31:22.873' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (734, 29, N'Notification message 734', 1, CAST(N'2025-02-24T17:31:22.873' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (735, 66, N'Notification message 735', 0, CAST(N'2025-02-24T17:31:22.923' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (736, 83, N'Notification message 736', 1, CAST(N'2025-02-24T17:31:22.923' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (737, 21, N'Notification message 737', 0, CAST(N'2025-02-24T17:31:22.923' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (738, 44, N'Notification message 738', 0, CAST(N'2025-02-24T17:31:22.923' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (739, 44, N'Notification message 739', 1, CAST(N'2025-02-24T17:31:22.923' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (740, 88, N'Notification message 740', 1, CAST(N'2025-02-24T17:31:22.923' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (741, 22, N'Notification message 741', 0, CAST(N'2025-02-24T17:31:22.923' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (742, 70, N'Notification message 742', 1, CAST(N'2025-02-24T17:31:22.923' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (743, 33, N'Notification message 743', 1, CAST(N'2025-02-24T17:31:22.923' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (744, 22, N'Notification message 744', 1, CAST(N'2025-02-24T17:31:22.927' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (745, 81, N'Notification message 745', 0, CAST(N'2025-02-24T17:31:22.927' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (746, 1, N'Notification message 746', 1, CAST(N'2025-02-24T17:31:22.927' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (747, 74, N'Notification message 747', 1, CAST(N'2025-02-24T17:31:22.927' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (748, 69, N'Notification message 748', 0, CAST(N'2025-02-24T17:31:22.927' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (749, 31, N'Notification message 749', 0, CAST(N'2025-02-24T17:31:22.927' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (750, 73, N'Notification message 750', 0, CAST(N'2025-02-24T17:31:22.927' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (751, 86, N'Notification message 751', 0, CAST(N'2025-02-24T17:31:22.927' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (752, 78, N'Notification message 752', 1, CAST(N'2025-02-24T17:31:22.927' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (753, 5, N'Notification message 753', 0, CAST(N'2025-02-24T17:31:22.927' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (754, 75, N'Notification message 754', 1, CAST(N'2025-02-24T17:31:22.927' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (755, 38, N'Notification message 755', 0, CAST(N'2025-02-24T17:31:22.927' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (756, 67, N'Notification message 756', 1, CAST(N'2025-02-24T17:31:22.927' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (757, 17, N'Notification message 757', 1, CAST(N'2025-02-24T17:31:22.927' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (758, 33, N'Notification message 758', 0, CAST(N'2025-02-24T17:31:22.927' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (759, 50, N'Notification message 759', 1, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (760, 46, N'Notification message 760', 1, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (761, 59, N'Notification message 761', 0, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (762, 15, N'Notification message 762', 0, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (763, 73, N'Notification message 763', 1, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (764, 11, N'Notification message 764', 1, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (765, 44, N'Notification message 765', 0, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (766, 20, N'Notification message 766', 0, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (767, 19, N'Notification message 767', 0, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (768, 3, N'Notification message 768', 1, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (769, 71, N'Notification message 769', 1, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (770, 17, N'Notification message 770', 1, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (771, 94, N'Notification message 771', 1, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (772, 74, N'Notification message 772', 0, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (773, 55, N'Notification message 773', 0, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (774, 35, N'Notification message 774', 1, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (775, 20, N'Notification message 775', 0, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (776, 80, N'Notification message 776', 0, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (777, 70, N'Notification message 777', 0, CAST(N'2025-02-24T17:31:22.930' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (778, 26, N'Notification message 778', 0, CAST(N'2025-02-24T17:31:22.933' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (779, 98, N'Notification message 779', 1, CAST(N'2025-02-24T17:31:22.933' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (780, 59, N'Notification message 780', 0, CAST(N'2025-02-24T17:31:22.933' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (781, 35, N'Notification message 781', 1, CAST(N'2025-02-24T17:31:22.933' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (782, 46, N'Notification message 782', 0, CAST(N'2025-02-24T17:31:22.933' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (783, 11, N'Notification message 783', 1, CAST(N'2025-02-24T17:31:22.933' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (784, 11, N'Notification message 784', 0, CAST(N'2025-02-24T17:31:22.933' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (785, 78, N'Notification message 785', 0, CAST(N'2025-02-24T17:31:22.933' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (786, 53, N'Notification message 786', 1, CAST(N'2025-02-24T17:31:22.933' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (787, 49, N'Notification message 787', 0, CAST(N'2025-02-24T17:31:22.933' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (788, 94, N'Notification message 788', 0, CAST(N'2025-02-24T17:31:22.933' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (789, 39, N'Notification message 789', 0, CAST(N'2025-02-24T17:31:22.933' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (790, 96, N'Notification message 790', 1, CAST(N'2025-02-24T17:31:22.933' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (791, 92, N'Notification message 791', 1, CAST(N'2025-02-24T17:31:22.933' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (792, 15, N'Notification message 792', 0, CAST(N'2025-02-24T17:31:22.933' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (793, 8, N'Notification message 793', 0, CAST(N'2025-02-24T17:31:22.933' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (794, 49, N'Notification message 794', 0, CAST(N'2025-02-24T17:31:22.933' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (795, 15, N'Notification message 795', 1, CAST(N'2025-02-24T17:31:22.933' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (796, 5, N'Notification message 796', 0, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (797, 1, N'Notification message 797', 1, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (798, 92, N'Notification message 798', 0, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (799, 87, N'Notification message 799', 1, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (800, 69, N'Notification message 800', 1, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (801, 47, N'Notification message 801', 0, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (802, 19, N'Notification message 802', 0, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (803, 19, N'Notification message 803', 0, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (804, 46, N'Notification message 804', 1, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (805, 35, N'Notification message 805', 1, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (806, 52, N'Notification message 806', 1, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (807, 39, N'Notification message 807', 0, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (808, 20, N'Notification message 808', 0, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (809, 39, N'Notification message 809', 1, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (810, 93, N'Notification message 810', 0, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (811, 25, N'Notification message 811', 1, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (812, 13, N'Notification message 812', 1, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (813, 89, N'Notification message 813', 1, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (814, 32, N'Notification message 814', 0, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (815, 70, N'Notification message 815', 0, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (816, 42, N'Notification message 816', 0, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (817, 13, N'Notification message 817', 1, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (818, 85, N'Notification message 818', 1, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (819, 71, N'Notification message 819', 1, CAST(N'2025-02-24T17:31:22.937' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (820, 27, N'Notification message 820', 1, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (821, 59, N'Notification message 821', 0, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (822, 51, N'Notification message 822', 0, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (823, 22, N'Notification message 823', 1, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (824, 35, N'Notification message 824', 1, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (825, 47, N'Notification message 825', 0, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (826, 22, N'Notification message 826', 1, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (827, 45, N'Notification message 827', 0, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (828, 92, N'Notification message 828', 0, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (829, 61, N'Notification message 829', 0, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (830, 70, N'Notification message 830', 1, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (831, 40, N'Notification message 831', 1, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (832, 28, N'Notification message 832', 0, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (833, 64, N'Notification message 833', 0, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (834, 92, N'Notification message 834', 1, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (835, 59, N'Notification message 835', 0, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (836, 66, N'Notification message 836', 1, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (837, 83, N'Notification message 837', 1, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (838, 87, N'Notification message 838', 1, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (839, 83, N'Notification message 839', 0, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (840, 82, N'Notification message 840', 1, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (841, 79, N'Notification message 841', 1, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (842, 64, N'Notification message 842', 0, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (843, 70, N'Notification message 843', 1, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (844, 29, N'Notification message 844', 1, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (845, 4, N'Notification message 845', 0, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (846, 17, N'Notification message 846', 0, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (847, 55, N'Notification message 847', 0, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (848, 35, N'Notification message 848', 1, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (849, 82, N'Notification message 849', 1, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (850, 74, N'Notification message 850', 0, CAST(N'2025-02-24T17:31:22.940' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (851, 37, N'Notification message 851', 1, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (852, 16, N'Notification message 852', 0, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (853, 86, N'Notification message 853', 1, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (854, 46, N'Notification message 854', 1, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (855, 7, N'Notification message 855', 0, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (856, 32, N'Notification message 856', 0, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (857, 13, N'Notification message 857', 1, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (858, 40, N'Notification message 858', 1, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (859, 47, N'Notification message 859', 1, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (860, 40, N'Notification message 860', 0, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (861, 11, N'Notification message 861', 0, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (862, 24, N'Notification message 862', 0, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (863, 18, N'Notification message 863', 0, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (864, 51, N'Notification message 864', 1, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (865, 35, N'Notification message 865', 0, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (866, 83, N'Notification message 866', 1, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (867, 24, N'Notification message 867', 0, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (868, 59, N'Notification message 868', 0, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (869, 56, N'Notification message 869', 0, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (870, 69, N'Notification message 870', 0, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (871, 32, N'Notification message 871', 0, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (872, 94, N'Notification message 872', 1, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (873, 58, N'Notification message 873', 1, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (874, 28, N'Notification message 874', 1, CAST(N'2025-02-24T17:31:22.943' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (875, 2, N'Notification message 875', 0, CAST(N'2025-02-24T17:31:22.947' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (876, 62, N'Notification message 876', 0, CAST(N'2025-02-24T17:31:22.947' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (877, 95, N'Notification message 877', 0, CAST(N'2025-02-24T17:31:22.947' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (878, 2, N'Notification message 878', 1, CAST(N'2025-02-24T17:31:22.947' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (879, 90, N'Notification message 879', 1, CAST(N'2025-02-24T17:31:22.947' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (880, 17, N'Notification message 880', 0, CAST(N'2025-02-24T17:31:22.947' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (881, 88, N'Notification message 881', 0, CAST(N'2025-02-24T17:31:22.947' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (882, 4, N'Notification message 882', 0, CAST(N'2025-02-24T17:31:22.947' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (883, 23, N'Notification message 883', 0, CAST(N'2025-02-24T17:31:22.947' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (884, 47, N'Notification message 884', 0, CAST(N'2025-02-24T17:31:22.947' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (885, 93, N'Notification message 885', 1, CAST(N'2025-02-24T17:31:22.947' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (886, 61, N'Notification message 886', 0, CAST(N'2025-02-24T17:31:22.947' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (887, 2, N'Notification message 887', 1, CAST(N'2025-02-24T17:31:22.947' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (888, 8, N'Notification message 888', 1, CAST(N'2025-02-24T17:31:22.947' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (889, 2, N'Notification message 889', 0, CAST(N'2025-02-24T17:31:22.947' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (890, 96, N'Notification message 890', 0, CAST(N'2025-02-24T17:31:22.947' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (891, 89, N'Notification message 891', 0, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (892, 38, N'Notification message 892', 0, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (893, 31, N'Notification message 893', 0, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (894, 26, N'Notification message 894', 1, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (895, 27, N'Notification message 895', 1, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (896, 23, N'Notification message 896', 0, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (897, 100, N'Notification message 897', 0, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (898, 74, N'Notification message 898', 1, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (899, 52, N'Notification message 899', 0, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (900, 20, N'Notification message 900', 1, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (901, 49, N'Notification message 901', 1, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (902, 9, N'Notification message 902', 1, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (903, 95, N'Notification message 903', 1, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (904, 21, N'Notification message 904', 0, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (905, 58, N'Notification message 905', 1, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (906, 18, N'Notification message 906', 1, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (907, 51, N'Notification message 907', 0, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (908, 43, N'Notification message 908', 0, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (909, 26, N'Notification message 909', 0, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (910, 8, N'Notification message 910', 1, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (911, 90, N'Notification message 911', 1, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (912, 82, N'Notification message 912', 0, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (913, 74, N'Notification message 913', 0, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (914, 41, N'Notification message 914', 0, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (915, 63, N'Notification message 915', 0, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (916, 3, N'Notification message 916', 1, CAST(N'2025-02-24T17:31:22.950' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (917, 3, N'Notification message 917', 0, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (918, 65, N'Notification message 918', 1, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (919, 77, N'Notification message 919', 0, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (920, 7, N'Notification message 920', 1, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (921, 21, N'Notification message 921', 0, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (922, 79, N'Notification message 922', 1, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (923, 4, N'Notification message 923', 1, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (924, 18, N'Notification message 924', 1, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (925, 97, N'Notification message 925', 1, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (926, 9, N'Notification message 926', 1, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (927, 96, N'Notification message 927', 0, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (928, 68, N'Notification message 928', 0, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (929, 88, N'Notification message 929', 1, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (930, 25, N'Notification message 930', 1, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (931, 36, N'Notification message 931', 0, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (932, 57, N'Notification message 932', 0, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (933, 8, N'Notification message 933', 0, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (934, 73, N'Notification message 934', 1, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (935, 12, N'Notification message 935', 1, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (936, 68, N'Notification message 936', 1, CAST(N'2025-02-24T17:31:22.953' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (937, 18, N'Notification message 937', 0, CAST(N'2025-02-24T17:31:22.957' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (938, 63, N'Notification message 938', 1, CAST(N'2025-02-24T17:31:22.957' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (939, 56, N'Notification message 939', 0, CAST(N'2025-02-24T17:31:22.957' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (940, 68, N'Notification message 940', 1, CAST(N'2025-02-24T17:31:22.957' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (941, 67, N'Notification message 941', 0, CAST(N'2025-02-24T17:31:22.957' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (942, 58, N'Notification message 942', 0, CAST(N'2025-02-24T17:31:22.957' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (943, 62, N'Notification message 943', 1, CAST(N'2025-02-24T17:31:22.957' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (944, 41, N'Notification message 944', 0, CAST(N'2025-02-24T17:31:22.957' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (945, 77, N'Notification message 945', 0, CAST(N'2025-02-24T17:31:22.957' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (946, 16, N'Notification message 946', 0, CAST(N'2025-02-24T17:31:22.957' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (947, 10, N'Notification message 947', 1, CAST(N'2025-02-24T17:31:22.957' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (948, 55, N'Notification message 948', 0, CAST(N'2025-02-24T17:31:22.957' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (949, 8, N'Notification message 949', 0, CAST(N'2025-02-24T17:31:22.957' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (950, 97, N'Notification message 950', 1, CAST(N'2025-02-24T17:31:22.957' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (951, 57, N'Notification message 951', 1, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (952, 55, N'Notification message 952', 0, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (953, 51, N'Notification message 953', 0, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (954, 53, N'Notification message 954', 1, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (955, 40, N'Notification message 955', 1, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (956, 55, N'Notification message 956', 0, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (957, 10, N'Notification message 957', 1, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (958, 5, N'Notification message 958', 1, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (959, 34, N'Notification message 959', 1, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (960, 99, N'Notification message 960', 1, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (961, 84, N'Notification message 961', 1, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (962, 48, N'Notification message 962', 1, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (963, 72, N'Notification message 963', 1, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (964, 42, N'Notification message 964', 1, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (965, 11, N'Notification message 965', 1, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (966, 86, N'Notification message 966', 0, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (967, 64, N'Notification message 967', 1, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (968, 98, N'Notification message 968', 0, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (969, 32, N'Notification message 969', 0, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (970, 7, N'Notification message 970', 1, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (971, 5, N'Notification message 971', 1, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (972, 26, N'Notification message 972', 0, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (973, 83, N'Notification message 973', 1, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (974, 69, N'Notification message 974', 0, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (975, 64, N'Notification message 975', 0, CAST(N'2025-02-24T17:31:22.960' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (976, 68, N'Notification message 976', 1, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (977, 6, N'Notification message 977', 1, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (978, 30, N'Notification message 978', 1, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (979, 56, N'Notification message 979', 0, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (980, 96, N'Notification message 980', 0, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (981, 22, N'Notification message 981', 1, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (982, 3, N'Notification message 982', 1, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (983, 4, N'Notification message 983', 0, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (984, 68, N'Notification message 984', 0, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (985, 59, N'Notification message 985', 0, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (986, 40, N'Notification message 986', 0, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (987, 96, N'Notification message 987', 1, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (988, 53, N'Notification message 988', 1, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (989, 1, N'Notification message 989', 0, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (990, 62, N'Notification message 990', 0, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (991, 9, N'Notification message 991', 0, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (992, 42, N'Notification message 992', 0, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (993, 96, N'Notification message 993', 1, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (994, 74, N'Notification message 994', 0, CAST(N'2025-02-24T17:31:22.963' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (995, 55, N'Notification message 995', 0, CAST(N'2025-02-24T17:31:22.967' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (996, 78, N'Notification message 996', 0, CAST(N'2025-02-24T17:31:22.967' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (997, 47, N'Notification message 997', 0, CAST(N'2025-02-24T17:31:22.967' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (998, 55, N'Notification message 998', 0, CAST(N'2025-02-24T17:31:22.967' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (999, 96, N'Notification message 999', 1, CAST(N'2025-02-24T17:31:22.967' AS DateTime))
GO
INSERT [dbo].[Notifications] ([id], [user_id], [message], [is_read], [created_at]) VALUES (1000, 88, N'Notification message 1000', 1, CAST(N'2025-02-24T17:31:22.967' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Notifications] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [InventoryID], [SupplierID], [Description], [Rating], [CategoryID], [LastModified], [ModifiedBy], [CreatedBy]) VALUES (3, N'Pepsi v3', 2, 2, N'Popular soda drinkClass B productClass B product x', CAST(3.00 AS Decimal(3, 2)), 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [InventoryID], [SupplierID], [Description], [Rating], [CategoryID], [LastModified], [ModifiedBy], [CreatedBy]) VALUES (4, N'Oreo Cookies', NULL, NULL, N'Chocolate sandwich cookies', NULL, NULL, NULL, N'System', NULL)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [InventoryID], [SupplierID], [Description], [Rating], [CategoryID], [LastModified], [ModifiedBy], [CreatedBy]) VALUES (5, N'Lays Chips', 1, 4, N'Crunchy potato chipsClass B product', CAST(4.40 AS Decimal(3, 2)), 3, CAST(N'2025-02-12T20:45:12.000' AS DateTime), N'System', NULL)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [InventoryID], [SupplierID], [Description], [Rating], [CategoryID], [LastModified], [ModifiedBy], [CreatedBy]) VALUES (6, N'Cheetos', 5, 5, N'Spicy cheesy snacks', CAST(4.50 AS Decimal(3, 2)), 3, CAST(N'2025-02-12T20:45:12.400' AS DateTime), N'System', NULL)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [InventoryID], [SupplierID], [Description], [Rating], [CategoryID], [LastModified], [ModifiedBy], [CreatedBy]) VALUES (7, N'Nestle Milk Chocolate', 6, 6, N'Milk chocolate bar', CAST(4.90 AS Decimal(3, 2)), 3, CAST(N'2025-02-12T20:45:12.400' AS DateTime), N'System', NULL)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [InventoryID], [SupplierID], [Description], [Rating], [CategoryID], [LastModified], [ModifiedBy], [CreatedBy]) VALUES (8, N'Samsung TV', 7, 7, N'High-definition TV', CAST(4.50 AS Decimal(3, 2)), 5, CAST(N'2025-02-12T20:45:12.400' AS DateTime), N'System', NULL)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [InventoryID], [SupplierID], [Description], [Rating], [CategoryID], [LastModified], [ModifiedBy], [CreatedBy]) VALUES (9, N'iPhone 13', 8, 8, N'Latest model of iPhone', CAST(4.90 AS Decimal(3, 2)), 5, CAST(N'2025-02-12T20:45:12.400' AS DateTime), N'System', NULL)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [InventoryID], [SupplierID], [Description], [Rating], [CategoryID], [LastModified], [ModifiedBy], [CreatedBy]) VALUES (10, N'Dell Laptop', 9, 9, N'Powerful laptop for work and play', CAST(4.50 AS Decimal(3, 2)), 5, CAST(N'2025-02-12T20:45:12.400' AS DateTime), N'System', NULL)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [InventoryID], [SupplierID], [Description], [Rating], [CategoryID], [LastModified], [ModifiedBy], [CreatedBy]) VALUES (11, N'Smart Watch', 10, 10, N'Wearable fitness tracker', CAST(4.40 AS Decimal(3, 2)), 5, CAST(N'2025-02-12T20:45:12.400' AS DateTime), N'System', NULL)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [InventoryID], [SupplierID], [Description], [Rating], [CategoryID], [LastModified], [ModifiedBy], [CreatedBy]) VALUES (12, N'test', NULL, NULL, N'tests', CAST(3.00 AS Decimal(3, 2)), 1, CAST(N'2025-06-30T00:00:00.000' AS DateTime), N'test', NULL)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'Admin v1')
GO
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (2, N'User')
GO
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (3, N'Manager')
GO
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (4, N'Support')
GO
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (5, N'Guest')
GO
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (6, N'Products')
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [ContactTitle], [Phone], [Address], [City], [Country], [LastModified], [ModifiedBy]) VALUES (1, N'Acme Corp x', N'John Smith X', N'Sales Manager A', N'123-456-7890', N'123 Acme St.', N'New York', N'USA', NULL, NULL)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [ContactTitle], [Phone], [Address], [City], [Country], [LastModified], [ModifiedBy]) VALUES (2, N'Global Supplies', N'Jane Doe', N'CEO', N'987-654-3210', N'456 Global Ave.', N'Los Angeles', N'USA', CAST(N'2025-02-12T20:45:05.617' AS DateTime), N'System')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [ContactTitle], [Phone], [Address], [City], [Country], [LastModified], [ModifiedBy]) VALUES (3, N'Tech Innovators', N'Mike Johnson', N'CTO', N'555-123-4567', N'789 Tech Rd.', N'San Francisco', N'USA', CAST(N'2025-02-12T20:45:05.617' AS DateTime), N'System')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [ContactTitle], [Phone], [Address], [City], [Country], [LastModified], [ModifiedBy]) VALUES (4, N'Prime Goods', N'Alice White', N'Marketing Lead', N'321-654-9870', N'321 Prime Blvd.', N'Chicago', N'USA', CAST(N'2025-02-12T20:45:05.617' AS DateTime), N'System')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [ContactTitle], [Phone], [Address], [City], [Country], [LastModified], [ModifiedBy]) VALUES (5, N'Best Products', N'Bob Green', N'Logistics Manager', N'876-543-2109', N'654 Best St.', N'Houston', N'USA', CAST(N'2025-02-12T20:45:05.617' AS DateTime), N'System')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [ContactTitle], [Phone], [Address], [City], [Country], [LastModified], [ModifiedBy]) VALUES (6, N'Quick Supplies', N'Lily Adams', N'Sales Director', N'123-789-4560', N'159 Quick Ln.', N'Seattle', N'USA', CAST(N'2025-02-12T20:45:05.617' AS DateTime), N'System')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [ContactTitle], [Phone], [Address], [City], [Country], [LastModified], [ModifiedBy]) VALUES (7, N'Fresh Foods', N'Eve Black', N'Operations Lead', N'234-567-8901', N'753 Fresh Ave.', N'Miami', N'USA', CAST(N'2025-02-12T20:45:05.617' AS DateTime), N'System')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [ContactTitle], [Phone], [Address], [City], [Country], [LastModified], [ModifiedBy]) VALUES (8, N'Super Electronics', N'Jack Hill', N'Product Manager', N'345-678-9012', N'321 Super Dr.', N'Austin', N'USA', CAST(N'2025-02-12T20:45:05.617' AS DateTime), N'System')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [ContactTitle], [Phone], [Address], [City], [Country], [LastModified], [ModifiedBy]) VALUES (9, N'Luxury Living', N'Rachel Scott', N'CEO', N'456-789-0123', N'432 Luxury Rd.', N'Dallas', N'USA', CAST(N'2025-02-12T20:45:05.617' AS DateTime), N'System')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [ContactTitle], [Phone], [Address], [City], [Country], [LastModified], [ModifiedBy]) VALUES (10, N'Tech World', N'Tom Lewis', N'COO', N'567-890-1234', N'543 Tech Ln.', N'Boston', N'USA', CAST(N'2025-02-12T20:45:05.617' AS DateTime), N'System')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [ContactName], [ContactTitle], [Phone], [Address], [City], [Country], [LastModified], [ModifiedBy]) VALUES (11, N'Acme Corp', N'John Smith Carvajal', N'Sales Manager', N'', N'123 Acme St.', N'New York', N'Costa Rica', CAST(N'2025-02-20T02:37:29.203' AS DateTime), N'Admin')
GO
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET IDENTITY_INSERT [dbo].[Tasks] ON 
GO
INSERT [dbo].[Tasks] ([Id], [Name], [Description], [Status], [DueDate], [CreatedAt], [LastModified], [ModifiedBy]) VALUES (1, N'Fix bug #123 c', N'Resolve the issue with the payment gateway', N'In Progress', CAST(N'2025-02-14T20:45:01.647' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Tasks] ([Id], [Name], [Description], [Status], [DueDate], [CreatedAt], [LastModified], [ModifiedBy]) VALUES (2, N'Update website', N'Redesign the home page and improve UX', N'Pending', CAST(N'2025-02-17T20:45:01.647' AS DateTime), CAST(N'2025-02-12T20:45:01.647' AS DateTime), CAST(N'2025-02-12T20:45:01.647' AS DateTime), N'System')
GO
INSERT [dbo].[Tasks] ([Id], [Name], [Description], [Status], [DueDate], [CreatedAt], [LastModified], [ModifiedBy]) VALUES (3, N'Deploy new release', N'Deploy the new feature release to production', N'Completed', CAST(N'2025-02-15T20:45:01.647' AS DateTime), CAST(N'2025-02-12T20:45:01.647' AS DateTime), CAST(N'2025-02-12T20:45:01.647' AS DateTime), N'System')
GO
INSERT [dbo].[Tasks] ([Id], [Name], [Description], [Status], [DueDate], [CreatedAt], [LastModified], [ModifiedBy]) VALUES (4, N'Customer feedback', N'Analyze the customer survey results', N'Pending', CAST(N'2025-02-19T20:45:01.647' AS DateTime), CAST(N'2025-02-12T20:45:01.647' AS DateTime), CAST(N'2025-02-12T20:45:01.647' AS DateTime), N'System')
GO
INSERT [dbo].[Tasks] ([Id], [Name], [Description], [Status], [DueDate], [CreatedAt], [LastModified], [ModifiedBy]) VALUES (5, N'Update inventory', N'Add new items to the product list', N'In Progress', CAST(N'2025-02-13T20:45:01.647' AS DateTime), CAST(N'2025-02-12T20:45:01.647' AS DateTime), CAST(N'2025-02-12T20:45:01.647' AS DateTime), N'System')
GO
INSERT [dbo].[Tasks] ([Id], [Name], [Description], [Status], [DueDate], [CreatedAt], [LastModified], [ModifiedBy]) VALUES (6, N'Send newsletter', N'Prepare and send out the weekly newsletter', N'Completed', CAST(N'2025-02-18T20:45:01.647' AS DateTime), CAST(N'2025-02-12T20:45:01.647' AS DateTime), CAST(N'2025-02-12T20:45:01.647' AS DateTime), N'System')
GO
INSERT [dbo].[Tasks] ([Id], [Name], [Description], [Status], [DueDate], [CreatedAt], [LastModified], [ModifiedBy]) VALUES (7, N'Audit logs', N'Check system activity logs for issues', N'In Progress', CAST(N'2025-02-15T20:45:01.647' AS DateTime), CAST(N'2025-02-12T20:45:01.647' AS DateTime), CAST(N'2025-02-12T20:45:01.647' AS DateTime), N'System')
GO
INSERT [dbo].[Tasks] ([Id], [Name], [Description], [Status], [DueDate], [CreatedAt], [LastModified], [ModifiedBy]) VALUES (8, N'Fix broken links', N'Resolve broken URLs on the website', N'Pending', CAST(N'2025-02-14T20:45:01.647' AS DateTime), CAST(N'2025-02-12T20:45:01.647' AS DateTime), CAST(N'2025-02-12T20:45:01.647' AS DateTime), N'System')
GO
INSERT [dbo].[Tasks] ([Id], [Name], [Description], [Status], [DueDate], [CreatedAt], [LastModified], [ModifiedBy]) VALUES (9, N'Prepare demo', N'Prepare a demo of the new feature for the client', N'Completed', CAST(N'2025-02-16T20:45:01.647' AS DateTime), CAST(N'2025-02-12T20:45:01.647' AS DateTime), CAST(N'2025-02-12T20:45:01.647' AS DateTime), N'System')
GO
INSERT [dbo].[Tasks] ([Id], [Name], [Description], [Status], [DueDate], [CreatedAt], [LastModified], [ModifiedBy]) VALUES (10, N'Performance optimization', N'Optimize server performance and response times', N'In Progress', CAST(N'2025-02-17T20:45:01.647' AS DateTime), CAST(N'2025-02-12T20:45:01.647' AS DateTime), CAST(N'2025-02-12T20:45:01.647' AS DateTime), N'System')
GO
SET IDENTITY_INSERT [dbo].[Tasks] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([UserID], [Username], [Email], [PasswordHash], [CreatedAt], [IsActive], [LastModified], [ModifiedBy], [RoleID]) VALUES (1, N'john_doe', N'john.doe@example.com', N'hashedpassword1', CAST(N'2025-02-12T20:44:56.373' AS DateTime), 1, CAST(N'2025-02-12T20:44:56.373' AS DateTime), N'System', NULL)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Email], [PasswordHash], [CreatedAt], [IsActive], [LastModified], [ModifiedBy], [RoleID]) VALUES (2, N'jane_smith', N'jane.smith@example.com', N'hashedpassword2', CAST(N'2025-02-12T20:44:56.373' AS DateTime), 1, CAST(N'2025-02-12T20:44:56.373' AS DateTime), N'System', NULL)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Email], [PasswordHash], [CreatedAt], [IsActive], [LastModified], [ModifiedBy], [RoleID]) VALUES (3, N'mike_jones', N'mike.jones@example.com', N'hashedpassword3', CAST(N'2025-02-12T20:44:56.373' AS DateTime), 1, CAST(N'2025-02-12T20:44:56.373' AS DateTime), N'System', NULL)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Email], [PasswordHash], [CreatedAt], [IsActive], [LastModified], [ModifiedBy], [RoleID]) VALUES (4, N'alice_brown', N'alice.brown@example.com', N'hashedpassword4', CAST(N'2025-02-12T20:44:56.373' AS DateTime), 1, CAST(N'2025-02-12T20:44:56.373' AS DateTime), N'System', NULL)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Email], [PasswordHash], [CreatedAt], [IsActive], [LastModified], [ModifiedBy], [RoleID]) VALUES (5, N'bob_white', N'bob.white@example.com', N'hashedpassword5', CAST(N'2025-02-12T20:44:56.373' AS DateTime), 1, CAST(N'2025-02-12T20:44:56.373' AS DateTime), N'System', NULL)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Email], [PasswordHash], [CreatedAt], [IsActive], [LastModified], [ModifiedBy], [RoleID]) VALUES (6, N'test', N'something@something.com', N'e1MYbTom3LwWpnZyEVSiJKFsxTuvyxjCWMrCJ551+Oo=', CAST(N'2025-11-07T20:39:31.380' AS DateTime), 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Email], [PasswordHash], [CreatedAt], [IsActive], [LastModified], [ModifiedBy], [RoleID]) VALUES (1006, N'amiranda', N'amiranda@gmail.com', N'AihQEELRbEu2/nR5ONm/H1xUVvSWOxT3igZtUkCfHNg=', CAST(N'2025-11-12T17:35:09.917' AS DateTime), 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserID], [Username], [Email], [PasswordHash], [CreatedAt], [IsActive], [LastModified], [ModifiedBy], [RoleID]) VALUES (1007, N'calebs', N'calebs@gmail.com', N'wwA84RCptcxMEeisOXAWt7U7fqmBpLy3tp+qXRmTP+I=', CAST(N'2025-11-12T18:18:14.047' AS DateTime), 1, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Notifications] ADD  DEFAULT ((0)) FOR [is_read]
GO
ALTER TABLE [dbo].[Notifications] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([InventoryID])
REFERENCES [dbo].[Inventory] ([InventoryID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
/****** Object:  StoredProcedure [dbo].[sp_PendingNotifications]    Script Date: 11/24/2025 8:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_PendingNotifications]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Tasks WHERE Name = 'Notify' AND Status = 'Pending'
END
GO
