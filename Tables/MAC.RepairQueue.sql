CREATE TABLE [MAC].[RepairQueue]
(
[QueueCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RepairNotifyCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RepairManGroupId] [int] NOT NULL,
[IsInstant] [bit] NOT NULL,
[RunningNo] [int] NOT NULL,
[CreatedBy] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedBy] [int] NULL,
[ModifiedDate] [datetime] NULL,
[AssignBy] [int] NULL,
[AssignDate] [datetime] NULL,
[AssignWorkDay] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[RepairQueue] ADD CONSTRAINT [PK_RepairQueue] PRIMARY KEY CLUSTERED  ([QueueCode]) ON [PRIMARY]
GO
ALTER TABLE [MAC].[RepairQueue] ADD CONSTRAINT [FK_RepairQueue_RepairManGroup] FOREIGN KEY ([RepairManGroupId]) REFERENCES [MAC].[RepairManGroup] ([RepairManGroupId])
GO
ALTER TABLE [MAC].[RepairQueue] ADD CONSTRAINT [FK_RepairQueue_RepairNotify] FOREIGN KEY ([RepairNotifyCode]) REFERENCES [MAC].[RepairNotify] ([RepairNotifyCode])
GO
