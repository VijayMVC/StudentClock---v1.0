USE [master]
GO
/****** Object:  Database [SchoolData]    Script Date: 11/10/2015 4:13:05 PM ******/
CREATE DATABASE [SchoolData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SchoolData', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\SchoolData.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SchoolData_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\SchoolData_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SchoolData] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SchoolData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SchoolData] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SchoolData] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SchoolData] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SchoolData] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SchoolData] SET ARITHABORT OFF 
GO
ALTER DATABASE [SchoolData] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SchoolData] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SchoolData] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SchoolData] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SchoolData] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SchoolData] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SchoolData] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SchoolData] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SchoolData] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SchoolData] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SchoolData] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SchoolData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SchoolData] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SchoolData] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SchoolData] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SchoolData] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SchoolData] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SchoolData] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SchoolData] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SchoolData] SET  MULTI_USER 
GO
ALTER DATABASE [SchoolData] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SchoolData] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SchoolData] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SchoolData] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SchoolData]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 11/10/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NULL,
	[InstructorID] [int] NULL,
	[Username] [nchar](30) NULL,
	[Password] [nvarchar](50) NULL,
	[AccessLevel] [int] NULL,
	[Balance] [decimal](18, 0) NOT NULL,
	[DueDate] [datetime] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Class]    Script Date: 11/10/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[StudentID] [int] NULL,
	[ClassID] [int] NOT NULL,
	[InstructorID] [int] NULL,
	[CourseID] [int] NULL,
	[Day] [nchar](10) NULL,
	[Start_Time] [time](0) NULL,
	[End_Time] [time](0) NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clock]    Script Date: 11/10/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clock](
	[ClockID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[ClassID] [int] NULL,
	[Clock] [datetime] NULL,
 CONSTRAINT [PK_Clock] PRIMARY KEY CLUSTERED 
(
	[ClockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Courses]    Script Date: 11/10/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[ClassID] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[AwardedCredit] [float] NULL,
	[BuildingNumber] [int] NULL,
	[RoomNumber] [int] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Grades]    Script Date: 11/10/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grades](
	[AssignmentID] [int] NOT NULL,
	[ClassID] [int] NULL,
	[StudentID] [int] NULL,
	[Grade] [float] NULL,
	[Type] [nchar](10) NULL,
 CONSTRAINT [PK_Grades] PRIMARY KEY CLUSTERED 
(
	[AssignmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Instructors]    Script Date: 11/10/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructors](
	[InstructorID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nchar](20) NULL,
	[LastName] [nchar](20) NULL,
	[ClassID] [int] NOT NULL,
	[Address] [nvarchar](50) NULL,
	[ZipCode] [int] NULL,
	[StateCode] [nchar](2) NULL,
	[AccessLevel] [int] NULL,
	[AccountID] [int] NULL,
 CONSTRAINT [PK_Instructors] PRIMARY KEY CLUSTERED 
(
	[InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Registration]    Script Date: 11/10/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[StudentID] [int] NOT NULL,
	[Start_Date] [date] NULL,
	[Estimated_Finish_Date] [date] NULL,
	[Credits] [decimal](18, 0) NULL,
	[RegistrationID] [int] NOT NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[RegistrationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[States]    Script Date: 11/10/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[States](
	[StateCode] [char](2) NOT NULL,
	[StateName] [nchar](100) NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[StateCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/10/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [nchar](30) NULL,
	[Last_Name] [nchar](30) NULL,
	[Address] [nvarchar](50) NULL,
	[ZipCode] [int] NULL,
	[StateCode] [nchar](2) NULL,
	[AccountID] [int] NULL,
	[Photo] [nvarchar](100) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ZIPCodes]    Script Date: 11/10/2015 4:13:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZIPCodes](
	[ZipCode] [char](5) NOT NULL,
	[City] [varchar](35) NULL,
	[StateCode] [char](2) NULL,
 CONSTRAINT [PK_ZIPCodes] PRIMARY KEY CLUSTERED 
(
	[ZipCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([AccountID], [StudentID], [InstructorID], [Username], [Password], [AccessLevel], [Balance], [DueDate]) VALUES (1, 1, 1, N'CoreySanders                  ', N'one4all', 3, CAST(0 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Accounts] ([AccountID], [StudentID], [InstructorID], [Username], [Password], [AccessLevel], [Balance], [DueDate]) VALUES (2, 1, 1, N'ArielSanders                  ', N'omega', 2, CAST(0 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Accounts] ([AccountID], [StudentID], [InstructorID], [Username], [Password], [AccessLevel], [Balance], [DueDate]) VALUES (3, NULL, 3, N'JohnMc                        ', N'omega', 2, CAST(0 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Accounts] ([AccountID], [StudentID], [InstructorID], [Username], [Password], [AccessLevel], [Balance], [DueDate]) VALUES (7, NULL, NULL, N'Corey                         ', N'one4all', 3, CAST(0 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Accounts] ([AccountID], [StudentID], [InstructorID], [Username], [Password], [AccessLevel], [Balance], [DueDate]) VALUES (9, 1, 7, N'                              ', N'', 2, CAST(0 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Accounts] ([AccountID], [StudentID], [InstructorID], [Username], [Password], [AccessLevel], [Balance], [DueDate]) VALUES (10, NULL, NULL, N'99                            ', N'99', 0, CAST(0 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Accounts] ([AccountID], [StudentID], [InstructorID], [Username], [Password], [AccessLevel], [Balance], [DueDate]) VALUES (11, 3, 3, N'High                          ', N'wee', 2, CAST(0 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Accounts] ([AccountID], [StudentID], [InstructorID], [Username], [Password], [AccessLevel], [Balance], [DueDate]) VALUES (12, NULL, NULL, N'DavidEverton                  ', N'password', 3, CAST(0 AS Decimal(18, 0)), NULL)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
INSERT [dbo].[Class] ([StudentID], [ClassID], [InstructorID], [CourseID], [Day], [Start_Time], [End_Time]) VALUES (1, 1, 1, 1, N'Sunday    ', CAST(N'12:00:00' AS Time), CAST(N'13:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[Clock] ON 

INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (1, 1, 1, CAST(N'2015-09-27 18:46:42.927' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (5, 3, 1, CAST(N'2015-09-27 19:03:06.347' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (6, 2, 1, CAST(N'2015-09-27 19:03:33.427' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (8, 3, 1, CAST(N'2015-09-27 19:04:54.763' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (9, 1, 1, CAST(N'2015-09-27 20:03:28.327' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (10, 1, 1, CAST(N'2015-09-27 20:05:19.483' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (11, 3, 1, CAST(N'2015-09-27 20:25:27.933' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (12, 1, 3, CAST(N'2015-09-27 22:44:49.757' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (13, 1, 3, CAST(N'2015-09-27 22:47:36.320' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (14, 1, 1, CAST(N'2015-09-28 19:38:39.020' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (15, 1, 1, CAST(N'2015-09-28 19:38:51.693' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (16, 1, 5, CAST(N'2015-09-28 21:40:53.573' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (17, 1, 1, CAST(N'2015-09-28 21:52:45.660' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (18, 1, 1, CAST(N'2015-09-28 22:14:05.540' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (19, 1, 1, CAST(N'2015-09-28 23:55:47.423' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (20, 1, 1, CAST(N'2015-09-29 11:33:26.497' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (21, 1, 1, CAST(N'2015-10-30 14:32:19.787' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (22, 1, 3, CAST(N'2015-11-10 15:35:40.057' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (23, 2, 1, CAST(N'2015-11-10 15:39:47.007' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (24, 1, 3, CAST(N'2015-11-10 16:04:00.903' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (25, 1, 6, CAST(N'2015-11-10 16:04:16.967' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (26, 5, 6, CAST(N'2015-11-10 16:04:55.620' AS DateTime))
INSERT [dbo].[Clock] ([ClockID], [StudentID], [ClassID], [Clock]) VALUES (27, 1, 4, CAST(N'2015-11-10 16:05:10.937' AS DateTime))
SET IDENTITY_INSERT [dbo].[Clock] OFF
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseID], [ClassID], [Description], [AwardedCredit], [BuildingNumber], [RoomNumber]) VALUES (1, 1, N'Test Course', 1, 3, 2)
INSERT [dbo].[Courses] ([CourseID], [ClassID], [Description], [AwardedCredit], [BuildingNumber], [RoomNumber]) VALUES (2, 2, N'Better Test', 1, 3, 4)
INSERT [dbo].[Courses] ([CourseID], [ClassID], [Description], [AwardedCredit], [BuildingNumber], [RoomNumber]) VALUES (3, 3, N'Basic Java', 1, 3, 5)
INSERT [dbo].[Courses] ([CourseID], [ClassID], [Description], [AwardedCredit], [BuildingNumber], [RoomNumber]) VALUES (4, 4, N'Basic C#', 1, 3, 6)
SET IDENTITY_INSERT [dbo].[Courses] OFF
SET IDENTITY_INSERT [dbo].[Instructors] ON 

INSERT [dbo].[Instructors] ([InstructorID], [FirstName], [LastName], [ClassID], [Address], [ZipCode], [StateCode], [AccessLevel], [AccountID]) VALUES (1, N'Corey               ', N'Sanders             ', 1, N'525 Park Blvd', 84401, N'UT', 3, 1)
INSERT [dbo].[Instructors] ([InstructorID], [FirstName], [LastName], [ClassID], [Address], [ZipCode], [StateCode], [AccessLevel], [AccountID]) VALUES (2, N'Testz               ', N'zzzz                ', 1, N'Ever Street', 84401, N'UT', 2, NULL)
INSERT [dbo].[Instructors] ([InstructorID], [FirstName], [LastName], [ClassID], [Address], [ZipCode], [StateCode], [AccessLevel], [AccountID]) VALUES (3, N'John                ', N'Rawrz               ', 1, N'432 Reet Street', 84401, N'UT', 1, NULL)
INSERT [dbo].[Instructors] ([InstructorID], [FirstName], [LastName], [ClassID], [Address], [ZipCode], [StateCode], [AccessLevel], [AccountID]) VALUES (4, N'Corey               ', N'Best                ', 1, N'544 Reet Leet', 84401, N'UT', 2, NULL)
INSERT [dbo].[Instructors] ([InstructorID], [FirstName], [LastName], [ClassID], [Address], [ZipCode], [StateCode], [AccessLevel], [AccountID]) VALUES (5, N'testz               ', N'test                ', 1, N'test', 45353, N'AL', 1, NULL)
INSERT [dbo].[Instructors] ([InstructorID], [FirstName], [LastName], [ClassID], [Address], [ZipCode], [StateCode], [AccessLevel], [AccountID]) VALUES (6, N'Ariel               ', N'Sanders             ', 1, N'525 Park Blvd', 84401, N'UT', 3, NULL)
INSERT [dbo].[Instructors] ([InstructorID], [FirstName], [LastName], [ClassID], [Address], [ZipCode], [StateCode], [AccessLevel], [AccountID]) VALUES (7, N'9                   ', N'9                   ', 0, N'9', 9, N'AL', 1, NULL)
SET IDENTITY_INSERT [dbo].[Instructors] OFF
INSERT [dbo].[Registration] ([StudentID], [Start_Date], [Estimated_Finish_Date], [Credits], [RegistrationID]) VALUES (7, CAST(N'2015-05-14' AS Date), CAST(N'2016-05-14' AS Date), CAST(0 AS Decimal(18, 0)), 0)
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'AK', N'Alaska                                                                                              ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'AL', N'Alabama                                                                                             ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'AR', N'Arkansas                                                                                            ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'AZ', N'Arizona                                                                                             ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'CA', N'California                                                                                          ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'CO', N'Colorado                                                                                            ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'CT', N'Connecticut                                                                                         ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'DC', N'District of Columbia                                                                                ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'DE', N'Delaware                                                                                            ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'FL', N'Florida                                                                                             ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'GA', N'Georgia                                                                                             ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'HI', N'Hawaii                                                                                              ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'IA', N'Iowa                                                                                                ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'ID', N'Idaho                                                                                               ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'IL', N'Illinois                                                                                            ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'IN', N'Indiana                                                                                             ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'KS', N'Kansas                                                                                              ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'KY', N'Kentucky                                                                                            ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'LA', N'Lousiana                                                                                            ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'MA', N'Massachusetts                                                                                       ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'MD', N'Maryland                                                                                            ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'ME', N'Maine                                                                                               ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'MI', N'Michigan                                                                                            ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'MN', N'Minnesota                                                                                           ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'MO', N'Missouri                                                                                            ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'MS', N'Mississippi                                                                                         ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'MT', N'Montana                                                                                             ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'NC', N'North Carolina                                                                                      ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'ND', N'North Dakota                                                                                        ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'NE', N'Nebraska                                                                                            ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'NH', N'New Hampshire                                                                                       ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'NJ', N'New Jersey                                                                                          ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'NM', N'New Mexico                                                                                          ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'NV', N'Nevada                                                                                              ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'NY', N'New York                                                                                            ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'OH', N'Ohio                                                                                                ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'OK', N'Oklahoma                                                                                            ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'OR', N'Oregon                                                                                              ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'PA', N'Pennsylvania                                                                                        ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'RI', N'Rhode Island                                                                                        ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'SC', N'South Carolina                                                                                      ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'SD', N'South Dakota                                                                                        ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'TN', N'Tennessee                                                                                           ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'TX', N'Texas                                                                                               ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'UT', N'Utah                                                                                                ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'VA', N'Virginia                                                                                            ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'VI', N'Virgin Islands                                                                                      ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'VT', N'Vermont                                                                                             ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'WA', N'Washington                                                                                          ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'WI', N'Wisconsin                                                                                           ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'WV', N'West Virigina                                                                                       ')
INSERT [dbo].[States] ([StateCode], [StateName]) VALUES (N'WY', N'Wyoming                                                                                             ')
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentID], [First_Name], [Last_Name], [Address], [ZipCode], [StateCode], [AccountID], [Photo]) VALUES (1, N'Corey                         ', N'Sanders                       ', N'525 Park Blvd', 84401, N'UT', NULL, N'http://i882.photobucket.com/albums/ac22/CoreySanders/IMAG0102-579x1024_zpsfllxs3mt.jpg')
INSERT [dbo].[Student] ([StudentID], [First_Name], [Last_Name], [Address], [ZipCode], [StateCode], [AccountID], [Photo]) VALUES (2, N'Johnxx                        ', N'Anderson                      ', N'219 Rockwood Drive', 53005, N'WA', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [First_Name], [Last_Name], [Address], [ZipCode], [StateCode], [AccountID], [Photo]) VALUES (3, N'John                          ', N'McJohn                        ', N'525 Park Blvd', 65463, N'AL', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [First_Name], [Last_Name], [Address], [ZipCode], [StateCode], [AccountID], [Photo]) VALUES (4, N'Ariel                         ', N'Sanders                       ', N'2271 W 1800 N', 84404, N'UT', NULL, N'http://i882.photobucket.com/albums/ac22/CoreySanders/IMAG0045_zpstsovtqsv.jpg')
INSERT [dbo].[Student] ([StudentID], [First_Name], [Last_Name], [Address], [ZipCode], [StateCode], [AccountID], [Photo]) VALUES (5, N'Laura                         ', N'McJohnny                      ', N'1337 Leet Street', 84401, N'UT', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [First_Name], [Last_Name], [Address], [ZipCode], [StateCode], [AccountID], [Photo]) VALUES (6, N'Test                          ', N'Test                          ', N'432 Reet Leet', 54365, N'DC', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [First_Name], [Last_Name], [Address], [ZipCode], [StateCode], [AccountID], [Photo]) VALUES (7, N'test                          ', N'test                          ', N'test', 43532, N'AL', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [First_Name], [Last_Name], [Address], [ZipCode], [StateCode], [AccountID], [Photo]) VALUES (14, N'Steven                        ', N'Sanders                       ', N'137 Random', 85455, N'AL', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [First_Name], [Last_Name], [Address], [ZipCode], [StateCode], [AccountID], [Photo]) VALUES (15, N'trwe                          ', N'gfdg                          ', N'fdsg', 45355, N'AL', NULL, NULL)
INSERT [dbo].[Student] ([StudentID], [First_Name], [Last_Name], [Address], [ZipCode], [StateCode], [AccountID], [Photo]) VALUES (16, N'John                          ', N'John                          ', N'324 Rawr Street', 84401, N'AL', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Student] OFF
INSERT [dbo].[ZIPCodes] ([ZipCode], [City], [StateCode]) VALUES (N'84015', N'Clearfield', N'UT')
INSERT [dbo].[ZIPCodes] ([ZipCode], [City], [StateCode]) VALUES (N'84067', N'Roy', N'UT')
INSERT [dbo].[ZIPCodes] ([ZipCode], [City], [StateCode]) VALUES (N'84401', N'Ogden', N'UT')
INSERT [dbo].[ZIPCodes] ([ZipCode], [City], [StateCode]) VALUES (N'84402', N'Ogden', N'UT')
INSERT [dbo].[ZIPCodes] ([ZipCode], [City], [StateCode]) VALUES (N'84404', N'Ogden', N'UT')
/****** Object:  Index [FK_InstructorID]    Script Date: 11/10/2015 4:13:05 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [FK_InstructorID] ON [dbo].[Class]
(
	[InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FK_StudentID]    Script Date: 11/10/2015 4:13:05 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [FK_StudentID] ON [dbo].[Class]
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_CourseID]    Script Date: 11/10/2015 4:13:05 PM ******/
CREATE NONCLUSTERED INDEX [PK_CourseID] ON [dbo].[Class]
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FK_Clock_StudentID]    Script Date: 11/10/2015 4:13:05 PM ******/
CREATE NONCLUSTERED INDEX [FK_Clock_StudentID] ON [dbo].[Clock]
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_Course_ClassID]    Script Date: 11/10/2015 4:13:05 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [PK_Course_ClassID] ON [dbo].[Courses]
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_ClassID]    Script Date: 11/10/2015 4:13:05 PM ******/
CREATE NONCLUSTERED INDEX [PK_ClassID] ON [dbo].[Instructors]
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Index_ZIPCodes_City]    Script Date: 11/10/2015 4:13:05 PM ******/
CREATE NONCLUSTERED INDEX [Index_ZIPCodes_City] ON [dbo].[ZIPCodes]
(
	[City] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Index_ZIPCodes_State]    Script Date: 11/10/2015 4:13:05 PM ******/
CREATE NONCLUSTERED INDEX [Index_ZIPCodes_State] ON [dbo].[ZIPCodes]
(
	[StateCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Index_ZIPCodes_ZipCode]    Script Date: 11/10/2015 4:13:05 PM ******/
CREATE NONCLUSTERED INDEX [Index_ZIPCodes_ZipCode] ON [dbo].[ZIPCodes]
(
	[ZipCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Student]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Courses]
GO
ALTER TABLE [dbo].[Class]  WITH NOCHECK ADD  CONSTRAINT [FK_Class_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Class] NOCHECK CONSTRAINT [FK_Class_Student]
GO
ALTER TABLE [dbo].[Clock]  WITH NOCHECK ADD  CONSTRAINT [FK_Clock_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Clock] NOCHECK CONSTRAINT [FK_Clock_Class]
GO
ALTER TABLE [dbo].[Grades]  WITH CHECK ADD  CONSTRAINT [FK_Grades_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Courses] ([ClassID])
GO
ALTER TABLE [dbo].[Grades] CHECK CONSTRAINT [FK_Grades_Class]
GO
ALTER TABLE [dbo].[Grades]  WITH CHECK ADD  CONSTRAINT [FK_Grades_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Grades] CHECK CONSTRAINT [FK_Grades_Student]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Student]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Accounts]
GO
ALTER TABLE [dbo].[ZIPCodes]  WITH CHECK ADD  CONSTRAINT [FK_ZIPCodes_States] FOREIGN KEY([StateCode])
REFERENCES [dbo].[States] ([StateCode])
GO
ALTER TABLE [dbo].[ZIPCodes] CHECK CONSTRAINT [FK_ZIPCodes_States]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'(Sunday - 1, Monday - 2, ect.)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table that holds student information.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student'
GO
USE [master]
GO
ALTER DATABASE [SchoolData] SET  READ_WRITE 
GO
