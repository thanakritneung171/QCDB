CREATE TABLE [MAC].[HistoryUpdateMachine]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[MachineCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProjectCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [int] NULL,
[CreatedDate] [datetime] NULL,
[UpdateMachineMasterId] [int] NULL,
[MachineStatus] [int] NULL,
[Progress] [int] NULL,
[VerifyNote] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VerifiedDate] [datetime] NULL,
[VerifiedBy] [int] NULL,
[AnalysisNote] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AnalysisDate] [datetime] NULL,
[AnalysisBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[HistoryUpdateMachine] ADD CONSTRAINT [PK_UpdateMachineHistory] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [MAC].[HistoryUpdateMachine] ADD CONSTRAINT [FK_HistoryUpdateMachine_Machine] FOREIGN KEY ([MachineCode]) REFERENCES [MAC].[Machine] ([MachineCode])
GO
