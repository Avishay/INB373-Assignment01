USE [n7226837]
GO
/****** Object:  Schema [QUTAD\n7226837]    Script Date: 05/02/2012 15:43:58 ******/
CREATE SCHEMA [QUTAD\n7226837] AUTHORIZATION [QUTAD\n7226837]
GO
/****** Object:  Table [QUTAD\n7226837].[Faculty]    Script Date: 05/02/2012 15:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [QUTAD\n7226837].[Faculty](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_Faculty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [QUTAD\n7226837].[Faculty] ON
INSERT [QUTAD\n7226837].[Faculty] ([id], [name]) VALUES (1, N'Science and Technology')
INSERT [QUTAD\n7226837].[Faculty] ([id], [name]) VALUES (2, N'Business')
INSERT [QUTAD\n7226837].[Faculty] ([id], [name]) VALUES (3, N'Building and Planning')
INSERT [QUTAD\n7226837].[Faculty] ([id], [name]) VALUES (4, N'Creative Design And Performance')
INSERT [QUTAD\n7226837].[Faculty] ([id], [name]) VALUES (5, N'Education')
INSERT [QUTAD\n7226837].[Faculty] ([id], [name]) VALUES (6, N'Engineering')
INSERT [QUTAD\n7226837].[Faculty] ([id], [name]) VALUES (7, N'Health and Community')
INSERT [QUTAD\n7226837].[Faculty] ([id], [name]) VALUES (8, N'Languages')
INSERT [QUTAD\n7226837].[Faculty] ([id], [name]) VALUES (9, N'Law And Justice')
INSERT [QUTAD\n7226837].[Faculty] ([id], [name]) VALUES (10, N'Mathematics')
SET IDENTITY_INSERT [QUTAD\n7226837].[Faculty] OFF
/****** Object:  Table [QUTAD\n7226837].[EnrolmentType]    Script Date: 05/02/2012 15:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [QUTAD\n7226837].[EnrolmentType](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [char](10) NULL,
 CONSTRAINT [PK_EnrolmentType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [QUTAD\n7226837].[EnrolmentType] ON
INSERT [QUTAD\n7226837].[EnrolmentType] ([id], [name]) VALUES (1, N'Full Time ')
INSERT [QUTAD\n7226837].[EnrolmentType] ([id], [name]) VALUES (2, N'Part Time ')
SET IDENTITY_INSERT [QUTAD\n7226837].[EnrolmentType] OFF
/****** Object:  Table [QUTAD\n7226837].[Course]    Script Date: 05/02/2012 15:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [QUTAD\n7226837].[Course](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[faculty_id] [bigint] NULL,
	[course_code] [char](4) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [QUTAD\n7226837].[Course] ON
INSERT [QUTAD\n7226837].[Course] ([id], [name], [faculty_id], [course_code]) VALUES (2, N'Bachelor of Information Technology', 1, N'IT23')
INSERT [QUTAD\n7226837].[Course] ([id], [name], [faculty_id], [course_code]) VALUES (3, N'Bachelor of Science', 1, N'SC11')
INSERT [QUTAD\n7226837].[Course] ([id], [name], [faculty_id], [course_code]) VALUES (4, N'Bachelor of Engineering', 6, N'EN22')
INSERT [QUTAD\n7226837].[Course] ([id], [name], [faculty_id], [course_code]) VALUES (5, N'Bachelor of Games Development', 1, N'GD23')
INSERT [QUTAD\n7226837].[Course] ([id], [name], [faculty_id], [course_code]) VALUES (6, N'Bachelor of Finance', 2, N'FI89')
INSERT [QUTAD\n7226837].[Course] ([id], [name], [faculty_id], [course_code]) VALUES (7, N'Bachelor of Journalism', 4, N'JO01')
INSERT [QUTAD\n7226837].[Course] ([id], [name], [faculty_id], [course_code]) VALUES (8, N'Bachelor of Education', 5, N'ED10')
INSERT [QUTAD\n7226837].[Course] ([id], [name], [faculty_id], [course_code]) VALUES (9, N'Bachelor of Mathematics', 10, N'MA12')
INSERT [QUTAD\n7226837].[Course] ([id], [name], [faculty_id], [course_code]) VALUES (10, N'Bachelor of Law', 9, N'LA12')
INSERT [QUTAD\n7226837].[Course] ([id], [name], [faculty_id], [course_code]) VALUES (11, N'Bachelor of Medicine', 7, NULL)
SET IDENTITY_INSERT [QUTAD\n7226837].[Course] OFF
/****** Object:  Table [QUTAD\n7226837].[UserType]    Script Date: 05/02/2012 15:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [QUTAD\n7226837].[UserType](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [char](10) NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [QUTAD\n7226837].[UserType] ON
INSERT [QUTAD\n7226837].[UserType] ([id], [name]) VALUES (1, N'Student   ')
INSERT [QUTAD\n7226837].[UserType] ([id], [name]) VALUES (2, N'Lecturer  ')
SET IDENTITY_INSERT [QUTAD\n7226837].[UserType] OFF
/****** Object:  Table [QUTAD\n7226837].[User]    Script Date: 05/02/2012 15:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [QUTAD\n7226837].[User](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[number] [char](8) NULL,
	[password] [char](12) NULL,
	[name] [varchar](50) NULL,
	[enrolment_type_id] [bigint] NULL,
	[user_type_id] [bigint] NULL,
	[course_id] [bigint] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [QUTAD\n7226837].[User] ON
INSERT [QUTAD\n7226837].[User] ([id], [number], [password], [name], [enrolment_type_id], [user_type_id], [course_id]) VALUES (1, N'n7226839', N'test1       ', N'Bob Smith', 1, 1, NULL)
INSERT [QUTAD\n7226837].[User] ([id], [number], [password], [name], [enrolment_type_id], [user_type_id], [course_id]) VALUES (2, N'n7223984', N'test1       ', N'Jane Smith', 1, 1, NULL)
INSERT [QUTAD\n7226837].[User] ([id], [number], [password], [name], [enrolment_type_id], [user_type_id], [course_id]) VALUES (3, N'n8387387', N'test1       ', N'Peter Griffin', 1, 1, NULL)
INSERT [QUTAD\n7226837].[User] ([id], [number], [password], [name], [enrolment_type_id], [user_type_id], [course_id]) VALUES (4, N'n8238752', N'test1       ', N'Alan Jones', 1, 1, NULL)
INSERT [QUTAD\n7226837].[User] ([id], [number], [password], [name], [enrolment_type_id], [user_type_id], [course_id]) VALUES (5, N'n8151588', N'test1       ', N'Mark Kelly', 1, 2, NULL)
INSERT [QUTAD\n7226837].[User] ([id], [number], [password], [name], [enrolment_type_id], [user_type_id], [course_id]) VALUES (6, N'n1657157', N'test1       ', N'Homer Simpson', 1, 2, NULL)
INSERT [QUTAD\n7226837].[User] ([id], [number], [password], [name], [enrolment_type_id], [user_type_id], [course_id]) VALUES (7, N'n8127498', N'test1       ', N'Adam Smith', 1, 2, NULL)
SET IDENTITY_INSERT [QUTAD\n7226837].[User] OFF
/****** Object:  Table [QUTAD\n7226837].[Subjects]    Script Date: 05/02/2012 15:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [QUTAD\n7226837].[Subjects](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[subject_code] [char](6) NULL,
	[course_id] [bigint] NULL,
	[unit_coordinator_id] [bigint] NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [QUTAD\n7226837].[Subjects] ON
INSERT [QUTAD\n7226837].[Subjects] ([id], [name], [subject_code], [course_id], [unit_coordinator_id]) VALUES (1, N'Web Application Development', N'INB373', 1, 6)
INSERT [QUTAD\n7226837].[Subjects] ([id], [name], [subject_code], [course_id], [unit_coordinator_id]) VALUES (2, N'Impact of IT', N'INB101', 1, 6)
INSERT [QUTAD\n7226837].[Subjects] ([id], [name], [subject_code], [course_id], [unit_coordinator_id]) VALUES (3, N'Capstone Project', N'INB302', 1, 6)
INSERT [QUTAD\n7226837].[Subjects] ([id], [name], [subject_code], [course_id], [unit_coordinator_id]) VALUES (4, N'Introduction to Anatomy', N'MED101', 11, 7)
INSERT [QUTAD\n7226837].[Subjects] ([id], [name], [subject_code], [course_id], [unit_coordinator_id]) VALUES (5, N'Introduction to Bioethics', N'MED108', 11, 7)
INSERT [QUTAD\n7226837].[Subjects] ([id], [name], [subject_code], [course_id], [unit_coordinator_id]) VALUES (6, N'Chemistry', N'MED103', 11, 7)
SET IDENTITY_INSERT [QUTAD\n7226837].[Subjects] OFF
/****** Object:  Table [QUTAD\n7226837].[SubjectEnrolments]    Script Date: 05/02/2012 15:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [QUTAD\n7226837].[SubjectEnrolments](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[subject_id] [bigint] NULL,
	[user_id] [bigint] NULL,
 CONSTRAINT [PK_SubjectEnrolments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [QUTAD\n7226837].[SubjectEnrolments] ON
INSERT [QUTAD\n7226837].[SubjectEnrolments] ([id], [subject_id], [user_id]) VALUES (1, 1, 1)
INSERT [QUTAD\n7226837].[SubjectEnrolments] ([id], [subject_id], [user_id]) VALUES (2, 1, 2)
INSERT [QUTAD\n7226837].[SubjectEnrolments] ([id], [subject_id], [user_id]) VALUES (3, 1, 3)
INSERT [QUTAD\n7226837].[SubjectEnrolments] ([id], [subject_id], [user_id]) VALUES (4, 1, 4)
INSERT [QUTAD\n7226837].[SubjectEnrolments] ([id], [subject_id], [user_id]) VALUES (5, 2, 1)
INSERT [QUTAD\n7226837].[SubjectEnrolments] ([id], [subject_id], [user_id]) VALUES (6, 2, 2)
INSERT [QUTAD\n7226837].[SubjectEnrolments] ([id], [subject_id], [user_id]) VALUES (7, 2, 3)
INSERT [QUTAD\n7226837].[SubjectEnrolments] ([id], [subject_id], [user_id]) VALUES (8, 2, 4)
SET IDENTITY_INSERT [QUTAD\n7226837].[SubjectEnrolments] OFF
/****** Object:  ForeignKey [FK_Course_Course]    Script Date: 05/02/2012 15:43:59 ******/
ALTER TABLE [QUTAD\n7226837].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Course] FOREIGN KEY([id])
REFERENCES [QUTAD\n7226837].[Course] ([id])
GO
ALTER TABLE [QUTAD\n7226837].[Course] CHECK CONSTRAINT [FK_Course_Course]
GO
/****** Object:  ForeignKey [FK_SubjectEnrolments_Subjects]    Script Date: 05/02/2012 15:43:59 ******/
ALTER TABLE [QUTAD\n7226837].[SubjectEnrolments]  WITH CHECK ADD  CONSTRAINT [FK_SubjectEnrolments_Subjects] FOREIGN KEY([subject_id])
REFERENCES [QUTAD\n7226837].[Subjects] ([id])
GO
ALTER TABLE [QUTAD\n7226837].[SubjectEnrolments] CHECK CONSTRAINT [FK_SubjectEnrolments_Subjects]
GO
/****** Object:  ForeignKey [FK_SubjectEnrolments_User]    Script Date: 05/02/2012 15:43:59 ******/
ALTER TABLE [QUTAD\n7226837].[SubjectEnrolments]  WITH CHECK ADD  CONSTRAINT [FK_SubjectEnrolments_User] FOREIGN KEY([user_id])
REFERENCES [QUTAD\n7226837].[User] ([id])
GO
ALTER TABLE [QUTAD\n7226837].[SubjectEnrolments] CHECK CONSTRAINT [FK_SubjectEnrolments_User]
GO
/****** Object:  ForeignKey [FK_Subjects_User]    Script Date: 05/02/2012 15:43:59 ******/
ALTER TABLE [QUTAD\n7226837].[Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Subjects_User] FOREIGN KEY([unit_coordinator_id])
REFERENCES [QUTAD\n7226837].[User] ([id])
GO
ALTER TABLE [QUTAD\n7226837].[Subjects] CHECK CONSTRAINT [FK_Subjects_User]
GO
/****** Object:  ForeignKey [FK_User_EnrolmentType]    Script Date: 05/02/2012 15:43:59 ******/
ALTER TABLE [QUTAD\n7226837].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_EnrolmentType] FOREIGN KEY([enrolment_type_id])
REFERENCES [QUTAD\n7226837].[EnrolmentType] ([id])
GO
ALTER TABLE [QUTAD\n7226837].[User] CHECK CONSTRAINT [FK_User_EnrolmentType]
GO
/****** Object:  ForeignKey [FK_User_UserType]    Script Date: 05/02/2012 15:43:59 ******/
ALTER TABLE [QUTAD\n7226837].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserType] FOREIGN KEY([user_type_id])
REFERENCES [QUTAD\n7226837].[UserType] ([id])
GO
ALTER TABLE [QUTAD\n7226837].[User] CHECK CONSTRAINT [FK_User_UserType]
GO
