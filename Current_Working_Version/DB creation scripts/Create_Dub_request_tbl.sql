USE [dub]
GO
/****** Object:  Table [dbo].[Dub_Request_tbl]    Script Date: 02/23/2010 11:57:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dub_Request_tbl](
	[Request_Id] [int] IDENTITY(1,1) NOT NULL,
	[Approval_date] [datetime] NULL,
	[Urgent] [bit] NULL CONSTRAINT [DF__Dub_Reque__Urgen__7C8480AE]  DEFAULT ((0)),
	[Broad_Qual] [bit] NULL CONSTRAINT [DF__Dub_Reque__Broad__7D78A4E7]  DEFAULT ((0)),
	[Non_pol] [bit] NULL CONSTRAINT [DF__Dub_Reque__Non_p__7E6CC920]  DEFAULT ((0)),
	[Urgent_Date] [datetime] NULL,
	[Urgent_Time] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Request_Date] [datetime] NULL,
	[Title] [int] NULL,
	[First] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Last] [nvarchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Staff] [int] NULL,
	[Org] [nvarchar](75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Room_Num] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Phone] [nvarchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ext] [nvarchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Alt_Phone] [nvarchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [nvarchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address] [nvarchar](75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[City] [nvarchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[St] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Zip] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Format] [int] NULL,
	[Request_Type] [int] NULL,
	[Multievent] [bit] NULL CONSTRAINT [DF__Dub_Reque__Multi__7F60ED59]  DEFAULT ((0)),
	[Date_of_Material1] [datetime] NULL,
	[Date_of_Material2] [datetime] NULL,
	[Date_of_Material3] [datetime] NULL,
	[Date_of_Material4] [datetime] NULL,
	[Event1] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Event2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Event3] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Event4] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Num_Dubs1] [int] NULL,
	[Num_Dubs2] [int] NULL,
	[Num_Dubs3] [int] NULL,
	[Num_Dubs4] [int] NULL,
	[Dub_Notes] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Date_of_Dub] [datetime] NULL,
	[Dub_Made_By] [int] NULL,
	[Date_Tape_Rec_Req] [datetime] NULL,
	[Num_Stock_Used] [int] NULL,
	[From_Machine] [int] NULL,
	[To_Machine] [int] NULL,
	[Notes] [bit] NULL CONSTRAINT [DF__Dub_Reque__Notes__00551192]  DEFAULT ((0)),
	[Tape_Op_Notes] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Payment_Method] [int] NULL,
	[Check_Num] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Card_Zip] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Cost] [int] NULL,
	[Date_Pay_Rec] [datetime] NULL,
	[Replacement_Rec] [bit] NULL CONSTRAINT [DF__Dub_Reque__Repla__014935CB]  DEFAULT ((0)),
	[Req_Sent_To_WFSU] [bit] NULL CONSTRAINT [DF__Dub_Reque__Req_S__023D5A04]  DEFAULT ((0)),
	[Sent_By] [int] NULL,
	[Date_Rep_Rec] [datetime] NULL,
	[Media_Picked_Up] [bit] NULL CONSTRAINT [DF__Dub_Reque__Media__03317E3D]  DEFAULT ((0)),
	[Picked_Up_By] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Date_Picked_Up] [datetime] NULL,
	[Needs_Shipping] [bit] NULL CONSTRAINT [DF__Dub_Reque__Needs__0425A276]  DEFAULT ((0)),
	[Ship_Method] [int] NULL,
	[Ship_Date] [datetime] NULL,
	[Shipped_By] [int] NULL,
	[Contacted_By] [int] NULL,
	[Date_Contacted] [datetime] NULL,
	[Contact_Notes] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Completed] [bit] NULL CONSTRAINT [DF__Dub_Reque__Compl__0519C6AF]  DEFAULT ((0)),
	[Date_Completed] [datetime] NULL,
	[Completed_By] [int] NULL,
	[Recycled] [bit] NULL CONSTRAINT [DF__Dub_Reque__Recyc__060DEAE8]  DEFAULT ((0)),
	[Date_Recycled] [datetime] NULL,
	[Date_Record_Created] [datetime] NULL,
	[Date_Record_Modified] [datetime] NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
	[Other] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [Dub_Request_tbl$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[Request_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF