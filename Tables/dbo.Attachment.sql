CREATE TABLE [dbo].[Attachment]
(
[AttachmentId] [int] NOT NULL IDENTITY(1, 1),
[AttachmentCode] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FileSize] [bigint] NULL,
[FileType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsActive] [int] NULL,
[CreateBy] [int] NULL,
[CreateDate] [datetime] NULL,
[LastUpdateBy] [int] NULL,
[LastUpdateDate] [datetime] NULL,
[Path] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Attachment] ADD CONSTRAINT [PK_Attachment] PRIMARY KEY CLUSTERED  ([AttachmentId]) ON [PRIMARY]
GO
