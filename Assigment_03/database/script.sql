USE [Employee]
GO
/****** Object:  Table [dbo].[Employeetbl]    Script Date: 10/18/2020 9:50:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employeetbl](
	[EmpID] [varchar](10) NOT NULL,
	[Fullname] [varchar](30) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Email] [varchar](30) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[isDelete] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/18/2020 9:50:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[username] [varchar](20) NOT NULL,
	[password] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'001', N'Bang', N'0377412342', N'nhan@gmail.com', N'Binh Chanh', CAST(N'2000-09-28' AS Date), 0)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'002', N'Binh', N'32112321', N'binh@gmail.com', N'binh thanh', CAST(N'1999-12-12' AS Date), 0)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'003', N'Khoi', N'232132321321', N'khoi@gmail.com', N'daklak', CAST(N'2000-09-28' AS Date), 0)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'004', N'Bang', N'2321321321     ', N'bang@gmail.com', N'Ben tre', CAST(N'2000-03-20' AS Date), 0)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'005a', N'Truc Ly', N'2132132132', N'ly@gmail.com', N'Binh Chanh', CAST(N'2000-01-11' AS Date), 0)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'213', N'Son', N'123123213', N'huynh@gmail.com', N'Binh Duong', CAST(N'2000-09-12' AS Date), 0)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'ewqwe', N'khoi', N'213123', N'khoi@gmail.com', N'fds', CAST(N'2000-02-20' AS Date), 0)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'E123', N'ewq', N'20202023', N'ewqewq', N'1ewqdsa', CAST(N'2000-02-21' AS Date), 0)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'1231', N'ewq', N'1232131', N'ewqewq', N'dsad', CAST(N'2000-02-21' AS Date), 0)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'dsa', N'thanh', N'132', N'thanh@gmail.com', N'ewq', CAST(N'1231-01-01' AS Date), 0)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'Emp123', N'Khoi', N'1234567', N'khoi@gmail.com', N'dfsada', CAST(N'2000-02-20' AS Date), 0)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'ID32112', N'nhan', N'019123', N'nahn@gmail.com', N'adsaadsa', CAST(N'2000-09-12' AS Date), 1)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'ID32114', N'Khoi', N'123123123', N'Huynh@gmail.com', N'ssss', CAST(N'2000-02-21' AS Date), 1)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'ID32115', N'Khanh', N'123123', N'Tin@gmail.com', N'sss', CAST(N'2000-02-20' AS Date), 1)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'321', N'Nhan', N'12345', N'huynh@gmail.com', N'ewqewq', CAST(N'2000-02-20' AS Date), 0)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'ID123123', N'Huynh', N'123123123', N'Huynh123@gmail.com', N'wwww', CAST(N'2000-02-20' AS Date), 0)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'ewqew', N'nhan', N'0123', N'nhan@gmail.com', N'ewqewq', CAST(N'1990-12-01' AS Date), 0)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'ID12312', N'Khanh', N'123123', N'Khanh@gmail.com', N'3ewqeew', CAST(N'2000-12-02' AS Date), 0)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'ID123123', N'Khoi', N'123123', N'Khoi@gmail.com', N'sdss', CAST(N'2000-02-20' AS Date), 0)
INSERT [dbo].[Employeetbl] ([EmpID], [Fullname], [Phone], [Email], [Address], [DateOfBirth], [isDelete]) VALUES (N'ID32113', N'Bang', N'21321', N'khoi@gmail.com', N'ssss', CAST(N'2000-02-20' AS Date), 1)
INSERT [dbo].[Users] ([username], [password]) VALUES (N'nhan', N'123')
INSERT [dbo].[Users] ([username], [password]) VALUES (N'admin', N'123')
