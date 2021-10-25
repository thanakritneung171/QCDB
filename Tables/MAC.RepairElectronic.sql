CREATE TABLE [MAC].[RepairElectronic]
(
[RepairElectronicCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NotifyRepairBy] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NotifyRepairDate] [date] NOT NULL,
[SendBy] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SendDate] [date] NOT NULL,
[ReceiveBy] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ReceiveDate] [date] NOT NULL,
[Active] [bit] NOT NULL,
[CreatedBy] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedBy] [int] NULL,
[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[RepairElectronic] ADD CONSTRAINT [PK_RepairElectronic_1] PRIMARY KEY CLUSTERED  ([RepairElectronicCode]) ON [PRIMARY]
GO
