USE [dub]
GO
/****** Object:  Table [dbo].[Machine_tbl]    Script Date: 02/23/2010 11:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Machine_tbl](
	[Machine_Id] [int] IDENTITY(1,1) NOT NULL,
	[Machine] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [Machine_tbl$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[Machine_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
