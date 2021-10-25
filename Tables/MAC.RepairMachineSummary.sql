CREATE TABLE [MAC].[RepairMachineSummary]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[RepairNotifyCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TotalPrice] [decimal] (10, 2) NOT NULL,
[Note] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POCodeRef] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[NoRepairCost] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[RepairMachineSummary] ADD CONSTRAINT [PK_RepairMachineSummary] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
