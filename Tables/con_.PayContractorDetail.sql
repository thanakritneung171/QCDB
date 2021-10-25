CREATE TABLE [con].[PayContractorDetail]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[PayContractorCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Number] [int] NOT NULL,
[Period] [int] NOT NULL,
[WorkGroupMainId] [int] NULL,
[WorkId] [int] NOT NULL,
[WorkName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ListUnitName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TotalAmount] [decimal] (10, 2) NOT NULL,
[TotalPrice] [decimal] (10, 2) NOT NULL,
[WorkUnit] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContractorName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContractorCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Note] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [int] NOT NULL,
[Active] [bit] NOT NULL,
[NoteApprove] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ApproveDate] [datetime] NULL,
[ApproveBy] [int] NULL,
[PricePerUnit] [decimal] (10, 2) NULL,
[WHT] [decimal] (10, 2) NULL,
[VATType] [int] NULL,
[VAT] [decimal] (10, 2) NULL,
[NetPrice] [decimal] (10, 2) NULL,
[RejectReason] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[PayContractorDetail] ADD CONSTRAINT [PK_PayContractor] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [con].[PayContractorDetail] ADD CONSTRAINT [FK_PayContractor_PayContractorMaster] FOREIGN KEY ([PayContractorCode]) REFERENCES [con].[PayContractor] ([PayContractorCode])
GO
ALTER TABLE [con].[PayContractorDetail] ADD CONSTRAINT [FK_PayContractor_Payment] FOREIGN KEY ([PaymentCode]) REFERENCES [con].[Payment] ([PaymentCode])
GO
