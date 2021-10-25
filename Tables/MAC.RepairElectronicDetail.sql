CREATE TABLE [MAC].[RepairElectronicDetail]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[RepairElectronicCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ElectronicCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BrokenDetail] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HasReturn] [bit] NULL,
[RepairDetail] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RepairCompleteDate] [date] NULL,
[RepairBy] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HasCantFix] [bit] NULL,
[CantFixReason] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReceiveBy] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReceiveDate] [date] NULL,
[ReasonBroken] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[RepairElectronicDetail] ADD CONSTRAINT [PK_RepairElectronicDetail] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
