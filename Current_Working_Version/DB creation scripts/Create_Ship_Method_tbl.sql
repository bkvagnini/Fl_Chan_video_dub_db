USE [dub]
GO
/****** Object:  Table [dbo].[Ship_Method_tbl]    Script Date: 02/23/2010 12:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ship_Method_tbl](
	[Ship_Method_Id] [int] IDENTITY(1,1) NOT NULL,
	[Ship_Method] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [Ship_Method_tbl$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[Ship_Method_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
