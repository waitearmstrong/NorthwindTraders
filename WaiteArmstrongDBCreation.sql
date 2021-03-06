USE [NWTDbFinalProjSpring2020]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 5/6/2020 5:03:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/6/2020 5:03:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/6/2020 5:03:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/6/2020 5:03:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/6/2020 5:03:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/6/2020 5:03:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/6/2020 5:03:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(100,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 5/6/2020 5:03:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmpID] [char](36) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[JobTitle] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[CreditCard] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC,
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryTransactions]    Script Date: 5/6/2020 5:03:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryTransactions](
	[TransactionID] [int] IDENTITY(700,1) NOT NULL,
	[TransactionType] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[PurchaseOrderID] [int] NULL,
	[CustomerOrderID] [int] NULL,
	[Comments] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_InventoryTransactions] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/6/2020 5:03:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(100,1) NOT NULL,
	[ProductCode] [nvarchar](50) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[CategoryID] [int] NULL,
	[StandardCost] [money] NULL,
	[ListPrice] [money] NOT NULL,
	[ReorderLevel] [int] NULL,
	[TargetLevel] [int] NULL,
	[Discontinued] [bit] NOT NULL,
	[SupplierID] [int] NULL,
	[AvailableQty] [int] NULL,
	[Reordered] [bit] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrderDetails]    Script Date: 5/6/2020 5:03:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrderDetails](
	[OrderDetailID] [int] IDENTITY(600,1) NOT NULL,
	[PurchaseOrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[Quantity] [int] NOT NULL,
	[UnitCost] [money] NOT NULL,
	[PostedToInventory] [bit] NULL,
	[InventoryID] [int] NULL,
 CONSTRAINT [PK_PurchaseOrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrders]    Script Date: 5/6/2020 5:03:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrders](
	[PurchaseOrderID] [int] IDENTITY(500,1) NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[StatusID] [int] NULL,
	[ExpectedDate] [datetime2](7) NULL,
	[ApprovedBy] [int] NULL,
	[ApprovedDate] [datetime2](7) NULL,
	[EmpID] [char](36) NOT NULL,
 CONSTRAINT [PK_PurchaseOrders] PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 5/6/2020 5:03:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart](
	[CartID] [char](36) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[StandardCost] [money] NOT NULL,
	[QuantityToOrder] [int] NOT NULL,
	[Subtotal]  AS ([QuantityToOrder]*[StandardCost]),
 CONSTRAINT [PK_ShoppingCart] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 5/6/2020 5:03:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(300,1) NOT NULL,
	[Company] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[BusinessPhone] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202005021833519_InitialCreate', N'NorthwindTraders.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E3F40FF83A0A7D383D4CAE5EC624F60EF2275929EA09B0BD6D9E2BC2D68897688952855A2B2098AFEB23EF427F52F9CA144C9122FBAD88AED140B2C2272F8CD70382487C3A1FFFAE3CFF187A7C0B71E719C90904EECA3D1A16D61EA861EA1CB899DB2C50FEFEC0FEFBFFBC7F8C20B9EAC5F0ABA134E072D6932B11F188B4E1D27711F7080925140DC384CC2051BB961E0202F748E0F0FFFE31C1D3918206CC0B2ACF1A7943212E0EC033EA7217571C452E45F871EF613510E35B30CD5BA41014E22E4E2897D13C6ECE11BA1DE7D8C3C90679437B1AD339F20106786FD856D214A438618087BFA39C133168774398BA000F9F7CF1106BA05F2132C3A71BA22EFDA9FC363DE1F67D5B08072D38485414FC0A313A120476EBE969AED5281A0C20B50357BE6BDCED438B1AF3C9C157D0A7D5080CCF074EAC79C78625F972CCE92E806B351D17094435EC600F72D8CBF8EAA880756E77607A5411D8F0EF9BF036B9AFA2C8DF184E294C5C83FB0EED2B94FDC9FF1F37DF815D3C9C9D17C71F2EECD5BE49DBCFD373E7953ED29F415E86A0550741787118E4136BC28FB6F5B4EBD9D23372C9B55DAE45A015B82B9615BD7E8E923A64BF600B3E6F89D6D5D9227EC1525C2B83E530253091AB13885CF9BD4F7D1DCC765BDD3C893FFDFC0F5F8CDDB41B8DEA047B2CC865EE20F13278679F509FB596DF240A27C7AD5C6FB8B20BB8CC3807FD7ED2BAFFD320BD3D8E59D098D24F7285E6256976EECAC8CB7934973A8E1CDBA40DD7FD3E692AAE6AD25E51D5A6726142CB63D1B0A795F966F678B3B8B2218BCCCB4B8469A0CCEB0638D2488034B265C19D1515723A2D0B9BFF39A781120E20FB02876E0024EC982C4012E7BF963082688686F99EF5092C09AE0FD17250F0DA2C39F03883EC36E1A83A9CE180AA217E776F710527C9306733E03B6C76BB0A1B9FF165E229785F105E5AD36C6FB18BA5FC3945D50EF1C31FC99B90520FFBC2741778041C439735D9C249760CCD89B86E073178057949D1CF786E3ABD4AE9D92A98F48A0F74AA4F5F44B41BAF24CF4148A776220D379284DA27E0C97847613B520358B9A53B48A2AC8FA8ACAC1BA492A28CD826604AD72E65483F97CD9080DEFF465B0FBEFF56DB6799BD6828A1A67B042E29F30C5312C63DE1D620CC77435025DD68D5D380BD9F071A62FBE37659C7E417E3A34ABB56643B6080C3F1B32D8FD9F0D999850FC483CEE9574380A15C400DF895E7FCA6A9F739264DB9E0EB56E6E9BF976D600D374394B92D025D92CD004C14408A32E3FF870567B3C23EF8D1C13818E81A113BEE54109F4CD968DEA969E631F336C9DB97990708A12170E7DAA51811C3D042B76548D60ABD8485DB87F293CC1D271CC1B217E084A60A612CAD46941A84B22E4B76A496AD9710BE37D2F79C835E738C294336CD54417E6FA500817A0E4230D4A9B86C64EC5E29A0DD1E0B59AC6BCCD855D8DBB12A1D88A4DB6F8CE06BB14FEDB8B1866B3C6B6609CCD2AE9228031ACB70B03156795AE06201F5CF6CD40A51393C140854BB51503AD6B6C07065A57C9AB33D0FC88DA75FCA5F3EABE9967FDA0BCFD6DBD515D3BB0CD9A3EF6CC3473DF13DA30688163D53CCFE7BC123F31CDE10CE414E7B344B8BAB28970F01966F590CDCADFD5FAA14E33886C444D802B436B011517820A9032A17A0857C4F21AA5135E440FD822EED6082BD67E09B662032A76F562B44268BE3E958DB3D3E9A3EC59690D8A91773A2C54703406212F5EF58E77508A292EAB2AA68B2FDCC71BAE744C0C4683825A3C5783928ACE0CAEA5C234DBB5A473C8FAB8641B6949729F0C5A2A3A33B896848DB62B49E314F4700B3652517D0B1F68B215918E72B729EBC64E9E34250AC68E21BB6A7C8DA288D06525DB4A9458B33CD56AFAC3AC7FFA519063386EA2C9422AA52D39B130464B2CD5026B90F492C4093B470CCD118FF34CBD4021D3EEAD86E5BF6059DD3ED5412CF681829AFF2DD2710CD7F8B50D57F54804D0257433E06E4D164BD71881BEB9C553E0908F624DF87E1AFA6940CD5E96B9757E89576D9F97A8086347925FF1A2149529BE6E5DFF9D46479D19438E54E9C9AC3F5A660893CE0B3FB4AA75936F6A46294255551453F86A67A3677269FA8F98EC32F61FB05684979961224FA50A208A7A6254521D14B04A5D77D47A364A15B35ED31D514A39A9424A553DA4AC2696D484AC56AC8567D0A89EA23B073595A48AAED67647D6249554A135D56B606B6496EBBAA36AF24EAAC09AEAEED8AB24147925DDE33DCC7890D96C13CB0FBC9BED62068C97591687D9042BF7FA55A04A714F2C7173AF8089F2BD3429E3A96F3393CA831D9B999401C3BC06D5AEC5EB4B50E35DBE19B376D75D5BE69BEEFACD78FD0CF745CD4339F9C92425F7F204289DF4C6E2D4D5FED8463986E524B655A811B6F8E784E160C40946B35FFDA94F305FD00B826B44C902272CCFEFB08F0F8F8EA5A73AFBF36CC64912CFD79C5A4D6F67EA63B685542DFA8862F701C56AE2C4064F4B56A04A4CFA8A7AF86962FF96B53ACDC21BFCAFACF8C0BA4A3E53F26B0A15F7718AADDFD544D06152ED9BCF5C7BFA30A2BB56AFFEF7256F7A60DDC630634EAD434997EB8C70FDB9442F69F2A61B48B3F6238AD73BA16AEF12B4A8D28458FF19C29CB0419E201452FE33404FDFF7154DFBCC602344CD5382A1F00651A1E9A9C03A58C667021E7CB2EC9940BFCEEA9F0DAC239AF1C900A1FDC1E40703DD97A1A2E50EB71ACDC1681B4B52A6E7D684EB8DB22F77BD372979D91B4D7435F7BA07DC06F9D56B58C62B4B4D1E6C77D4641E0F86BD4BD37EF174E37DC9305EE57EEC36B1789BB9C40DB7447FAB14E23D487AD324F1EC3E5178DBB6660AE6EE79B665BF74E03D333691DAB5FBA4DF6D1B9B29CCBBE7C6D62BB577CF6C6D57FBE78E2DADF316BAF3445D35E7C87029A38B05B725E2E6817338E1CF433082DCA3CCDF4FEA33BF9AB2565B18AE48CC4CCD2967326365E2287C158A66B6FDFA2A36FCC6CE0A9A66B68644CD26DE62FD6FE42D689A791BD21F779142AC4D40D4A575B7AC634D3951AF2965B8D693960CF5369FB5F186FD3565080FA294DAEC31DC11BF9E84E0415432E4D4E99100AC5EF7C2DE59F90546D8BF13B25C41F0DF63A4D8ADED9A25CD155D84C5E62D49549048119A6BCC90075BEA59CCC802B90CAA798C397B009EC5EDF84DC71C7B57F4366551CAA0CB3898FBB5801777029AF86759CE7599C7B751F65B26437401C4243C367F4B7F4C89EF95725F6A62420608EE5D88882E1F4BC623BBCBE712E926A41D8184FA4AA7E81E07910F60C92D9DA147BC8E6C607E1FF112B9CFAB08A009A47D20EA6A1F9F13B48C5190088C557BF8041BF682A7F7FF07ADC025E488540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'd2c50834-4b8f-4dcd-8799-cae452e8c674', N'Administrator')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'7eeff593-0908-43ad-94a4-451076294afb', N'Employee')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5e432a06-d8eb-4a78-b476-60712b1977a4', N'7eeff593-0908-43ad-94a4-451076294afb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'eb234e22-9252-465e-b06c-0b6c0882fce4', N'7eeff593-0908-43ad-94a4-451076294afb')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'5e432a06-d8eb-4a78-b476-60712b1977a4', N'empuser2@test.com', 0, N'AAb65B7Y12LqCFW3ID9Wl1uRL4u1/yTTC7RockDAwFBFtywKO2xQhtpqc7OpVxQN0A==', N'1910f9dc-c217-4754-98b1-670cb7c63eaf', NULL, 0, 0, NULL, 1, 0, N'empuser2@test.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'eb234e22-9252-465e-b06c-0b6c0882fce4', N'empuser1@test.com', 0, N'AFsLwjnO7jbugYvDffpHIBD+U3k4yqpYL61Jd0vGjUUUawHoK0XUfYnh2LChQfoasA==', N'c911d398-f35b-4ef8-ba00-8db9c999204b', NULL, 0, 0, NULL, 1, 0, N'empuser1@test.com')
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (100, N'Beverages')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (101, N'Canned Fruit & Vegetables')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (102, N'Dried Fruit')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (103, N'Condiments')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (104, N'Soups')
SET IDENTITY_INSERT [dbo].[Category] OFF
INSERT [dbo].[Employees] ([EmpID], [Username], [JobTitle], [Address], [City], [State], [Country], [CreditCard]) VALUES (N'1532895E-5901-4F90-BB9B-97DA7CF93081', N'user1', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employees] ([EmpID], [Username], [JobTitle], [Address], [City], [State], [Country], [CreditCard]) VALUES (N'3604207C-66DB-4CDC-BE8A-543DC38B5236', N'user2', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (103, N'NWTB-87', N'Northwind Traders Tea', N'none', 100, 2.0000, 4.0000, 20, 50, 0, 300, 5, 1)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (104, N'NWTB-81', N'Northwind Traders Green Tea', N'none', 100, 2.0000, 2.9900, 100, 125, 0, 300, 5, 1)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (105, N'NWTB-43', N'Northwind Traders Coffee', N'none', 100, 25.0000, 35.0000, 15, 100, 0, 305, 5, 0)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (106, N'NWTB-34', N'Northwind Traders Beer', N'none', 100, 11.0000, 16.0000, 10, 50, 0, 305, 5, 0)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (107, N'NWTB-1', N'Northwind Traders Chai', N'none', 100, 12.0000, 14.0000, 10, 40, 0, 304, 5, 0)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (108, N'NWTCF-94', N'Northwind Traders Peas', N'none', 101, 1.0000, 1.5000, 10, 40, 0, 304, 5, 1)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (110, N'NWTCF-92', N'Northwind Traders Green Beans', N'none', 101, 1.0000, 1.2000, 10, 40, 0, 304, 5, 1)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (111, N'NWTCF-89', N'Northwind Traders  Peaches', N'none', 101, 1.0000, 1.5000, 10, 40, 0, 302, 5, 0)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (112, N'NWTCF-90', N'Northwind Traders Pineapple', N'none', 101, 1.0000, 1.8000, 101, 40, 0, 302, 5, 0)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (113, N'NWTCF-88', N'Northwind Traders Pears', N'none', 101, 1.0000, 1.3000, 10, 40, 0, 303, 5, 0)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (114, N'NWTDF-80', N'Northwind Traders Dried Plums', N'none', 102, 3.0000, 3.5000, 50, 75, 0, 304, 5, 1)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (115, N'NWTDF-74', N'Northwind Traders Almonds', N'none', 102, 7.5000, 10.0000, 10, 50, 0, 301, 5, 0)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (116, N'NWTDF-51', N'Northwind Traders Dried Apples', N'none', 102, 15.0000, 19.0000, 10, 40, 0, 301, 5, 0)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (117, N'NWTDF-14', N'Northwind Traders Walnuts', N'none', 102, 22.0000, 30.0000, 30, 100, 0, 303, 5, 0)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (118, N'NWTDF-7', N'Northwind Traders Dreid Pears', N'none', 102, 25.0000, 30.0000, 30, 100, 0, 304, 5, 0)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (119, N'NWTCO-77', N'Northwind Traders Mustard', N'none', 103, 16.5000, 20.0000, 15, 60, 0, 301, 5, 1)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (120, N'NWTCO-4', N'Northwind Traders Cajun Seasoning', N'none', 103, 20.0000, 30.0000, 15, 60, 0, 301, 5, 0)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (121, N'NWTCO-3', N'Northwind Traders Syrup', N'none', 103, 15.0000, 20.0000, 15, 100, 0, 304, 5, 0)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (122, N'NWTSO-99', N'Northwind Traders Chicken Soup', N'none', 104, 1.9500, 3.0000, 100, 300, 0, 305, 5, 1)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (123, N'NWTSO-98', N'Northwind Traders Vegetable Soup', N'none', 104, 5.5000, 8.0000, 10, 100, 0, 302, 5, 1)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (124, N'NWTSO-41', N'Northwind Traders Clam Chowder', N'none', 104, 10.0000, 15.0000, 40, 100, 0, 303, 5, 1)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered]) VALUES (134, N'NTBV', N'Fizzy pop', N'Fizzy pop', 100, 2.0000, 3.0000, 10, 20, 0, 300, 30, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[PurchaseOrderDetails] ON 

INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (600, 500, 108, N'Northwind Traders Peas', 35, 1.0000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (601, 500, 123, N'Northwind Traders Vegetable Soup', 23, 5.5000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (602, 501, 119, N'Northwind Traders Mustard', 10, 16.5000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (603, 502, 103, N'Northwind Traders Tea', 45, 2.0000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (604, 503, 103, N'Northwind Traders Tea', 45, 2.0000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (605, 503, 114, N'Northwind Traders Dried Plums', 37, 3.0000, 0, NULL)
SET IDENTITY_INSERT [dbo].[PurchaseOrderDetails] OFF
SET IDENTITY_INSERT [dbo].[PurchaseOrders] ON 

INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [CreationDate], [StatusID], [ExpectedDate], [ApprovedBy], [ApprovedDate], [EmpID]) VALUES (500, CAST(N'2020-05-04T17:43:26.8866667' AS DateTime2), 0, CAST(N'2020-05-09T17:43:26.8866667' AS DateTime2), NULL, NULL, N'eb234e22-9252-465e-b06c-0b6c0882fce4')
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [CreationDate], [StatusID], [ExpectedDate], [ApprovedBy], [ApprovedDate], [EmpID]) VALUES (501, CAST(N'2020-05-04T19:00:44.6500000' AS DateTime2), 0, CAST(N'2020-05-09T19:00:44.6500000' AS DateTime2), NULL, NULL, N'eb234e22-9252-465e-b06c-0b6c0882fce4')
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [CreationDate], [StatusID], [ExpectedDate], [ApprovedBy], [ApprovedDate], [EmpID]) VALUES (502, CAST(N'2020-05-06T12:23:37.1100000' AS DateTime2), 0, CAST(N'2020-05-11T12:23:37.1100000' AS DateTime2), NULL, NULL, N'eb234e22-9252-465e-b06c-0b6c0882fce4')
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [CreationDate], [StatusID], [ExpectedDate], [ApprovedBy], [ApprovedDate], [EmpID]) VALUES (503, CAST(N'2020-05-06T12:28:58.1733333' AS DateTime2), 0, CAST(N'2020-05-11T12:28:58.1733333' AS DateTime2), NULL, NULL, N'eb234e22-9252-465e-b06c-0b6c0882fce4')
SET IDENTITY_INSERT [dbo].[PurchaseOrders] OFF
INSERT [dbo].[ShoppingCart] ([CartID], [ProductID], [ProductName], [StandardCost], [QuantityToOrder]) VALUES (N'1131882f-bf46-4153-a5fe-b6e14ecc0a21', 108, N'Northwind Traders Peas', 1.0000, 35)
INSERT [dbo].[ShoppingCart] ([CartID], [ProductID], [ProductName], [StandardCost], [QuantityToOrder]) VALUES (N'1131882f-bf46-4153-a5fe-b6e14ecc0a21', 114, N'Northwind Traders Dried Plums', 3.0000, 70)
INSERT [dbo].[ShoppingCart] ([CartID], [ProductID], [ProductName], [StandardCost], [QuantityToOrder]) VALUES (N'3e7805a8-dc31-4649-bb50-e7abb85ea2c1', 103, N'Northwind Traders Tea', 2.0000, 23)
INSERT [dbo].[ShoppingCart] ([CartID], [ProductID], [ProductName], [StandardCost], [QuantityToOrder]) VALUES (N'3e7805a8-dc31-4649-bb50-e7abb85ea2c1', 110, N'Northwind Traders Green Beans', 1.0000, 45)
INSERT [dbo].[ShoppingCart] ([CartID], [ProductID], [ProductName], [StandardCost], [QuantityToOrder]) VALUES (N'3e7805a8-dc31-4649-bb50-e7abb85ea2c1', 122, N'Northwind Traders Chicken Soup', 1.9500, 295)
INSERT [dbo].[ShoppingCart] ([CartID], [ProductID], [ProductName], [StandardCost], [QuantityToOrder]) VALUES (N'3e7805a8-dc31-4649-bb50-e7abb85ea2c1', 124, N'Northwind Traders Clam Chowder', 10.0000, 45)
INSERT [dbo].[ShoppingCart] ([CartID], [ProductID], [ProductName], [StandardCost], [QuantityToOrder]) VALUES (N'a20d7962-8dad-4c57-a2eb-a56271013428', 108, N'Northwind Traders Peas', 1.0000, 35)
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SupplierID], [Company], [LastName], [FirstName], [BusinessPhone], [City], [State]) VALUES (300, N'Supplier A', N'Anderson', N'Elizabeth', NULL, N'Pittsburgh', N'PA')
INSERT [dbo].[Suppliers] ([SupplierID], [Company], [LastName], [FirstName], [BusinessPhone], [City], [State]) VALUES (301, N'Supplier B', N'Weiler', N'Cornelia', NULL, N'Washington', N'DC')
INSERT [dbo].[Suppliers] ([SupplierID], [Company], [LastName], [FirstName], [BusinessPhone], [City], [State]) VALUES (302, N'Supplier C', N'Glasson', N'Stuart', NULL, N'Houston', N'TX')
INSERT [dbo].[Suppliers] ([SupplierID], [Company], [LastName], [FirstName], [BusinessPhone], [City], [State]) VALUES (303, N'Supplier D', N'Sandberg', N'Mikael', NULL, N'Dallas', N'TX')
INSERT [dbo].[Suppliers] ([SupplierID], [Company], [LastName], [FirstName], [BusinessPhone], [City], [State]) VALUES (304, N'Supplier E', N'Sousa', N'Luis', NULL, N'Savannah', N'GA')
INSERT [dbo].[Suppliers] ([SupplierID], [Company], [LastName], [FirstName], [BusinessPhone], [City], [State]) VALUES (305, N'Supplier F', N'Dunton', N'Bryan', NULL, N'Austin', N'TX')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
ALTER TABLE [dbo].[InventoryTransactions] ADD  CONSTRAINT [DF_InventoryTransactions_TransactionType]  DEFAULT ((1)) FOR [TransactionType]
GO
ALTER TABLE [dbo].[InventoryTransactions] ADD  CONSTRAINT [DF_InventoryTransactions_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Discontinued]  DEFAULT ((0)) FOR [Discontinued]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Reordered]
GO
ALTER TABLE [dbo].[PurchaseOrderDetails] ADD  CONSTRAINT [DF_PurchaseOrderDetails_PostedToInventory]  DEFAULT ((0)) FOR [PostedToInventory]
GO
ALTER TABLE [dbo].[PurchaseOrders] ADD  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[PurchaseOrders] ADD  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[PurchaseOrders] ADD  DEFAULT (getdate()+(5)) FOR [ExpectedDate]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[InventoryTransactions]  WITH CHECK ADD  CONSTRAINT [FK_InventoryTransactions_PurchaseOrders] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[InventoryTransactions] CHECK CONSTRAINT [FK_InventoryTransactions_PurchaseOrders]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Category]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
ALTER TABLE [dbo].[PurchaseOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[PurchaseOrderDetails] CHECK CONSTRAINT [FK_PurchaseOrderDetails_Products]
GO
ALTER TABLE [dbo].[PurchaseOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderDetails_PurchaseOrder] FOREIGN KEY([PurchaseOrderID])
REFERENCES [dbo].[PurchaseOrders] ([PurchaseOrderID])
GO
ALTER TABLE [dbo].[PurchaseOrderDetails] CHECK CONSTRAINT [FK_PurchaseOrderDetails_PurchaseOrder]
GO
ALTER TABLE [dbo].[ShoppingCart]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[ShoppingCart] CHECK CONSTRAINT [FK_ShoppingCart_Products]
GO
/****** Object:  StoredProcedure [dbo].[spAddProduct]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spAddProduct]
(@categoryID int,
@supplierID int,
@productName nvarchar(100),
@description nvarchar(100),
@listPrice money,
@standardCost money,
@availableQty int,
@reorderLevel int,
@targetLevel int,
@productCode nvarchar(100),
@productid int out)
as
Begin
insert into  Products(ProductCode,ProductName,Description,CategoryID,StandardCost,ListPrice,ReorderLevel,TargetLevel,Discontinued,SupplierID,AvailableQty,Reordered)
values(@productCode,@productName,@description,
@categoryID, @standardCost, @listPrice, @reorderLevel,
@targetLevel, 0,@supplierID, @availableQty, 0)
END
GO
/****** Object:  StoredProcedure [dbo].[spAddPurchaseOrderDetail]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[spAddPurchaseOrderDetail]
(@PurchaseOrderID int,
@ProductID int,
@Quantity int,
@UnitCost money, -- should be named ListPrice in table
@OrderDetailID int out)

AS
BEGIN
	Insert into PurchaseOrderDetails (PurchaseOrderID, ProductID, Quantity, UnitCost)
	Values (@PurchaseOrderID, @ProductID, @Quantity, @UnitCost);
	
	set @orderDetailID = IDENT_CURRENT('PurchaseOrderDetails');
END

GO
/****** Object:  StoredProcedure [dbo].[spAddToInventory]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spAddToInventory]
(@prodid int)
AS

BEGIN

	declare @quantity int
	declare @purchaseorderid int

	select @quantity = quantity, @purchaseorderid = purchaseorderid
	from purchaseorderdetails
	where productid = @prodid

	insert into inventorytransactions (productid, quantity, purchaseorderid, comments)
	values (@prodid, @quantity, @purchaseorderid, 'none')
	
	declare @transactionid int = @@identity


	update PurchaseOrderDetails
	set postedtoinventory = 1, inventoryid = @transactionid
	where ProductID = @prodid

	update products
	set reordered = 0, availableqty = availableqty + @quantity
	where productid = @prodid




END
GO
/****** Object:  StoredProcedure [dbo].[spAddUserInfoToDB]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[spAddUserInfoToDB]
@UserName nvarchar(50),
@EmpId char(36)
AS

	insert into Employees(EmpId, Username)
	values (@EmpId, @UserName)
GO
/****** Object:  StoredProcedure [dbo].[spCalcFinalPriceForOrderDetail]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[spCalcFinalPriceForOrderDetail]
(@OrderDetailID int)
AS

BEGIN
	Select (quantity * unitcost) 
	from PurchaseOrderDetails
	where OrderDetailID = @OrderDetailID
	
END

GO
/****** Object:  StoredProcedure [dbo].[spCalcOrderTotal]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[spCalcOrderTotal]
(@PurchaseOrderID int)

AS
BEGIN

	select sum(Quantity *  UnitCost) from PurchaseOrderDetails
	where purchaseorderID = @PurchaseOrderID

END

GO
/****** Object:  StoredProcedure [dbo].[spCreatePurchaseOrder]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spCreatePurchaseOrder]

(@CartID char(36), @EmpID char(36), @PurchaseOrderID int out)

AS
BEGIN
	/* Insert a new record into Orders */
	
	INSERT INTO PurchaseOrders (EmpID) VALUES (@EmpID)
	
	/* Save the new Order ID */
	SET @PurchaseOrderID = @@IDENTITY
	
	/* Add the order details to OrderDetail */
	INSERT INTO PurchaseOrderDetails
	(PurchaseOrderID, ProductID, ProductName, Quantity, UnitCost)
	
	SELECT
	@PurchaseOrderID, ProductID, ProductName, QuantityToOrder, StandardCost
	FROM ShoppingCart
	WHERE CartID = @CartID

	/* Clear the shopping cart */
	DELETE FROM ShoppingCart
	WHERE CartID = @CartID

	

END
GO
/****** Object:  StoredProcedure [dbo].[spDeletePurchaseOrderDetail]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[spDeletePurchaseOrderDetail]
(@OrderDetailID int)
AS

BEGIN
	Delete from PurchaseOrderDetails
	where OrderDetailID = @OrderDetailID

END

GO
/****** Object:  StoredProcedure [dbo].[spGetAllCategories]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[spGetAllCategories]
as
begin 
	select categoryID, CategoryName
	from category
end

GO
/****** Object:  StoredProcedure [dbo].[spGetEmployeeID]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spGetEmployeeID]
		@UserName nvarchar(50),
		@EmpID nvarchar output
		AS

			select @EmpID = EmpID from Employees
			where username = @UserName
GO
/****** Object:  StoredProcedure [dbo].[spGetProductDetail]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[spGetProductDetail](	@productID int	)
AS
BEGIN
	Select ProductID, ProductCode, ProductName,
			Description, CategoryID, StandardCost,
			ListPrice, ReorderLevel, TargetLevel, 
			Discontinued, SupplierID
	From Products 
	where ProductID = @productID
END
GO
/****** Object:  StoredProcedure [dbo].[spGetProductsByProductName]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[spGetProductsByProductName]
(	@productname nvarchar(100)	)
AS

BEGIN
	Select ProductID, ProductCode, ProductName,
			Description, CategoryID, StandardCost,
			ListPrice, ReorderLevel, TargetLevel, 
			Discontinued, SupplierID
	From Products 
	where ProductName LIKE '%' + @productname + '%'
END

GO
/****** Object:  StoredProcedure [dbo].[spGetProductsInCategory]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spGetProductsInCategory]
(@CategoryID INT,
@DescriptionLength int = 60
)
AS
BEGIN
	SELECT Products.ProductID, ProductName,
	CASE 
		WHEN LEN(Description) <= @DescriptionLength THEN Description
		ELSE SUBSTRING(Description, 1, @DescriptionLength) + '...' 
	END
	AS Description, ListPrice, AvailableQty
	FROM Products INNER JOIN Category
	ON Products.CategoryID = @CategoryID
	WHERE Category.CategoryID = @CategoryID

END
GO
/****** Object:  StoredProcedure [dbo].[spGetProductsInCategoryOptional]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spGetProductsInCategoryOptional]
(	@categoryID int = null	)
AS

BEGIN
	Select ProductID, ProductCode, ProductName,
			Description, CategoryID, StandardCost,
			ListPrice, ReorderLevel, TargetLevel, 
			Discontinued, SupplierID, AvailableQty, Reordered
	From Products 
	where CategoryID = ISNULL(@categoryID, categoryID)
END

GO
/****** Object:  StoredProcedure [dbo].[spGetProductWithHighestQuantity]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[spGetProductWithHighestQuantity]
AS
BEGIN
	Select Top 1 productid, SUM(Quantity) as Total 
	from PurchaseOrderDetails 
	GROUP BY ProductID 
	Order by Total Desc
	

END

GO
/****** Object:  StoredProcedure [dbo].[spHighestQty]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spHighestQty]


as

	select productid, quantity as TotalQuantity

	from PurchaseOrderDetails

	where quantity = (select max(quantity) from PurchaseOrderDetails)

GO
/****** Object:  StoredProcedure [dbo].[spProductHighestQuantity]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spProductHighestQuantity]
AS 
BEGIN

	SELECT P.ProductID, P.ProductName, sum(POD.Quantity) as TotalQuantity
	FROM PurchaseOrderDetails POD
	INNER JOIN Products P 
	ON P.ProductID = POD.ProductID 
	GROUP BY P.ProductID, P.ProductName
	having sum(quantity) > (select max(quantity) from PurchaseOrderDetails)
END

GO
/****** Object:  StoredProcedure [dbo].[spShoppingCartAdditem]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spShoppingCartAdditem]
(@cartid char(36),
@prodid int
)
AS

BEGIN

	if Not exists
	(Select Cartid from shoppingcart 
	where cartid=@cartid and productid=@prodid)
	
	begin
			declare @productname nvarchar(100)
			declare @standardcost money
			declare @quantitytoorder int

			Select @productname = productname, @standardcost = standardcost,
			@quantitytoorder = targetlevel - availableqty
			from products 
			where productid = @prodid

			insert into shoppingcart (cartID, ProductID, ProductName, StandardCost, QuantityToOrder)
			values(@cartID, @prodID, @productname, @standardcost, @quantitytoorder)

			Update Products
			set Reordered = 1
			where productid = @prodid
	end

END
GO
/****** Object:  StoredProcedure [dbo].[spShoppingCartGetItems]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[spShoppingCartGetItems]
(@cartID char(36))
AS
	Select *
	From ShoppingCart
	Where ShoppingCart.CartID = @cartID
GO
/****** Object:  StoredProcedure [dbo].[spShoppingCartGetTotalAmount]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[spShoppingCartGetTotalAmount]
(@cartID char(36))
As
Begin
	Select ISNULL(SUM(StandardCost * QuantityToOrder), 0)
	From ShoppingCart
	Where CartID = @cartID
End
GO
/****** Object:  StoredProcedure [dbo].[spShoppingCartRemoveItem]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spShoppingCartRemoveItem] @cartid char(36), @prodid int
as
  Delete From ShoppingCart where (CartID = @cartid and ProductID = @prodid)
GO
/****** Object:  StoredProcedure [dbo].[spShoppingCartUpdateItem]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[spShoppingCartUpdateItem] @cartid char(36), @prodid int,  @quantity int
as
Begin
IF @quantity <= 0
	exec spShoppingCartRemoveItem @cartid, @prodid
	else
	update ShoppingCart
	Set QuantityToOrder = @quantity
	where CartID = @cartid and ProductID = @prodid

End
GO
/****** Object:  StoredProcedure [dbo].[spUpdatePurchaseOrder]    Script Date: 5/6/2020 5:03:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[spUpdatePurchaseOrder]
(@ApprovedDate datetime2,
@PurchaseOrderID int)

AS

BEGIN
	Update PurchaseOrders
	Set ApprovedDate = @ApprovedDate
	where PurchaseOrderID = @PurchaseOrderID
END

GO
