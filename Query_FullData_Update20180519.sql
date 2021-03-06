USE [master]
GO
/****** Object:  Database [NQL_CINEMA]    Script Date: 5/19/2018 2:18:58 PM ******/
CREATE DATABASE [NQL_CINEMA]

USE [NQL_CINEMA]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 5/19/2018 2:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Ticket] [int] NOT NULL,
	[ID_Employee] [int] NOT NULL,
	[ID_UserAccount] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Total] [money] NOT NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chair]    Script Date: 5/19/2018 2:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chair](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ID_Room] [int] NOT NULL,
 CONSTRAINT [PK__Chair__3214EC2738008536] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChairTicket]    Script Date: 5/19/2018 2:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChairTicket](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Chair] [int] NOT NULL,
	[ID_Ticket] [int] NOT NULL,
 CONSTRAINT [PK_ChairTicket] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cinema]    Script Date: 5/19/2018 2:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cinema](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[ID_District] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Combo]    Script Date: 5/19/2018 2:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Combo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboTicket]    Script Date: 5/19/2018 2:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboTicket](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Ticket] [int] NOT NULL,
	[ID_Combo] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_ComboTicket] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 5/19/2018 2:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 5/19/2018 2:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[ID_Role] [int] NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[PhoneNumber] [varchar](12) NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Employee__3214EC27769EE5FA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Film]    Script Date: 5/19/2018 2:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Film](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Directors] [nvarchar](100) NOT NULL,
	[Cast] [nvarchar](300) NOT NULL,
	[Timer] [int] NOT NULL,
	[Age] [int] NOT NULL,
	[Image] [varchar](100) NULL,
	[ID_MovieGenre] [int] NOT NULL,
	[ID_FilmStudio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmStudio]    Script Date: 5/19/2018 2:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmStudio](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Country] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieGenre]    Script Date: 5/19/2018 2:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieGenre](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieSchedule]    Script Date: 5/19/2018 2:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieSchedule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TimeStart] [time](7) NOT NULL,
	[ID_Film] [int] NOT NULL,
	[ID_Room] [int] NOT NULL,
	[PriceFilm] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK__MovieSch__3214EC2701FF62D9] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/19/2018 2:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 5/19/2018 2:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Total_Chair] [int] NOT NULL,
	[ID_Cinema] [int] NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 5/19/2018 2:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SaleOff] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ID_MovieSchedule] [int] NOT NULL,
 CONSTRAINT [PK__Ticket__3214EC277EA224A0] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 5/19/2018 2:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[PhoneNumber] [varchar](11) NOT NULL,
	[CNND] [varchar](11) NOT NULL,
	[UserName] [varchar](24) NOT NULL,
	[PassWord] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Chair] ON 

INSERT [dbo].[Chair] ([ID], [Name], [ID_Room]) VALUES (1, N'A1', 1)
INSERT [dbo].[Chair] ([ID], [Name], [ID_Room]) VALUES (2, N'A2', 1)
INSERT [dbo].[Chair] ([ID], [Name], [ID_Room]) VALUES (3, N'A3', 1)
INSERT [dbo].[Chair] ([ID], [Name], [ID_Room]) VALUES (4, N'A4', 1)
INSERT [dbo].[Chair] ([ID], [Name], [ID_Room]) VALUES (5, N'A1', 2)
INSERT [dbo].[Chair] ([ID], [Name], [ID_Room]) VALUES (6, N'A2', 2)
INSERT [dbo].[Chair] ([ID], [Name], [ID_Room]) VALUES (7, N'A3', 2)
INSERT [dbo].[Chair] ([ID], [Name], [ID_Room]) VALUES (8, N'A4', 2)
INSERT [dbo].[Chair] ([ID], [Name], [ID_Room]) VALUES (9, N'A1', 3)
INSERT [dbo].[Chair] ([ID], [Name], [ID_Room]) VALUES (10, N'A2', 3)
INSERT [dbo].[Chair] ([ID], [Name], [ID_Room]) VALUES (11, N'A3', 3)
INSERT [dbo].[Chair] ([ID], [Name], [ID_Room]) VALUES (12, N'A4', 3)
INSERT [dbo].[Chair] ([ID], [Name], [ID_Room]) VALUES (13, N'A1', 4)
INSERT [dbo].[Chair] ([ID], [Name], [ID_Room]) VALUES (14, N'A2', 4)
INSERT [dbo].[Chair] ([ID], [Name], [ID_Room]) VALUES (15, N'A3', 4)
INSERT [dbo].[Chair] ([ID], [Name], [ID_Room]) VALUES (17, N'A4', 4)
SET IDENTITY_INSERT [dbo].[Chair] OFF
SET IDENTITY_INSERT [dbo].[Cinema] ON 

