CREATE TABLE [MAC].[EquipmentPlan]
(
[EquipmentPlanId] [int] NOT NULL IDENTITY(1, 1),
[EquipmentPlanName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Number] [int] NOT NULL,
[Type] [int] NOT NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[EquipmentPlan] ADD CONSTRAINT [PK_EquipmentPlan] PRIMARY KEY CLUSTERED  ([EquipmentPlanId]) ON [PRIMARY]
GO
