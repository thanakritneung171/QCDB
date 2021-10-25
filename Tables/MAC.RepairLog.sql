CREATE TABLE [MAC].[RepairLog]
(
[RepairLogId] [int] NOT NULL IDENTITY(1, 1),
[RepairNotifyCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BrokenDetail] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RepairDetail] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LogStatus] [int] NOT NULL,
[LogType] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[ReasonBrokenDetail] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[RepairLog] ADD CONSTRAINT [PK_RepairLog] PRIMARY KEY CLUSTERED  ([RepairLogId]) ON [PRIMARY]
GO
ALTER TABLE [MAC].[RepairLog] ADD CONSTRAINT [FK_RepairLog_RepairNotify] FOREIGN KEY ([RepairNotifyCode]) REFERENCES [MAC].[RepairNotify] ([RepairNotifyCode])
GO
