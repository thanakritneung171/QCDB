CREATE TABLE [MAC].[HistoryTransferMachine]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[MachineCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OldProjectCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewProjectCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Status] [int] NOT NULL,
[Note] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TransferDate] [datetime] NOT NULL,
[TransferBy] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[HistoryTransferMachine] ADD CONSTRAINT [PK_HistoryTransferMachine] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [MAC].[HistoryTransferMachine] ADD CONSTRAINT [FK_HistoryTransferMachine_Machine] FOREIGN KEY ([MachineCode]) REFERENCES [MAC].[Machine] ([MachineCode])
GO
