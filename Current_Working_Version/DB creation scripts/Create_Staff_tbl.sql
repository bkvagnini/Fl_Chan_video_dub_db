USE [dub]
GO
/****** Object:  Table [dbo].[Staff_tbl]    Script Date: 02/23/2010 12:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_tbl](
	[Staff_Id] [int] IDENTITY(1,1) NOT NULL,
	[First] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Last] [nvarchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Other] [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [Staff_tbl$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[Staff_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
