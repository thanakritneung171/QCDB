CREATE TABLE [MAC].[EquipmentType]
(
[EquipmentTypeId] [int] NOT NULL IDENTITY(1, 1),
[EquipmentTypeCode] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EquipmentTypeName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Type] [int] NOT NULL,
[Active] [bit] NOT NULL,
[Note] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[EquipmentType] ADD CONSTRAINT [PK_EquipmentType_1] PRIMARY KEY CLUSTERED  ([EquipmentTypeCode]) ON [PRIMARY]
GO
