CREATE TABLE [con].[WorkOrderInPayment]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[WorkOrderId] [int] NOT NULL,
[SetToPayContractorId] [int] NOT NULL,
[WorkId] [int] NULL,
[ContractorCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PayContractorCode] [int] NULL,
[PaymentCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[WorkOrderInPayment] ADD CONSTRAINT [PK_WorkOrderInPayment_1] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