INSERT [dbo].[Cinema] ([ID], [Name], [Address], [ID_District]) VALUES (1, N'Hùng Vương Plaza', N'126 Hùng Vương', 1)
INSERT [dbo].[Cinema] ([ID], [Name], [Address], [ID_District]) VALUES (2, N'Tầng 5,TTTM Vincom Thủ Đức', N'216 Võ Văn Ngân, Phường Bình Thọ', 2)
INSERT [dbo].[Cinema] ([ID], [Name], [Address], [ID_District]) VALUES (3, N'Lầu 3, Aeon Mall 30 Bờ Bao Tân Thắng', N'Phường Sơn Kỳ', 3)
INSERT [dbo].[Cinema] ([ID], [Name], [Address], [ID_District]) VALUES (4, N'Tầng 5 TTTM Vincom Plaza Gò Vấp', N'12 Phan Văn Trị, Phường 7', 4)
SET IDENTITY_INSERT [dbo].[Cinema] OFF
SET IDENTITY_INSERT [dbo].[Combo] ON 

INSERT [dbo].[Combo] ([ID], [Name], [Price], [Status]) VALUES (2, N'iCombo 1', 62000.0000, 1)
INSERT [dbo].[Combo] ([ID], [Name], [Price], [Status]) VALUES (3, N'iCombo 2', 81000.0000, 1)
SET IDENTITY_INSERT [dbo].[Combo] OFF
SET IDENTITY_INSERT [dbo].[District] ON 

INSERT [dbo].[District] ([ID], [Name]) VALUES (1, N'Quận 5')
INSERT [dbo].[District] ([ID], [Name]) VALUES (2, N'Quận Thủ Đức')
INSERT [dbo].[District] ([ID], [Name]) VALUES (3, N'Quận Tân Phú')
INSERT [dbo].[District] ([ID], [Name]) VALUES (4, N'Quận Gò Vấp')
SET IDENTITY_INSERT [dbo].[District] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [Username], [Password], [ID_Role], [FullName], [PhoneNumber], [Email]) VALUES (1, N'admin', N'123123', 1, N'Nguyễn Nhật Nam', N'01627180178', N'nhatnam0178@gmail.com')
INSERT [dbo].[Employee] ([ID], [Username], [Password], [ID_Role], [FullName], [PhoneNumber], [Email]) VALUES (3, N'employee', N'123456', 2, N'Lực', N'09012133211', N'jasdjsaj@askjdas.com')
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[Film] ON 

