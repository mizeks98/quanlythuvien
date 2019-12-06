USE [QLTV]
GO
/****** Object:  Table [dbo].[AUTHORS]    Script Date: 11/22/2019 9:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AUTHORS](
	[idAuthor] [char](10) NOT NULL,
	[nameAuthor] [nvarchar](50) NULL,
 CONSTRAINT [PK_AUTHORS] PRIMARY KEY CLUSTERED 
(
	[idAuthor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BOOKS]    Script Date: 11/22/2019 9:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BOOKS](
	[idBook] [char](10) NOT NULL,
	[nameBook] [nvarchar](100) NULL,
	[yearRealeas] [int] NULL,
	[idPublisher] [char](10) NULL,
	[idAuthor] [char](10) NULL,
	[idTypeOfBook] [char](10) NULL,
	[numberBook] [int] NULL,
 CONSTRAINT [PK_BOOKS] PRIMARY KEY CLUSTERED 
(
	[idBook] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BORROW]    Script Date: 11/22/2019 9:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BORROW](
	[idBorrow] [char](10) NOT NULL,
	[idCard] [char](10) NOT NULL,
	[moneyDesposit] [money] NULL,
	[numberBorrow] [int] NULL,
	[borrowDate] [date] NULL,
	[announcePayDate] [date] NULL,
	[idEmployees] [char](10) NULL,
 CONSTRAINT [PK_BORROW] PRIMARY KEY CLUSTERED 
(
	[idBorrow] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CARDS]    Script Date: 11/22/2019 9:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CARDS](
	[idCard] [char](10) NOT NULL,
	[realeassDate] [date] NULL,
	[idReader] [char](10) NULL,
	[expiryDate] [date] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_CARDS] PRIMARY KEY CLUSTERED 
(
	[idCard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CLASSES]    Script Date: 11/22/2019 9:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLASSES](
	[idClass] [char](10) NOT NULL,
	[nameClass] [nvarchar](50) NULL,
	[lever] [int] NULL,
 CONSTRAINT [PK_CLASSES] PRIMARY KEY CLUSTERED 
(
	[idClass] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DETAIL_BORROW]    Script Date: 11/22/2019 9:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DETAIL_BORROW](
	[idDetailBorrow] [char](10) NOT NULL,
	[idBorrow] [char](10) NULL,
	[idBook] [char](10) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_DETAIL_BORROW] PRIMARY KEY CLUSTERED 
(
	[idDetailBorrow] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DETAIL_PAY]    Script Date: 11/22/2019 9:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DETAIL_PAY](
	[idPay] [char](10) NOT NULL,
	[idDetailBorrow] [char](10) NOT NULL,
 CONSTRAINT [PK_DETAIL_PAYCARDS] PRIMARY KEY CLUSTERED 
(
	[idPay] ASC,
	[idDetailBorrow] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMPLOYEES]    Script Date: 11/22/2019 9:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPLOYEES](
	[idEmployees] [char](10) NOT NULL,
	[nameEmployees] [nvarchar](50) NULL,
	[sex] [bit] NULL,
	[birthday] [date] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[idEmployees] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MANAGE_DECENTRALIZATION]    Script Date: 11/22/2019 9:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MANAGE_DECENTRALIZATION](
	[IdGroup] [char](10) NOT NULL,
	[IdMonitor] [char](10) NOT NULL,
	[Licensed] [bit] NULL,
 CONSTRAINT [PK_MANAGE_DECENTRALIZATION] PRIMARY KEY CLUSTERED 
(
	[IdGroup] ASC,
	[IdMonitor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MANAGE_USER]    Script Date: 11/22/2019 9:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MANAGE_USER](
	[IdUser] [char](10) NOT NULL,
	[PassWord] [varchar](30) NULL,
	[Action] [nchar](10) NULL,
 CONSTRAINT [PK_MANAGE_USER] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MANAGE_USERGROUP]    Script Date: 11/22/2019 9:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MANAGE_USERGROUP](
	[IdGroup] [char](10) NOT NULL,
	[NameGroup] [nvarchar](30) NULL,
	[Note] [nchar](10) NULL,
 CONSTRAINT [PK_MANAGE_USERGROUP] PRIMARY KEY CLUSTERED 
(
	[IdGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MANAGE_USERGROUP_USER]    Script Date: 11/22/2019 9:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MANAGE_USERGROUP_USER](
	[IdUser] [char](10) NOT NULL,
	[IdGroup] [char](10) NOT NULL,
	[Note] [nchar](10) NULL,
 CONSTRAINT [PK_MANAGE_USERGROUP_USER] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC,
	[IdGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MONITOR]    Script Date: 11/22/2019 9:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MONITOR](
	[IdMonitor] [char](10) NOT NULL,
	[NameMonitor] [nvarchar](30) NULL,
 CONSTRAINT [PK_MONITOR] PRIMARY KEY CLUSTERED 
(
	[IdMonitor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PAY]    Script Date: 11/22/2019 9:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAY](
	[idPayCard] [char](10) NOT NULL,
	[payDate] [date] NULL,
	[numberPay] [int] NULL,
	[idBorrow] [char](10) NULL,
	[idEmployees] [char](10) NULL,
 CONSTRAINT [PK_PAYCARDS] PRIMARY KEY CLUSTERED 
(
	[idPayCard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PUBLISHERS]    Script Date: 11/22/2019 9:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PUBLISHERS](
	[idPublisher] [char](10) NOT NULL,
	[namePublisher] [nvarchar](50) NULL,
	[address] [nvarchar](100) NULL,
	[phonenumber] [char](15) NULL,
 CONSTRAINT [PK_PUBLISHERS] PRIMARY KEY CLUSTERED 
(
	[idPublisher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[READERS]    Script Date: 11/22/2019 9:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[READERS](
	[idReader] [char](10) NOT NULL,
	[nameReader] [nvarchar](50) NULL,
	[sex] [bit] NULL,
	[birthday] [date] NULL,
	[idClass] [char](10) NULL,
	[address] [nvarchar](100) NULL,
 CONSTRAINT [PK_READERS] PRIMARY KEY CLUSTERED 
(
	[idReader] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TYPESOFBOOKS]    Script Date: 11/22/2019 9:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TYPESOFBOOKS](
	[idTypeOfBook] [char](10) NOT NULL,
	[nameTypeOfBook] [nvarchar](100) NULL,
 CONSTRAINT [PK_TYPESOFBOOKS] PRIMARY KEY CLUSTERED 
(
	[idTypeOfBook] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[BOOKS]  WITH CHECK ADD  CONSTRAINT [FK_BOOKS_AUTHORS] FOREIGN KEY([idAuthor])
REFERENCES [dbo].[AUTHORS] ([idAuthor])
GO
ALTER TABLE [dbo].[BOOKS] CHECK CONSTRAINT [FK_BOOKS_AUTHORS]
GO
ALTER TABLE [dbo].[BOOKS]  WITH CHECK ADD  CONSTRAINT [FK_BOOKS_PUBLISHERS] FOREIGN KEY([idPublisher])
REFERENCES [dbo].[PUBLISHERS] ([idPublisher])
GO
ALTER TABLE [dbo].[BOOKS] CHECK CONSTRAINT [FK_BOOKS_PUBLISHERS]
GO
ALTER TABLE [dbo].[BOOKS]  WITH CHECK ADD  CONSTRAINT [FK_BOOKS_TYPESOFBOOKS] FOREIGN KEY([idTypeOfBook])
REFERENCES [dbo].[TYPESOFBOOKS] ([idTypeOfBook])
GO
ALTER TABLE [dbo].[BOOKS] CHECK CONSTRAINT [FK_BOOKS_TYPESOFBOOKS]
GO
ALTER TABLE [dbo].[BORROW]  WITH CHECK ADD  CONSTRAINT [FK_BORROW_CARDS] FOREIGN KEY([idCard])
REFERENCES [dbo].[CARDS] ([idCard])
GO
ALTER TABLE [dbo].[BORROW] CHECK CONSTRAINT [FK_BORROW_CARDS]
GO
ALTER TABLE [dbo].[BORROW]  WITH CHECK ADD  CONSTRAINT [FK_BORROW_EMPLOYEES] FOREIGN KEY([idEmployees])
REFERENCES [dbo].[EMPLOYEES] ([idEmployees])
GO
ALTER TABLE [dbo].[BORROW] CHECK CONSTRAINT [FK_BORROW_EMPLOYEES]
GO
ALTER TABLE [dbo].[CARDS]  WITH CHECK ADD  CONSTRAINT [FK_CARDS_READERS] FOREIGN KEY([idReader])
REFERENCES [dbo].[READERS] ([idReader])
GO
ALTER TABLE [dbo].[CARDS] CHECK CONSTRAINT [FK_CARDS_READERS]
GO
ALTER TABLE [dbo].[DETAIL_BORROW]  WITH CHECK ADD  CONSTRAINT [FK_DETAIL_BORROW_BOOKS] FOREIGN KEY([idBook])
REFERENCES [dbo].[BOOKS] ([idBook])
GO
ALTER TABLE [dbo].[DETAIL_BORROW] CHECK CONSTRAINT [FK_DETAIL_BORROW_BOOKS]
GO
ALTER TABLE [dbo].[DETAIL_BORROW]  WITH CHECK ADD  CONSTRAINT [FK_DETAIL_BORROW_BORROW] FOREIGN KEY([idBorrow])
REFERENCES [dbo].[BORROW] ([idBorrow])
GO
ALTER TABLE [dbo].[DETAIL_BORROW] CHECK CONSTRAINT [FK_DETAIL_BORROW_BORROW]
GO
ALTER TABLE [dbo].[DETAIL_PAY]  WITH CHECK ADD  CONSTRAINT [FK_DETAIL_PAY_DETAIL_BORROW] FOREIGN KEY([idDetailBorrow])
REFERENCES [dbo].[DETAIL_BORROW] ([idDetailBorrow])
GO
ALTER TABLE [dbo].[DETAIL_PAY] CHECK CONSTRAINT [FK_DETAIL_PAY_DETAIL_BORROW]
GO
ALTER TABLE [dbo].[DETAIL_PAY]  WITH CHECK ADD  CONSTRAINT [FK_DETAIL_PAY_PAY] FOREIGN KEY([idPay])
REFERENCES [dbo].[PAY] ([idPayCard])
GO
ALTER TABLE [dbo].[DETAIL_PAY] CHECK CONSTRAINT [FK_DETAIL_PAY_PAY]
GO
ALTER TABLE [dbo].[MANAGE_DECENTRALIZATION]  WITH CHECK ADD  CONSTRAINT [FK_MANAGE_DECENTRALIZATION_MANAGE_USERGROUP] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[MANAGE_USERGROUP] ([IdGroup])
GO
ALTER TABLE [dbo].[MANAGE_DECENTRALIZATION] CHECK CONSTRAINT [FK_MANAGE_DECENTRALIZATION_MANAGE_USERGROUP]
GO
ALTER TABLE [dbo].[MANAGE_DECENTRALIZATION]  WITH CHECK ADD  CONSTRAINT [FK_MANAGE_DECENTRALIZATION_MONITOR] FOREIGN KEY([IdMonitor])
REFERENCES [dbo].[MONITOR] ([IdMonitor])
GO
ALTER TABLE [dbo].[MANAGE_DECENTRALIZATION] CHECK CONSTRAINT [FK_MANAGE_DECENTRALIZATION_MONITOR]
GO
ALTER TABLE [dbo].[MANAGE_USER]  WITH CHECK ADD  CONSTRAINT [FK_MANAGE_USER_EMPLOYEES] FOREIGN KEY([IdUser])
REFERENCES [dbo].[EMPLOYEES] ([idEmployees])
GO
ALTER TABLE [dbo].[MANAGE_USER] CHECK CONSTRAINT [FK_MANAGE_USER_EMPLOYEES]
GO
ALTER TABLE [dbo].[MANAGE_USERGROUP_USER]  WITH CHECK ADD  CONSTRAINT [FK_MANAGE_USERGROUP_USER_MANAGE_USER] FOREIGN KEY([IdUser])
REFERENCES [dbo].[MANAGE_USER] ([IdUser])
GO
ALTER TABLE [dbo].[MANAGE_USERGROUP_USER] CHECK CONSTRAINT [FK_MANAGE_USERGROUP_USER_MANAGE_USER]
GO
ALTER TABLE [dbo].[MANAGE_USERGROUP_USER]  WITH CHECK ADD  CONSTRAINT [FK_MANAGE_USERGROUP_USER_MANAGE_USERGROUP] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[MANAGE_USERGROUP] ([IdGroup])
GO
ALTER TABLE [dbo].[MANAGE_USERGROUP_USER] CHECK CONSTRAINT [FK_MANAGE_USERGROUP_USER_MANAGE_USERGROUP]
GO
ALTER TABLE [dbo].[PAY]  WITH CHECK ADD  CONSTRAINT [FK_PAY_BORROW] FOREIGN KEY([idBorrow])
REFERENCES [dbo].[BORROW] ([idBorrow])
GO
ALTER TABLE [dbo].[PAY] CHECK CONSTRAINT [FK_PAY_BORROW]
GO
ALTER TABLE [dbo].[PAY]  WITH CHECK ADD  CONSTRAINT [FK_PAY_EMPLOYEES] FOREIGN KEY([idEmployees])
REFERENCES [dbo].[EMPLOYEES] ([idEmployees])
GO
ALTER TABLE [dbo].[PAY] CHECK CONSTRAINT [FK_PAY_EMPLOYEES]
GO
ALTER TABLE [dbo].[READERS]  WITH CHECK ADD  CONSTRAINT [FK_READERS_CLASSES] FOREIGN KEY([idClass])
REFERENCES [dbo].[CLASSES] ([idClass])
GO
ALTER TABLE [dbo].[READERS] CHECK CONSTRAINT [FK_READERS_CLASSES]
GO
