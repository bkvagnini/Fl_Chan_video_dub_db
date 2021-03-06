USE [dub]
GO
/****** Object:  Table [dbo].[Payment_tbl]    Script Date: 02/23/2010 11:59:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_tbl](
	[Payment_Id] [int] IDENTITY(1,1) NOT NULL,
	[Payment] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [Payment_tbl$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[Payment_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
