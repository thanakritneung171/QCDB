CREATE TABLE [dbo].[RecordWorkingAttachment]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[DailyCode] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AttachmentId] [int] NULL,
[Remark] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [int] NULL,
[Round] [int] NULL,
[IsActive] [int] NULL,
[CreateBy] [int] NULL,
[CreateDate] [datetime] NULL,
[LastUpdateBy] [int] NULL,
[LastUpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RecordWorkingAttachment] ADD CONSTRAINT [PK_RecordWorkingAttachment] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
