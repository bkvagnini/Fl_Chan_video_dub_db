USE [dub]
GO
/****** Object:  Table [dbo].[Format_tbl]    Script Date: 02/23/2010 11:58:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Format_tbl](
	[Format_Id] [int] IDENTITY(1,1) NOT NULL,
	[Format] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [Format_tbl$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[Format_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
