CREATE TABLE [MAC].[BookMachine]
(
[BookMachineId] [int] NOT NULL IDENTITY(1, 1),
[BookMachineConfigId] [int] NOT NULL,
[MachineTypeId] [int] NULL,
[MachineCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProjectCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OldStartDate] [datetime] NOT NULL,
[OldEndDate] [datetime] NULL,
[OldPeriodTime] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StartDate] [datetime] NOT NULL,
[EndDate] [datetime] NULL,
[PeriodTime] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AreaAmount] [decimal] (10, 2) NULL,
[TaskAmount] [decimal] (10, 2) NULL,
[ForTask] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Status] [int] NULL,
[Progress] [int] NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[ConfirmNote] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ConfirmDate] [datetime] NULL,
[ConfirmBy] [int] NULL,
[RejectReason] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ConfirmReturnDate] [datetime] NULL,
[ConfirmReturnBy] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HasGroup] [bit] NULL,
[DriverId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[BookMachine] ADD CONSTRAINT [PK_BookMachine] PRIMARY KEY CLUSTERED  ([BookMachineId]) ON [PRIMARY]
GO
ALTER TABLE [MAC].[BookMachine] ADD CONSTRAINT [FK_BookMachine_BookMachineConfig] FOREIGN KEY ([BookMachineConfigId]) REFERENCES [MAC].[BookMachineConfig] ([Id])
GO
