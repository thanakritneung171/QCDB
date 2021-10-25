CREATE TABLE [dbo].[ApprovedMonthlyAttachment]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[MonthlyCode] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AttachmentId] [int] NULL,
[Remark] [nvarchar] (225) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [int] NULL,
[Round] [int] NULL,
[IsActive] [int] NULL,
[CreateBy] [int] NULL,
[CreateDate] [datetime] NULL,
[LastUpdateBy] [int] NULL,
[LastUpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApprovedMonthlyAttachment] ADD CONSTRAINT [PK_ApprovedMonthlyAttachment] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
