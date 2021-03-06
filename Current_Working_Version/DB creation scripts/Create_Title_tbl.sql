USE [dub]
GO
/****** Object:  Table [dbo].[Title_tbl]    Script Date: 02/23/2010 12:00:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Title_tbl](
	[Title_Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [Title_tbl$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[Title_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
