CREATE TABLE [dbo].[RecordWorkingHistory]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[DailyCode] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Date] [datetime] NULL,
[Status] [int] NULL,
[CreatedBy] [int] NULL,
[Remark] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AttachmentId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RecordWorkingHistory] ADD CONSTRAINT [PK_RecordWorkingHistory_1] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
