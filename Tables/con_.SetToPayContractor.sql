CREATE TABLE [con].[SetToPayContractor]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[WorkOrderId] [int] NOT NULL,
[ContractorCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContractorName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WorkId] [int] NULL,
[ProjectTypeId] [int] NOT NULL,
[ProjectCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HouseId] [int] NOT NULL,
[UnitId] [int] NOT NULL,
[UnitName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Price] [decimal] (10, 2) NOT NULL,
[Amount] [decimal] (10, 2) NOT NULL,
[TotalPrice] [decimal] (10, 2) NOT NULL,
[WorkUnit] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Note] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [int] NOT NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[ApproveLevel1Date] [datetime] NULL,
[ApproveLevel1By] [int] NULL,
[ApproveLevel2Date] [datetime] NULL,
[ApproveLevel2By] [int] NULL,
[PayContractorCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WorkOrderDetailId] [int] NULL,
[PricePerUnit] [decimal] (10, 2) NULL,
[WHT] [decimal] (10, 2) NULL,
[VATType] [int] NULL,
[VAT] [decimal] (10, 2) NULL,
[NetPrice] [decimal] (10, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[SetToPayContractor] ADD CONSTRAINT [PK_SetToPayContractor] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [con].[SetToPayContractor] ADD CONSTRAINT [FK_SetToPayContractor_PayContractorMaster] FOREIGN KEY ([PayContractorCode]) REFERENCES [con].[PayContractor] ([PayContractorCode])
GO
ALTER TABLE [con].[SetToPayContractor] ADD CONSTRAINT [FK_SetToPayContractor_WorkOrder] FOREIGN KEY ([WorkOrderId]) REFERENCES [con].[WorkOrder] ([Id])
GO