INSERT [dbo].[Film] ([ID], [Name], [Directors], [Cast], [Timer], [Age], [Image], [ID_MovieGenre], [ID_FilmStudio]) VALUES (5, N'AVENGERS INFINITY WAR', N'Anthony Russo, Joe Russo', N'Dave Bautista, Karen Gillan, Tom Holland', 150, 16, NULL, 1, 1)
INSERT [dbo].[Film] ([ID], [Name], [Directors], [Cast], [Timer], [Age], [Image], [ID_MovieGenre], [ID_FilmStudio]) VALUES (6, N'Deadpool 2', N'David Leitch', N'Ryan Reynolds, Josh Brolin, Morena Baccarin, Julian Dennison, Zazie Beetz, T. J. Miller', 119, 18, NULL, 1, 1)
INSERT [dbo].[Film] ([ID], [Name], [Directors], [Cast], [Timer], [Age], [Image], [ID_MovieGenre], [ID_FilmStudio]) VALUES (12, N'JURASSIC WORLD (2015)', N'Colin Trevorrow', N'Chris Pratt, Bryce Dallas Howard, Vincent D''Onofrio, Judy Greer,...', 125, 18, NULL, 1, 1)
INSERT [dbo].[Film] ([ID], [Name], [Directors], [Cast], [Timer], [Age], [Image], [ID_MovieGenre], [ID_FilmStudio]) VALUES (13, N'BIỆT ĐỘI CẢM TỬ', N'Sam Liu ', N'Christian Slater, Vanessa Williams, Billy Brown, Kristin Bauer Van Straten, Gideon Emery, Liam Mcintyre, Tara Strong, David Boat, Trevor Devall, Dave Fennoy, Greg Grunberg', 86, 13, NULL, 2, 4)
INSERT [dbo].[Film] ([ID], [Name], [Directors], [Cast], [Timer], [Age], [Image], [ID_MovieGenre], [ID_FilmStudio]) VALUES (14, N'NGÔI LÀNG TIỀN SỬ', N'Nick Park ', N'Tom Hiddleston, Maisie Williams, Eddie Redmayne, Richard Ayoade, Timothy Spall, Rob Brydon, Miriam Margolyes, Johnny Vegas, Kayvan Novak', 140, 13, NULL, 2, 15)
INSERT [dbo].[Film] ([ID], [Name], [Directors], [Cast], [Timer], [Age], [Image], [ID_MovieGenre], [ID_FilmStudio]) VALUES (15, N'NGƯỜI DƠI NINJA', N'Junpei Mizusaki', N'Koichi Yamadera, Wataru Takagi, Rie Kugimira, Ai Kakuma, Hochu Otsuka, Eric Bauza, Adam Croasdell, Grey Deliste', 85, 13, NULL, 2, 6)
INSERT [dbo].[Film] ([ID], [Name], [Directors], [Cast], [Timer], [Age], [Image], [ID_MovieGenre], [ID_FilmStudio]) VALUES (16, N'LẬT MẶT 3', N'Lý Hải', N'Kiều Minh Tuấn, Huy Khánh, Song Luân, hotgirl Nene', 103, 13, NULL, 3, 9)
INSERT [dbo].[Film] ([ID], [Name], [Directors], [Cast], [Timer], [Age], [Image], [ID_MovieGenre], [ID_FilmStudio]) VALUES (17, N'TUỔI SIÊU QUẬY', N'Michael Woo, Joyce Lee', N'Michael Woo, Joyce Lee', 107, 13, NULL, 3, 8)
INSERT [dbo].[Film] ([ID], [Name], [Directors], [Cast], [Timer], [Age], [Image], [ID_MovieGenre], [ID_FilmStudio]) VALUES (18, N'YÊU NỮ SIÊU QUẬY', N'Nguyễn Ngọc Hùng', N'Nguyễn Ngọc Hùng', 90, 13, NULL, 3, 9)
INSERT [dbo].[Film] ([ID], [Name], [Directors], [Cast], [Timer], [Age], [Image], [ID_MovieGenre], [ID_FilmStudio]) VALUES (19, N'MẸ HÃY YÊU CON THÊM LẦN NỮA', N'William Kim', N'Lục Nghị, Cảnh Điềm, Yi Cheng, Kar-Ying CLaw, Hsuan-Yu Wen, Hao Haohi', 100, 13, NULL, 4, 16)
INSERT [dbo].[Film] ([ID], [Name], [Directors], [Cast], [Timer], [Age], [Image], [ID_MovieGenre], [ID_FilmStudio]) VALUES (20, N'TIẾNG HÁT TỪ TRÁI TIM', N'Naoto Kumazawa', N'Kento Nakajima, Kyoho Yoshine, Anna Ishii, Kanichiro, Nene Otsuka, YoshiYoshi Arakawa, Jun Nishiyama, Kohie Fukuyama, Shusaku Kamikawa, Ryosuke Kawamura', 119, 13, NULL, 4, 11)
INSERT [dbo].[Film] ([ID], [Name], [Directors], [Cast], [Timer], [Age], [Image], [ID_MovieGenre], [ID_FilmStudio]) VALUES (21, N'TRÁI ĐẤT MỘT NGÀY TUYỆT VỜI', N'Richard Dale, Lixin Fan', N'Robert Redford, Thành Long', 95, 13, NULL, 4, 12)
INSERT [dbo].[Film] ([ID], [Name], [Directors], [Cast], [Timer], [Age], [Image], [ID_MovieGenre], [ID_FilmStudio]) VALUES (22, N'LƯỠI KIẾM BẤT TỬ', N'Takashi Miike', N'Takuya Kimura, Hana Sugisaki, Sota Fukushi, Erika Toda, Kazuki Kitamura, Chiaki Kuriyama, Shinnosuke Mitsushima, Min tanaka, Tsutomu Yamazaki, Renji Ishibashi', 140, 13, NULL, 5, 15)
INSERT [dbo].[Film] ([ID], [Name], [Directors], [Cast], [Timer], [Age], [Image], [ID_MovieGenre], [ID_FilmStudio]) VALUES (23, N'MINH TRIỀU CẨM Y VỆ phần 2', N'Tiết Văn Hoa ', N'Lý Vỹ, Nam Sinh, Ngô Dạng, Tu Kiệt Khải, Ứng Hạo Mính', 90, 13, NULL, 5, 16)
INSERT [dbo].[Film] ([ID], [Name], [Directors], [Cast], [Timer], [Age], [Image], [ID_MovieGenre], [ID_FilmStudio]) VALUES (24, N'NỮ QUYỀN VƯƠNG', N'Đỗ Vấn Trạch', N'Mada Chan, Yasuaki Kurata, Stephy Tang, Đỗ Vấn Trạch, Stephen Au', 87, 13, NULL, 5, 17)
SET IDENTITY_INSERT [dbo].[Film] OFF
SET IDENTITY_INSERT [dbo].[FilmStudio] ON 

