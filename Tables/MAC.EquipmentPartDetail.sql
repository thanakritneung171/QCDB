CREATE TABLE [MAC].[EquipmentPartDetail]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[EquipmentId] [int] NOT NULL,
[Number] [int] NOT NULL,
[PartName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Amount] [decimal] (10, 2) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[EquipmentPartDetail] ADD CONSTRAINT [PK_EquipmentPartDetail] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
