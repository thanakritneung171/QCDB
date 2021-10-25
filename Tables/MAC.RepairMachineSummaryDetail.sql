CREATE TABLE [MAC].[RepairMachineSummaryDetail]
(
[RepairMachineSummaryId] [int] NOT NULL,
[RepairDescription] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Amount] [decimal] (10, 2) NOT NULL,
[PricePerAmount] [decimal] (10, 2) NOT NULL,
[TotalPrice] [decimal] (10, 2) NOT NULL,
[RepairDescriptionType] [int] NOT NULL,
[ReceiptDate] [datetime] NULL,
[POCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
