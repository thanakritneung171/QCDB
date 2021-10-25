CREATE TABLE [MAC].[RepairNotify]
(
[RepairNotifyCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MachineCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BrokenDetail] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BrokenStartDate] [datetime] NOT NULL,
[RepairProgress] [int] NOT NULL,
[MachineStatus] [int] NOT NULL,
[RepairStatus] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[RecvDate] [datetime] NULL,
[RecvBy] [int] NULL,
[RepairScore] [int] NULL,
[RepairScoreNote] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RejectReason] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BookMachineId] [int] NULL,
[ConfirmRateDate] [datetime] NULL,
[ConfirmRateBy] [int] NULL,
[ConfirmRateNote] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WorkingHour] [int] NULL,
[WorkingMinute] [int] NULL,
[WorkerPrice] [decimal] (10, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[RepairNotify] ADD CONSTRAINT [PK_RepairNotify] PRIMARY KEY CLUSTERED  ([RepairNotifyCode]) ON [PRIMARY]
GO
ALTER TABLE [MAC].[RepairNotify] ADD CONSTRAINT [FK_RepairNotify_Machine] FOREIGN KEY ([MachineCode]) REFERENCES [MAC].[Machine] ([MachineCode])
GO
