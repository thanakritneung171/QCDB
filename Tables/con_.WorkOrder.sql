CREATE TABLE [con].[WorkOrder]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ProjectCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WorkId] [int] NULL,
[WorkPriceId] [int] NULL,
[UnitId] [int] NOT NULL,
[UnitName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QCPass] [bit] NULL,
[Amount] [decimal] (10, 2) NULL,
[Price] [decimal] (10, 2) NULL,
[TotalPrice] [decimal] (10, 2) NULL,
[WorkUnit] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContractorName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContractorCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [int] NOT NULL,
[Active] [bit] NOT NULL,
[LastModifiedQCPassDate] [datetime] NULL,
[LastModifiedQCPassBy] [int] NULL,
[LastModifiedAmountDate] [datetime] NULL,
[LastModifiedAmountBy] [int] NULL,
[LastModifiedStatusDate] [datetime] NULL,
[LastModifiedStatusBy] [int] NULL,
[UnApproveNote] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PlanCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SetToPayType] [int] NULL,
[OldPrice] [decimal] (10, 2) NULL,
[WorkName] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WorkGroupMainId] [int] NULL,
[WaitSetToPayTotalPrice] [decimal] (10, 2) NULL,
[PayContractorTotalPrice] [decimal] (10, 2) NULL,
[PaidTotalPrice] [decimal] (10, 2) NULL,
[WHT] [decimal] (10, 2) NULL,
[VATType] [int] NULL,
[VAT] [decimal] (10, 2) NULL,
[NetPrice] [decimal] (10, 2) NULL,
[IsComplete] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[WorkOrder] ADD CONSTRAINT [PK_WorkOrder] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [con].[WorkOrder] ADD CONSTRAINT [FK_WorkOrder_Unit] FOREIGN KEY ([UnitId]) REFERENCES [con].[Unit] ([Id])
GO
ALTER TABLE [con].[WorkOrder] ADD CONSTRAINT [FK_WorkOrder_WorkPrice] FOREIGN KEY ([WorkPriceId]) REFERENCES [con].[WorkPrice] ([Id])
GO
