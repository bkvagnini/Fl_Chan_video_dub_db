USE [dub]
GO
/****** Object:  Table [dbo].[Request_Type_tbl]    Script Date: 02/23/2010 11:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request_Type_tbl](
	[Request_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Request_Type] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [Request_Type_tbl$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[Request_Type_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
