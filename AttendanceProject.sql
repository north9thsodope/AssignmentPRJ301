USE [AttendanceProject]
GO
/****** Object:  Table [dbo].[Attendence]    Script Date: 12/13/2021 12:38:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendence](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ScheduleID] [int] NOT NULL,
	[StudentCode] [nvarchar](50) NOT NULL,
	[Attendence] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Attendence] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Class]    Script Date: 12/13/2021 12:38:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ClassID] [int] NOT NULL,
	[ClassName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClassMember]    Script Date: 12/13/2021 12:38:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassMember](
	[StudentCode] [nvarchar](50) NOT NULL,
	[ClassID] [int] NOT NULL,
 CONSTRAINT [pk_class_member] PRIMARY KEY CLUSTERED 
(
	[StudentCode] ASC,
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 12/13/2021 12:38:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[ID] [int] NOT NULL,
	[SubjectID] [int] NULL,
	[ClassID] [int] NULL,
	[SlotID] [int] NULL,
	[Date] [date] NULL CONSTRAINT [DF_Schedule_Date]  DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Slot]    Script Date: 12/13/2021 12:38:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slot](
	[SlotID] [int] NOT NULL,
	[SlotName] [nvarchar](256) NOT NULL,
	[Time] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SlotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/13/2021 12:38:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentCode] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](150) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subject]    Script Date: 12/13/2021 12:38:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [int] NOT NULL,
	[SubjectName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Attendence] ON 

GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (1, 7, N'HE140220', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (2, 7, N'HE140562', N'Absent')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (3, 7, N'HE141071', N'Absent')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (4, 7, N'HE141587', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (5, 7, N'HE150287', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (6, 7, N'HE150311', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (7, 7, N'HE150858', N'Absent')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (8, 7, N'HE151065', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (9, 7, N'HE151099', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (10, 7, N'HE151113', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (11, 7, N'HE151214', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (12, 7, N'HE151254', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (13, 7, N'HE151382', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (14, 7, N'HE151388', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (15, 7, N'HE153066', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (16, 7, N'HE153067', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (17, 7, N'HE153071', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (18, 7, N'HE153072', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (19, 7, N'HE153087', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (20, 7, N'HE153181', N'Absent')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (21, 7, N'HE153279', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (22, 7, N'HE153314', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (23, 7, N'HE153411', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (24, 7, N'HE153441', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (25, 7, N'HE153457', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (26, 7, N'HE153541', N'Absent')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (27, 7, N'HE153608', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (28, 7, N'HE153669', N'Absent')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (29, 7, N'HE153688', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (30, 7, N'HE153689', N'Absent')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (31, 7, N'HS150081', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (32, 6, N'HE140220', N'Absent')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (33, 6, N'HE140562', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (34, 6, N'HE141071', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (35, 6, N'HE141587', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (36, 6, N'HE150287', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (37, 6, N'HE150311', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (38, 6, N'HE150858', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (39, 6, N'HE151065', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (40, 6, N'HE151099', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (41, 6, N'HE151113', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (42, 6, N'HE151214', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (43, 6, N'HE151254', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (44, 6, N'HE151382', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (45, 6, N'HE151388', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (46, 6, N'HE153066', N'Absent')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (47, 6, N'HE153067', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (48, 6, N'HE153071', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (49, 6, N'HE153072', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (50, 6, N'HE153087', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (51, 6, N'HE153181', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (52, 6, N'HE153279', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (53, 6, N'HE153314', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (54, 6, N'HE153411', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (55, 6, N'HE153441', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (56, 6, N'HE153457', N'Absent')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (57, 6, N'HE153541', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (58, 6, N'HE153608', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (59, 6, N'HE153669', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (60, 6, N'HE153688', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (61, 6, N'HE153689', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (62, 6, N'HS150081', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (63, 5, N'HE140220', N'Absent')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (64, 5, N'HE140562', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (65, 5, N'HE141071', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (66, 5, N'HE141587', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (67, 5, N'HE150287', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (68, 5, N'HE150311', N'Absent')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (69, 5, N'HE150858', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (70, 5, N'HE151065', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (71, 5, N'HE151099', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (72, 5, N'HE151113', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (73, 5, N'HE151214', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (74, 5, N'HE151254', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (75, 5, N'HE151382', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (76, 5, N'HE151388', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (77, 5, N'HE153066', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (78, 5, N'HE153067', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (79, 5, N'HE153071', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (80, 5, N'HE153072', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (81, 5, N'HE153087', N'Absent')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (82, 5, N'HE153181', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (83, 5, N'HE153279', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (84, 5, N'HE153314', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (85, 5, N'HE153411', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (86, 5, N'HE153441', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (87, 5, N'HE153457', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (88, 5, N'HE153541', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (89, 5, N'HE153608', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (90, 5, N'HE153669', N'Absent')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (91, 5, N'HE153688', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (92, 5, N'HE153689', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (93, 5, N'HS150081', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (94, 3, N'HE140220', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (95, 3, N'HE140562', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (96, 3, N'HE141071', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (97, 3, N'HE141587', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (98, 3, N'HE150287', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (99, 3, N'HE150311', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (100, 3, N'HE150858', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (101, 3, N'HE151065', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (102, 3, N'HE151099', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (103, 3, N'HE151113', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (104, 3, N'HE151214', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (105, 3, N'HE151254', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (106, 3, N'HE151382', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (107, 3, N'HE151388', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (108, 3, N'HE153066', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (109, 3, N'HE153067', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (110, 3, N'HE153071', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (111, 3, N'HE153072', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (112, 3, N'HE153087', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (113, 3, N'HE153181', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (114, 3, N'HE153279', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (115, 3, N'HE153314', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (116, 3, N'HE153411', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (117, 3, N'HE153441', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (118, 3, N'HE153457', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (119, 3, N'HE153541', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (120, 3, N'HE153608', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (121, 3, N'HE153669', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (122, 3, N'HE153688', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (123, 3, N'HE153689', N'Attended')
GO
INSERT [dbo].[Attendence] ([ID], [ScheduleID], [StudentCode], [Attendence]) VALUES (124, 3, N'HS150081', N'Attended')
GO
SET IDENTITY_INSERT [dbo].[Attendence] OFF
GO
INSERT [dbo].[Class] ([ClassID], [ClassName]) VALUES (1, N'SE1518')
GO
INSERT [dbo].[Class] ([ClassID], [ClassName]) VALUES (2, N'SE1512')
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE130277', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE140220', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE140562', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE141071', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE141244', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE141587', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150222', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150287', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150287', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150311', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150442', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150568', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150788', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE150858', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151019', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151062', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151065', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151065', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151099', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151110', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151113', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151113', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151214', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151225', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151254', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151367', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151382', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151388', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151442', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151472', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE151528', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153052', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153066', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153066', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153067', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153067', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153071', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153072', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153087', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153096', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153126', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153181', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153181', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153224', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153279', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153314', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153411', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153414', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153441', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153457', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153495', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153541', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153553', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153601', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153608', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153669', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153682', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153688', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153688', 2)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HE153689', 1)
GO
INSERT [dbo].[ClassMember] ([StudentCode], [ClassID]) VALUES (N'HS150081', 1)
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (1, 2, 2, 1, CAST(N'2021-12-11' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (2, 3, 2, 3, CAST(N'2021-12-12' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (3, 1, 1, 4, CAST(N'2021-12-10' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (4, 1, 1, 5, CAST(N'2021-12-10' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (5, 4, 1, 4, CAST(N'2021-12-10' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (6, 4, 1, 5, CAST(N'2021-12-11' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (7, 5, 1, 1, CAST(N'2021-12-12' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (8, 2, 2, 1, CAST(N'2021-12-13' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (9, 3, 2, 3, CAST(N'2021-12-13' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (10, 1, 1, 4, CAST(N'2021-12-13' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (11, 4, 1, 4, CAST(N'2021-12-14' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (12, 4, 1, 5, CAST(N'2021-12-14' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (13, 2, 2, 1, CAST(N'2021-12-15' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (14, 3, 2, 3, CAST(N'2021-12-15' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (15, 1, 1, 4, CAST(N'2021-12-15' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (16, 4, 1, 4, CAST(N'2021-12-16' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (17, 2, 2, 1, CAST(N'2021-12-17' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (18, 3, 2, 3, CAST(N'2021-12-17' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (19, 1, 1, 4, CAST(N'2021-12-17' AS Date))
GO
INSERT [dbo].[Schedule] ([ID], [SubjectID], [ClassID], [SlotID], [Date]) VALUES (20, 5, 1, 1, CAST(N'2021-12-18' AS Date))
GO
INSERT [dbo].[Slot] ([SlotID], [SlotName], [Time]) VALUES (1, N'Slot 1', N'7:30 - 9:00')
GO
INSERT [dbo].[Slot] ([SlotID], [SlotName], [Time]) VALUES (2, N'Slot 2', N'9:10 - 10:40')
GO
INSERT [dbo].[Slot] ([SlotID], [SlotName], [Time]) VALUES (3, N'Slot 3', N'10:50 - 12:20')
GO
INSERT [dbo].[Slot] ([SlotID], [SlotName], [Time]) VALUES (4, N'Slot 4 ', N'12:50 - 14:20')
GO
INSERT [dbo].[Slot] ([SlotID], [SlotName], [Time]) VALUES (5, N'Slot 5', N'14:30 - 16:00')
GO
INSERT [dbo].[Slot] ([SlotID], [SlotName], [Time]) VALUES (6, N'Slot 6', N'16:10 - 17:40')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE130277', N'Chu Tiến Dũng', N'https://i.ibb.co/D92fkV3/Chu-Ti-n-D-ng.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE140220', N'Trần Hải Long', N'https://i.ibb.co/mRRfLM5/Tran-Hai-Long.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE140562', N'Trần Việt Đức', N'https://i.ibb.co/z5hcv2N/Tran-Viet-Duc.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE141071', N'Hoàng Đức Anh', N'https://i.ibb.co/vdBqMZt/Hoang-Duc-Anh.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE141244', N'An Nam Sơn', N'https://i.ibb.co/ZdJLL9D/An-Nam-S-n.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE141587', N'Nguyễn Hữu Hưng', N'https://i.ibb.co/DVmRj50/Nguyen-Huu-Hung.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150222', N'Lương Tiến Anh', N'https://i.ibb.co/YW3v1rN/L-ng-Ti-n-Anh.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150287', N'Cao Hoàng Anh', N'https://i.ibb.co/0ydDF7v/Cao-Ho-ng-Anh.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150311', N'Nguyễn Viết Bảo Châu', N'https://i.ibb.co/HtwD4hX/Bao-Chau.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150442', N'Nghiêm Hoàng Đạt', N'https://i.ibb.co/HNZgTw2/Nghi-m-Ho-ng-t.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150568', N'Phạm Hữu Mạnh', N'https://i.ibb.co/tX5sqxN/Ph-m-H-u-M-nh.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150788', N'Nguyễn Đăng Dũng', N'https://i.ibb.co/NCCp31D/Nguy-n-ng-D-ng.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE150858', N'Lê Danh Tuấn', N'https://i.ibb.co/QKcmTt7/Le-Danh-Tuan.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151019', N'Lê Tiến Đạt', N'https://i.ibb.co/pxZgkT3/L-Ti-n-t.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151062', N'Đỗ Đức Huy', N'https://i.ibb.co/QnLwSfY/c-Huy.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151065', N'Lê Vũ Long', N'https://i.ibb.co/VmpZ75V/L-V-Long.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151099', N'Lưu Đức Anh', N'https://i.ibb.co/zhjLj8C/Luu-Duc-Anh.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151110', N'Tạ Văn Tân', N'https://i.ibb.co/1n0LmG7/T-V-n-T-n.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151113', N'Đỗ Đình Sơn', N'https://i.ibb.co/ZWywj8D/nh-S-n.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151214', N'Lưu Xuân Dinh', N'https://i.ibb.co/09tYMc1/Luu-Xuan-Dinh.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151225', N'Nguyễn Anh Khoa', N'https://i.ibb.co/FmL8qH9/Nguy-n-Anh-Khoa.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151254', N'Nguyễn Như Việt Anh', N'https://i.ibb.co/VN09tb7/Nguyen-Nhu-Viet-Anh.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151367', N'Đỗ Thuỳ Dương', N'https://i.ibb.co/TcLWxg5/Thu-D-ng.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151382', N'Tạ Ngọc Duy', N'https://i.ibb.co/TBbsRs4/Ta-Ngoc-Duy.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151388', N'Võ Thành Đạt', N'https://i.ibb.co/GHm3L5J/Vo-Thanh-Dat.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151442', N'Nguyễn Hoàng Trường Minh', N'https://i.ibb.co/H7JxLpP/Nguy-n-Ho-ng-Tr-ng-Minh.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151472', N'Phạm Minh Hiếu', N'https://i.ibb.co/SXXh5Mb/Ph-m-Minh-Hi-u.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE151528', N'Đặng Tiến Đạt', N'https://i.ibb.co/kKbxx8P/ng-Ti-n-t.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153052', N'Hoàng Đức Trung', N'https://i.ibb.co/8drnJQV/Ho-ng-c-Trung.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153066', N'Nguyễn Hữu Đức', N'https://i.ibb.co/NTJJWN4/Nguy-n-H-u-c.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153067', N'Phạm Trung Nghĩa', N'https://i.ibb.co/HzQzk5m/Ph-m-Trung-Ngh-a.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153071', N'Trần Viết Danh Thái', N'https://i.ibb.co/5FTK8M5/Danh-Thai.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153072', N'Lê Danh Tịnh', N'https://i.ibb.co/ykT5wQ1/Le-Danh-Tinh.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153087', N'Đoàn Anh Tú', N'https://i.ibb.co/7k9Pf3n/Doan-Anh-Tu.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153096', N'Khương Văn Hùng', N'https://i.ibb.co/DYmxwgS/Kh-ng-V-n-H-ng.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153126', N'Phạm Hoàng Thuỷ Tiên', N'https://i.ibb.co/pPZSSnn/Ph-m-Ho-ng-Thu-Ti-n.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153181', N'Phan Đình Tiến', N'https://i.ibb.co/0X6TfG5/Phan-nh-Ti-n.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153224', N'Lưu Hoàng Hải', N'https://i.ibb.co/tQrdnbg/L-u-Ho-ng-H-i.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153279', N'Giáp Tuấn Hà', N'https://i.ibb.co/mHMMCdH/Giap-Tuan-Ha.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153314', N'Hoàng Trần Đức ', N'https://i.ibb.co/Stp4504/Hoang-Tran-Duc.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153411', N'Nguyễn Tiến Huy', N'https://i.ibb.co/z5gYhMC/Nguyen-Tien-Huy.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153414', N'Ngô Thanh Phương', N'https://i.ibb.co/XYpxwYK/Ng-Thanh-Ph-ng.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153441', N'Lê Quang Huy', N'https://i.ibb.co/pd085mD/Le-Quang-Huy.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153457', N'Hoàng Ngọc Long ', N'https://i.ibb.co/GJPBvFv/Hoang-Ngoc-Long.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153495', N'Nguyễn Duy Hùng', N'https://i.ibb.co/mDc04Bc/Nguy-n-Duy-H-ng.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153541', N'Nguyễn Đức Duy', N'https://i.ibb.co/9NTbXYZ/Nguyen-Duc-Duy.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153553', N'Đào Khánh Lâm', N'https://i.ibb.co/chRS1DL/o-Kh-nh-L-m.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153601', N'Vi Tuấn Vũ', N'https://i.ibb.co/7nrW2q9/Vi-Tu-n-V.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153608', N'Hoàng Tuấn Nghĩa', N'https://i.ibb.co/7gRHRyC/Hoang-Tuan-Nghia.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153669', N'Bùi Đức Minh', N'https://i.ibb.co/Q98PDgD/Bui-Duc-Minh.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153682', N'Đỗ Hoàng Long ', N'https://i.ibb.co/TBvFFBw/Ho-ng-Long.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153688', N'Trần Anh Quân', N'https://i.ibb.co/ckhCHts/Tr-n-Anh-Qu-n.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HE153689', N'Dương Phương Tuấn', N'https://i.ibb.co/sJMk26z/Duong-Phuong-Tuan.png')
GO
INSERT [dbo].[Student] ([StudentCode], [FullName], [Image]) VALUES (N'HS150081', N'Nguyễn Giang Nam', N'https://i.ibb.co/Lx3wD77/Nguyen-Giang-Nam.png')
GO
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (1, N'Java Web Application Development (PRJ301)')
GO
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (2, N'Statistics and Probability (MAS291)')
GO
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (3, N'Elementary Japanese 1-A1.2 (JPD123)')
GO
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (4, N'Internet of Things (IOT102)')
GO
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (5, N'Introduction to Software Engineering (SWE201c)')
GO
ALTER TABLE [dbo].[Attendence]  WITH CHECK ADD  CONSTRAINT [FK_Attendence_Schedule] FOREIGN KEY([ScheduleID])
REFERENCES [dbo].[Schedule] ([ID])
GO
ALTER TABLE [dbo].[Attendence] CHECK CONSTRAINT [FK_Attendence_Schedule]
GO
ALTER TABLE [dbo].[Attendence]  WITH CHECK ADD  CONSTRAINT [FK_Attendence_Student] FOREIGN KEY([StudentCode])
REFERENCES [dbo].[Student] ([StudentCode])
GO
ALTER TABLE [dbo].[Attendence] CHECK CONSTRAINT [FK_Attendence_Student]
GO
ALTER TABLE [dbo].[ClassMember]  WITH CHECK ADD  CONSTRAINT [FK_ClassMember_Class1] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[ClassMember] CHECK CONSTRAINT [FK_ClassMember_Class1]
GO
ALTER TABLE [dbo].[ClassMember]  WITH CHECK ADD  CONSTRAINT [FK_ClassMember_Student] FOREIGN KEY([StudentCode])
REFERENCES [dbo].[Student] ([StudentCode])
GO
ALTER TABLE [dbo].[ClassMember] CHECK CONSTRAINT [FK_ClassMember_Student]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD FOREIGN KEY([SlotID])
REFERENCES [dbo].[Slot] ([SlotID])
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