INSERT [dbo].[FilmStudio] ([ID], [Name], [Country]) VALUES (1, N'Đang cập nhật', N'America')
INSERT [dbo].[FilmStudio] ([ID], [Name], [Country]) VALUES (2, N'Đang cập nhật', N'America')
INSERT [dbo].[FilmStudio] ([ID], [Name], [Country]) VALUES (3, N'Đang cập nhật', N'America')
INSERT [dbo].[FilmStudio] ([ID], [Name], [Country]) VALUES (4, N'DC Entertainment', N'America')
INSERT [dbo].[FilmStudio] ([ID], [Name], [Country]) VALUES (6, N'DC Comics, DC Entertainment, Kamikaze Douga', N'America')
INSERT [dbo].[FilmStudio] ([ID], [Name], [Country]) VALUES (7, N'Đang cập nhật', N'Viet Nam')
INSERT [dbo].[FilmStudio] ([ID], [Name], [Country]) VALUES (8, N'Shelin Ng, Clara Cheo', N'Hongkong')
INSERT [dbo].[FilmStudio] ([ID], [Name], [Country]) VALUES (9, N'Happy Entertaiment', N'Viet Nam')
INSERT [dbo].[FilmStudio] ([ID], [Name], [Country]) VALUES (10, N'Đang cập nhật', N'Korea')
INSERT [dbo].[FilmStudio] ([ID], [Name], [Country]) VALUES (11, N'A-1 Pictures', N'Japan')
INSERT [dbo].[FilmStudio] ([ID], [Name], [Country]) VALUES (12, N'Earth Film Productions', N'Japan')
INSERT [dbo].[FilmStudio] ([ID], [Name], [Country]) VALUES (15, N'Warner Bros.(OLM), (RPC)', N'America')
INSERT [dbo].[FilmStudio] ([ID], [Name], [Country]) VALUES (16, N'Đang cập nhật', N'China')
INSERT [dbo].[FilmStudio] ([ID], [Name], [Country]) VALUES (17, N'HK Film Production', N'Korea')
SET IDENTITY_INSERT [dbo].[FilmStudio] OFF
SET IDENTITY_INSERT [dbo].[MovieGenre] ON 

