USE [lab_ERP]
GO
/****** Object:  Table [dbo].[T_Weekly]    Script Date: 09/09/2019 12:05:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Weekly](
	[WID] [int] IDENTITY(1,1) NOT NULL,
	[UID] [int] NULL,
	[This] [text] NULL,
	[Next] [text] NULL,
	[Note] [text] NULL,
	[DateTime] [datetime] NULL,
 CONSTRAINT [PK_T_Weekly] PRIMARY KEY CLUSTERED 
(
	[WID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_UserInfo]    Script Date: 09/09/2019 12:05:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_UserInfo](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[GID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Sex] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
	[Post] [varchar](50) NULL,
	[CIns] [bit] NULL,
	[CDel] [bit] NULL,
	[CUpd] [bit] NULL,
	[UIns] [bit] NULL,
	[UDel] [bit] NULL,
	[UUpd] [bit] NULL,
 CONSTRAINT [PK_T_UserInfo] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Group]    Script Date: 09/09/2019 12:05:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Group](
	[GID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_T_Permission] PRIMARY KEY CLUSTERED 
(
	[GID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Equipment]    Script Date: 09/09/2019 12:05:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Equipment](
	[EID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[CID] [int] NULL,
	[Model] [varchar](50) NULL,
	[SN] [varchar](50) NULL,
	[UID] [int] NULL,
	[UseDuration] [varchar](50) NULL,
	[HardwareOperate] [varchar](50) NULL,
	[SoftwareOperate] [varchar](50) NULL,
	[FaultOperate] [varchar](50) NULL,
	[defectCondition] [varchar](50) NULL,
	[UseSuggestions] [varchar](50) NULL,
	[Other] [varchar](50) NULL,
 CONSTRAINT [PK_T_Equipment] PRIMARY KEY CLUSTERED 
(
	[EID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Customer]    Script Date: 09/09/2019 12:05:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Customer](
	[CID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
 CONSTRAINT [PK_T_Customer] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_BusinessTrip]    Script Date: 09/09/2019 12:05:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_BusinessTrip](
	[BID] [int] IDENTITY(1,1) NOT NULL,
	[UID] [int] NULL,
	[CID] [int] NOT NULL,
	[Date] [datetime] NULL,
	[BeginDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Place] [varchar](50) NULL,
	[Tool] [varchar](50) NULL,
	[SetOutDate] [datetime] NULL,
	[Cost] [varchar](50) NULL,
	[Reason] [text] NULL,
 CONSTRAINT [PK_T_BusinessTrip] PRIMARY KEY CLUSTERED 
(
	[BID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
