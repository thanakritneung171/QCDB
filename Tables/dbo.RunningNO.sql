CREATE TABLE [dbo].[RunningNO]
(
[Type] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Count] [int] NOT NULL,
[LengthNumber] [int] NOT NULL,
[Prefix] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Year] [int] NULL
) ON [PRIMARY]
GO
