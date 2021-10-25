CREATE TABLE [con].[WorkOrderOtherDetail]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[WorkOrderId] [int] NOT NULL,
[WorkName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OtherDetailGroupWorkId] [int] NOT NULL,
[Amount] [decimal] (10, 2) NOT NULL,
[Price] [decimal] (10, 2) NOT NULL,
[TotalPrice] [decimal] (10, 2) NOT NULL,
[WorkUnit] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContractorName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContractorCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Status] [int] NOT NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[UnApproveNote] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WHT] [decimal] (10, 2) NULL,
[VATType] [int] NULL,
[VAT] [decimal] (10, 2) NULL,
[NetPrice] [decimal] (10, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[WorkOrderOtherDetail] ADD CONSTRAINT [PK_WorkOrderOtherDetail] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
