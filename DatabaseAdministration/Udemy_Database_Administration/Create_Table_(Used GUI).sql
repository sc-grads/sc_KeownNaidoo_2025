USE [OurFirstDatabase]
GO

/****** Object:  Table [dbo].[personalinfo]    Script Date: 2025/03/10 14:19:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[personalinfo](
	[FirstName] [varchar](50) NULL,
	[lastName] [varchar](50) NULL,
	[dob] [datetime] NULL,
	[ID] [int] NOT NULL
) ON [PRIMARY]
GO


