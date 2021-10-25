CREATE TABLE [MAC].[BookMachineConfig]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[MachineTypeId] [int] NULL,
[MachineCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MachineAddCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DriverId] [int] NULL,
[Note] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BookBeforeDay] [int] NOT NULL,
[BookBeforeDayMax] [int] NULL,
[HasArea] [bit] NULL,
[HasTask] [bit] NULL,
[HasUpload] [bit] NULL,
[HasBookPeriodWeek] [bit] NULL,
[MinDay] [int] NULL,
[MinDayType] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaxDay] [int] NULL,
[MaxDayType] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[BookMachineGroupName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[BookMachineConfig] ADD CONSTRAINT [PK_BookMachineConfig] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [MAC].[BookMachineConfig] ADD CONSTRAINT [FK_BookMachineConfig_Driver] FOREIGN KEY ([DriverId]) REFERENCES [MAC].[Driver] ([DriverId])
GO
ALTER TABLE [MAC].[BookMachineConfig] ADD CONSTRAINT [FK_BookMachineConfig_Machine] FOREIGN KEY ([MachineCode]) REFERENCES [MAC].[Machine] ([MachineCode])
GO
