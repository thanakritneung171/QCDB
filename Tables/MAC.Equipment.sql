CREATE TABLE [MAC].[Equipment]
(
[EquipmentId] [int] NOT NULL IDENTITY(1, 1),
[EquipmentCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RunningNo] [int] NOT NULL,
[EquipmentTypeId] [int] NOT NULL,
[RunningNoType] [int] NULL,
[EquipmentPlanId] [int] NULL,
[Type] [int] NOT NULL,
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EquipmentName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentDescription] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [int] NOT NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[Equipment] ADD CONSTRAINT [PK_Equipment_1] PRIMARY KEY CLUSTERED  ([EquipmentId]) ON [PRIMARY]
GO