INSERT [dbo].[MovieGenre] ([ID], [Name]) VALUES (1, N'Action Film')
INSERT [dbo].[MovieGenre] ([ID], [Name]) VALUES (2, N'Carttoon Film')
INSERT [dbo].[MovieGenre] ([ID], [Name]) VALUES (3, N'Comedy Film')
INSERT [dbo].[MovieGenre] ([ID], [Name]) VALUES (4, N'Family Film')
INSERT [dbo].[MovieGenre] ([ID], [Name]) VALUES (5, N'Martial Arts Film')
INSERT [dbo].[MovieGenre] ([ID], [Name]) VALUES (6, N'Viễn Tưởng')
INSERT [dbo].[MovieGenre] ([ID], [Name]) VALUES (7, N'Japan')
SET IDENTITY_INSERT [dbo].[MovieGenre] OFF
SET IDENTITY_INSERT [dbo].[MovieSchedule] ON 

INSERT [dbo].[MovieSchedule] ([ID], [TimeStart], [ID_Film], [ID_Room], [PriceFilm], [Status], [Date]) VALUES (4, CAST(N'12:00:00' AS Time), 5, 2, 121028, 1, CAST(N'2018-05-15' AS Date))
INSERT [dbo].[MovieSchedule] ([ID], [TimeStart], [ID_Film], [ID_Room], [PriceFilm], [Status], [Date]) VALUES (5, CAST(N'11:00:00' AS Time), 6, 1, 120000, 1, CAST(N'2018-05-15' AS Date))
INSERT [dbo].[MovieSchedule] ([ID], [TimeStart], [ID_Film], [ID_Room], [PriceFilm], [Status], [Date]) VALUES (6, CAST(N'11:00:00' AS Time), 6, 5, 80000, 1, CAST(N'2018-05-16' AS Date))
SET IDENTITY_INSERT [dbo].[MovieSchedule] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (2, N'Employee')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([ID], [Name], [Total_Chair], [ID_Cinema], [Status]) VALUES (1, N'Phòng 1', 30, 1, 1)
INSERT [dbo].[Room] ([ID], [Name], [Total_Chair], [ID_Cinema], [Status]) VALUES (2, N'Phòng 2', 40, 1, 1)
INSERT [dbo].[Room] ([ID], [Name], [Total_Chair], [ID_Cinema], [Status]) VALUES (3, N'Phòng 1 ', 30, 2, 1)
INSERT [dbo].[Room] ([ID], [Name], [Total_Chair], [ID_Cinema], [Status]) VALUES (4, N'Phòng 2', 40, 2, 1)
INSERT [dbo].[Room] ([ID], [Name], [Total_Chair], [ID_Cinema], [Status]) VALUES (5, N'Phòng 1', 30, 3, 1)
INSERT [dbo].[Room] ([ID], [Name], [Total_Chair], [ID_Cinema], [Status]) VALUES (6, N'Phòng 2', 40, 3, 1)
INSERT [dbo].[Room] ([ID], [Name], [Total_Chair], [ID_Cinema], [Status]) VALUES (7, N'Phòng 1', 30, 4, 1)
INSERT [dbo].[Room] ([ID], [Name], [Total_Chair], [ID_Cinema], [Status]) VALUES (8, N'Phòng 2', 40, 4, 1)
SET IDENTITY_INSERT [dbo].[Room] OFF
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

