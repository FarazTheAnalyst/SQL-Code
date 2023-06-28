
USE [SampleCompany_DB]
GO
/****** Object:  Table [dbo].[department]    Script Date: 6/21/2023 12:30:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[DEPT_ID] [varchar](50) NULL,
	[DEPT_NAME] [varchar](50) NOT NULL,
	[DEPT_LOCATION] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMP_INFO]    Script Date: 6/21/2023 12:30:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMP_INFO](
	[ID] [int] NOT NULL,
	[NAME] [varchar](50) NOT NULL,
	[DEPID] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 6/21/2023 12:30:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[EMP_ID] [int] NOT NULL,
	[EMP_NAME] [varchar](50) NOT NULL,
	[EMP_SALARY] [decimal](10, 2) NOT NULL,
	[EMP_DEPID] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[EMP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee_info]    Script Date: 6/21/2023 12:30:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee_info](
	[empId] [int] NOT NULL,
	[empName] [varchar](20) NOT NULL,
	[empSalary] [decimal](10, 2) NULL,
	[job] [varchar](20) NULL,
	[phone] [varchar](30) NULL,
	[depId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[empId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_user_login]    Script Date: 6/21/2023 12:30:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user_login](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[password] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[department] ([DEPT_ID], [DEPT_NAME], [DEPT_LOCATION]) VALUES (N'D1', N'DEVELOPMENT', N'CALIFORNIA')
INSERT [dbo].[department] ([DEPT_ID], [DEPT_NAME], [DEPT_LOCATION]) VALUES (N'D2', N'MARKETING', N'FAISALABAD')
INSERT [dbo].[department] ([DEPT_ID], [DEPT_NAME], [DEPT_LOCATION]) VALUES (N'D3', N'ACCOUNTS', N'NEW YORK')
INSERT [dbo].[department] ([DEPT_ID], [DEPT_NAME], [DEPT_LOCATION]) VALUES (N'D4', N'MANAGMENT', N'FAISALABAD')
GO
INSERT [dbo].[EMP_INFO] ([ID], [NAME], [DEPID]) VALUES (1, N'STEVE', N'10')
INSERT [dbo].[EMP_INFO] ([ID], [NAME], [DEPID]) VALUES (2, N'JOHN', N'20')
INSERT [dbo].[EMP_INFO] ([ID], [NAME], [DEPID]) VALUES (3, N'MIKE', N'20')
INSERT [dbo].[EMP_INFO] ([ID], [NAME], [DEPID]) VALUES (4, N'WARD', N'30')
INSERT [dbo].[EMP_INFO] ([ID], [NAME], [DEPID]) VALUES (5, N'FARAZ', N'')
GO
INSERT [dbo].[employee] ([EMP_ID], [EMP_NAME], [EMP_SALARY], [EMP_DEPID]) VALUES (1111, N'STEVE', CAST(35000.00 AS Decimal(10, 2)), N'D1')
INSERT [dbo].[employee] ([EMP_ID], [EMP_NAME], [EMP_SALARY], [EMP_DEPID]) VALUES (1112, N'ADAM', CAST(28000.00 AS Decimal(10, 2)), N'D2')
INSERT [dbo].[employee] ([EMP_ID], [EMP_NAME], [EMP_SALARY], [EMP_DEPID]) VALUES (1113, N'JOHN', CAST(50000.00 AS Decimal(10, 2)), N'D3')
INSERT [dbo].[employee] ([EMP_ID], [EMP_NAME], [EMP_SALARY], [EMP_DEPID]) VALUES (1114, N'MIKE', CAST(45000.00 AS Decimal(10, 2)), N'D2')
INSERT [dbo].[employee] ([EMP_ID], [EMP_NAME], [EMP_SALARY], [EMP_DEPID]) VALUES (1115, N'PETER', CAST(60000.00 AS Decimal(10, 2)), N'D5')
GO
INSERT [dbo].[employee_info] ([empId], [empName], [empSalary], [job], [phone], [depId]) VALUES (1, N'MIKE', CAST(45000.00 AS Decimal(10, 2)), N'DESIGNER', N'7777777', 10)
INSERT [dbo].[employee_info] ([empId], [empName], [empSalary], [job], [phone], [depId]) VALUES (2, N'ADAM', CAST(30000.00 AS Decimal(10, 2)), N'DEVELOPER', N'95759399', 20)
INSERT [dbo].[employee_info] ([empId], [empName], [empSalary], [job], [phone], [depId]) VALUES (4, N'STEVE', CAST(12000.00 AS Decimal(10, 2)), N'TESTER', N'835829945', 10)
INSERT [dbo].[employee_info] ([empId], [empName], [empSalary], [job], [phone], [depId]) VALUES (6, N'BRIAN', CAST(37000.00 AS Decimal(10, 2)), N'ACCOUNTANT', N'83625742', 20)
INSERT [dbo].[employee_info] ([empId], [empName], [empSalary], [job], [phone], [depId]) VALUES (7, N'ROSS', CAST(15000.00 AS Decimal(10, 2)), N'ADMIN', N'84957057', 30)
GO
SET IDENTITY_INSERT [dbo].[tbl_user_login] ON 

INSERT [dbo].[tbl_user_login] ([user_id], [username], [email], [password]) VALUES (1, N'ironman', N'tony@stark.com', N'tony123')
INSERT [dbo].[tbl_user_login] ([user_id], [username], [email], [password]) VALUES (2, N'captain', N'steve@captain.com', N'steve456')
INSERT [dbo].[tbl_user_login] ([user_id], [username], [email], [password]) VALUES (3, N'spidy', N'peter@parker.com', N'peter123')
INSERT [dbo].[tbl_user_login] ([user_id], [username], [email], [password]) VALUES (4, N'wonder', N'wonder@womam.com', N'wonder123')
SET IDENTITY_INSERT [dbo].[tbl_user_login] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbl_user__AB6E61646593518A]    Script Date: 6/21/2023 12:30:09 AM ******/
ALTER TABLE [dbo].[tbl_user_login] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbl_user__F3DBC572B001710E]    Script Date: 6/21/2023 12:30:09 AM ******/
ALTER TABLE [dbo].[tbl_user_login] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

