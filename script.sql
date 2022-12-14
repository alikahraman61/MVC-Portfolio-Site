USE [DbCv]
GO
/****** Object:  Table [dbo].[TblAbout]    Script Date: 7.11.2022 03:41:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblAbout](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NULL,
	[Surname] [varchar](30) NULL,
	[Address] [varchar](100) NULL,
	[Phone] [varchar](20) NULL,
	[Mail] [varchar](50) NULL,
	[Explanation] [varchar](max) NULL,
	[Image] [varchar](100) NULL,
 CONSTRAINT [PK_TblHakkimda] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblAdmin]    Script Date: 7.11.2022 03:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblAdmin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](20) NULL,
	[Password] [varchar](20) NULL,
 CONSTRAINT [PK_TblAdmin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCertificate]    Script Date: 7.11.2022 03:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCertificate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Explanation] [varchar](250) NULL,
 CONSTRAINT [PK_TblCertificate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCommunication]    Script Date: 7.11.2022 03:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCommunication](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameSurname] [varchar](100) NULL,
	[Mail] [varchar](50) NULL,
	[Subject] [varchar](100) NULL,
	[Message] [varchar](1000) NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_TblCommunication] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblEducation]    Script Date: 7.11.2022 03:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblEducation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[Subtitle1] [varchar](100) NULL,
	[Subtitle2] [varchar](100) NULL,
	[GPA] [varchar](10) NULL,
	[Date] [varchar](100) NULL,
 CONSTRAINT [PK_TblEducation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblExperience]    Script Date: 7.11.2022 03:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblExperience](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[Subtitle] [varchar](100) NULL,
	[Explanation] [varchar](max) NULL,
	[Date] [varchar](100) NULL,
 CONSTRAINT [PK_TblExperience] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblHobby]    Script Date: 7.11.2022 03:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblHobby](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Explanation1] [nvarchar](500) NULL,
	[Explanation2] [nvarchar](500) NULL,
 CONSTRAINT [PK_TblHobby] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLSOCIALMEDIA]    Script Date: 7.11.2022 03:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLSOCIALMEDIA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NULL,
	[Link] [varchar](100) NULL,
	[İcon] [varchar](100) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTalent]    Script Date: 7.11.2022 03:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTalent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Talent] [varchar](100) NULL,
	[Rate] [tinyint] NULL,
 CONSTRAINT [PK_TblTalent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblAbout] ON 

INSERT [dbo].[TblAbout] ([ID], [Name], [Surname], [Address], [Phone], [Mail], [Explanation], [Image]) VALUES (1, N'Ali', N'Kahraman', N'İstanbul', N'05110001111', N'alikahraman.0061@gmail.com', N'Merhaba Ben Ali Kahraman. Mimar Sinan Güzel Sanatlar Üniversitesi Matematik mezunuyum. Aynı zamanda Marmara Üniversitesi Bilgisayar Programcılığı mezunuyum. İstanbul Teknik Üniversitesi Matematik Mühendisliği bölümünde yüksek lisans yapmaktayım.', N'https://i.hizliresim.com/i4b9t59.jfif')
SET IDENTITY_INSERT [dbo].[TblAbout] OFF
GO
SET IDENTITY_INSERT [dbo].[TblAdmin] ON 

INSERT [dbo].[TblAdmin] ([ID], [UserName], [Password]) VALUES (1, N'ali', N'123')
SET IDENTITY_INSERT [dbo].[TblAdmin] OFF
GO
SET IDENTITY_INSERT [dbo].[TblCertificate] ON 

INSERT [dbo].[TblCertificate] ([ID], [Explanation]) VALUES (1, N'ArıBilgi-Python Yazılım Uzmanlığı Eğitimi')
INSERT [dbo].[TblCertificate] ([ID], [Explanation]) VALUES (2, N'SmartPro-Microsoft Yazılım Uzmanlığı Eğitimi')
INSERT [dbo].[TblCertificate] ([ID], [Explanation]) VALUES (5, N'Udemy-Deep Learning ')
SET IDENTITY_INSERT [dbo].[TblCertificate] OFF
GO
SET IDENTITY_INSERT [dbo].[TblCommunication] ON 

INSERT [dbo].[TblCommunication] ([ID], [NameSurname], [Mail], [Subject], [Message], [Date]) VALUES (1, N'ahmet kaya', N'ahmet@hotmail.com', N'proje odevi', N'ne olacak halimiz', CAST(N'2021-03-02' AS Date))
INSERT [dbo].[TblCommunication] ([ID], [NameSurname], [Mail], [Subject], [Message], [Date]) VALUES (2, N'mahmut sunan', N'mahmut_61@gmail.com', N'proje', N'ekin idim oldum harman', CAST(N'2018-07-05' AS Date))
INSERT [dbo].[TblCommunication] ([ID], [NameSurname], [Mail], [Subject], [Message], [Date]) VALUES (3, N'zeki uzay', N'feza@gmail.com', N'Ödev', N'Fasulyenin faydaları', CAST(N'2022-09-07' AS Date))
INSERT [dbo].[TblCommunication] ([ID], [NameSurname], [Mail], [Subject], [Message], [Date]) VALUES (4, N'ahmet kaya', N'ahmet@hotmail.com', N'Turev', N'zincir kuralı', CAST(N'2022-09-02' AS Date))
SET IDENTITY_INSERT [dbo].[TblCommunication] OFF
GO
SET IDENTITY_INSERT [dbo].[TblEducation] ON 

INSERT [dbo].[TblEducation] ([ID], [Title], [Subtitle1], [Subtitle2], [GPA], [Date]) VALUES (5, N'Marmara Üniveristesi', N'Teknik Bilimler Meslek Yüksek Okulu', N'Bilgisayar Programcılığı', N'3.10', N'2020')
INSERT [dbo].[TblEducation] ([ID], [Title], [Subtitle1], [Subtitle2], [GPA], [Date]) VALUES (6, N'Mimar Sinan Güzel Sanatlar  Üniversitesi', N'Fen Edebiyat Fakültesi', N'Matematik Bölümü', N'3.10', N'2019')
INSERT [dbo].[TblEducation] ([ID], [Title], [Subtitle1], [Subtitle2], [GPA], [Date]) VALUES (7, N'İstanbul Teknik Üniversitesi', N'Lisansüstü Enstitüsü', N'Matematik Mühendisliği', N'1', N'2023')
SET IDENTITY_INSERT [dbo].[TblEducation] OFF
GO
SET IDENTITY_INSERT [dbo].[TblExperience] ON 

INSERT [dbo].[TblExperience] ([ID], [Title], [Subtitle], [Explanation], [Date]) VALUES (1, N'Turk Telekom', N'Stajyer', N'Mühendis', N'2014')
SET IDENTITY_INSERT [dbo].[TblExperience] OFF
GO
SET IDENTITY_INSERT [dbo].[TblHobby] ON 

INSERT [dbo].[TblHobby] ([ID], [Explanation1], [Explanation2]) VALUES (2, N'Matematik', N'Bilgisayar bilimleri')
SET IDENTITY_INSERT [dbo].[TblHobby] OFF
GO
SET IDENTITY_INSERT [dbo].[TBLSOCIALMEDIA] ON 

INSERT [dbo].[TBLSOCIALMEDIA] ([ID], [Name], [Link], [İcon], [Status]) VALUES (1, N'Linkedin', N'https://tr.linkedin.com/in/ali-kahraman-32330a214?trk', N'fab fa-linkedin-in', 1)
INSERT [dbo].[TBLSOCIALMEDIA] ([ID], [Name], [Link], [İcon], [Status]) VALUES (2, N'Github', N'https://github.com/alikahraman61', N'fab fa-github', 1)
INSERT [dbo].[TBLSOCIALMEDIA] ([ID], [Name], [Link], [İcon], [Status]) VALUES (3, N'Youtube', N'https://www.youtube.com/channel/UCIFbXRffZPj8K75_cw757hg', N'fab fa-youtube', 1)
SET IDENTITY_INSERT [dbo].[TBLSOCIALMEDIA] OFF
GO
SET IDENTITY_INSERT [dbo].[TblTalent] ON 

INSERT [dbo].[TblTalent] ([ID], [Talent], [Rate]) VALUES (1, N'Python', 80)
INSERT [dbo].[TblTalent] ([ID], [Talent], [Rate]) VALUES (2, N'C#', 75)
INSERT [dbo].[TblTalent] ([ID], [Talent], [Rate]) VALUES (3, N'MVC', 50)
INSERT [dbo].[TblTalent] ([ID], [Talent], [Rate]) VALUES (4, N'Machine Learning', 85)
INSERT [dbo].[TblTalent] ([ID], [Talent], [Rate]) VALUES (5, N'CSS', 60)
INSERT [dbo].[TblTalent] ([ID], [Talent], [Rate]) VALUES (6, N'HTML', 70)
INSERT [dbo].[TblTalent] ([ID], [Talent], [Rate]) VALUES (7, N'javascript', 50)
INSERT [dbo].[TblTalent] ([ID], [Talent], [Rate]) VALUES (8, N'SQL', 80)
INSERT [dbo].[TblTalent] ([ID], [Talent], [Rate]) VALUES (9, N'Sqlite', 70)
INSERT [dbo].[TblTalent] ([ID], [Talent], [Rate]) VALUES (14, N'Django', 60)
SET IDENTITY_INSERT [dbo].[TblTalent] OFF
GO
