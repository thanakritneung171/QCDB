CREATE TABLE [MAC].[HistoryTransferEquipment]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[EquipmentId] [int] NOT NULL,
[EquipmentName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OldProjectCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NewProjectCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Note] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TransferDate] [datetime] NOT NULL,
[TransferBy] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[HistoryTransferEquipment] ADD CONSTRAINT [PK_HistoryTransferEqipment] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