INSERT [dbo].[UserAccount] ([ID], [FullName], [Address], [PhoneNumber], [CNND], [UserName], [PassWord], [Email]) VALUES (5, N'Vu Van Nguyet', N'Q1', N'01276123899', N'128117269', N'vannguyet', N'123123', N'vuvannguyet@gmail.com')
INSERT [dbo].[UserAccount] ([ID], [FullName], [Address], [PhoneNumber], [CNND], [UserName], [PassWord], [Email]) VALUES (6, N'ADMIN', N'Phu Nhuan', N'09999999990', N'677990121', N'admin', N'123456', N'admin@nlq.com')
INSERT [dbo].[UserAccount] ([ID], [FullName], [Address], [PhoneNumber], [CNND], [UserName], [PassWord], [Email]) VALUES (7, N'UserDemo', N'Binh Thanh', N'09121322344', N'938274983', N'user1', N'123123', N'user@gm.com')
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Employee] FOREIGN KEY([ID_Employee])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Employee]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Ticket] FOREIGN KEY([ID_Ticket])
REFERENCES [dbo].[Ticket] ([ID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Ticket]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_UserAccount] FOREIGN KEY([ID_UserAccount])
REFERENCES [dbo].[UserAccount] ([ID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_UserAccount]
GO
ALTER TABLE [dbo].[Chair]  WITH CHECK ADD  CONSTRAINT [FK_Chair_Room] FOREIGN KEY([ID_Room])
REFERENCES [dbo].[Room] ([ID])
GO
ALTER TABLE [dbo].[Chair] CHECK CONSTRAINT [FK_Chair_Room]
GO
ALTER TABLE [dbo].[ChairTicket]  WITH CHECK ADD  CONSTRAINT [FK_ChairTicket_Chair] FOREIGN KEY([ID_Chair])
REFERENCES [dbo].[Chair] ([ID])
GO
ALTER TABLE [dbo].[ChairTicket] CHECK CONSTRAINT [FK_ChairTicket_Chair]
GO
ALTER TABLE [dbo].[ChairTicket]  WITH CHECK ADD  CONSTRAINT [FK_ChairTicket_Ticket] FOREIGN KEY([ID_Ticket])
REFERENCES [dbo].[Ticket] ([ID])
GO
ALTER TABLE [dbo].[ChairTicket] CHECK CONSTRAINT [FK_ChairTicket_Ticket]
GO
ALTER TABLE [dbo].[Cinema]  WITH CHECK ADD  CONSTRAINT [FK_Cinema_District] FOREIGN KEY([ID_District])
REFERENCES [dbo].[District] ([ID])
GO
ALTER TABLE [dbo].[Cinema] CHECK CONSTRAINT [FK_Cinema_District]
GO
ALTER TABLE [dbo].[ComboTicket]  WITH CHECK ADD  CONSTRAINT [FK_ComboTicket_Combo] FOREIGN KEY([ID_Combo])
REFERENCES [dbo].[Combo] ([ID])
GO
ALTER TABLE [dbo].[ComboTicket] CHECK CONSTRAINT [FK_ComboTicket_Combo]
GO
ALTER TABLE [dbo].[ComboTicket]  WITH CHECK ADD  CONSTRAINT [FK_ComboTicket_Ticket] FOREIGN KEY([ID_Ticket])
REFERENCES [dbo].[Ticket] ([ID])
GO
ALTER TABLE [dbo].[ComboTicket] CHECK CONSTRAINT [FK_ComboTicket_Ticket]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Role] FOREIGN KEY([ID_Role])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role]
GO
ALTER TABLE [dbo].[Film]  WITH CHECK ADD  CONSTRAINT [FK_Film_FilmStudio] FOREIGN KEY([ID_FilmStudio])
REFERENCES [dbo].[FilmStudio] ([ID])
GO
ALTER TABLE [dbo].[Film] CHECK CONSTRAINT [FK_Film_FilmStudio]
GO
ALTER TABLE [dbo].[Film]  WITH CHECK ADD  CONSTRAINT [FK_Film_MovieGenre] FOREIGN KEY([ID_MovieGenre])
REFERENCES [dbo].[MovieGenre] ([ID])
GO
ALTER TABLE [dbo].[Film] CHECK CONSTRAINT [FK_Film_MovieGenre]
GO
ALTER TABLE [dbo].[MovieSchedule]  WITH CHECK ADD  CONSTRAINT [FK_MovieSchedule_Film] FOREIGN KEY([ID_Film])
REFERENCES [dbo].[Film] ([ID])
GO
ALTER TABLE [dbo].[MovieSchedule] CHECK CONSTRAINT [FK_MovieSchedule_Film]
GO
ALTER TABLE [dbo].[MovieSchedule]  WITH CHECK ADD  CONSTRAINT [FK_MovieSchedule_Room] FOREIGN KEY([ID_Room])
REFERENCES [dbo].[Room] ([ID])
GO
ALTER TABLE [dbo].[MovieSchedule] CHECK CONSTRAINT [FK_MovieSchedule_Room]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Cinema] FOREIGN KEY([ID_Cinema])
REFERENCES [dbo].[Cinema] ([ID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Cinema]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_MovieSchedule] FOREIGN KEY([ID_MovieSchedule])
REFERENCES [dbo].[MovieSchedule] ([ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_MovieSchedule]
GO
USE [master]
GO
ALTER DATABASE [NQL_CINEMA] SET  READ_WRITE 
GO
