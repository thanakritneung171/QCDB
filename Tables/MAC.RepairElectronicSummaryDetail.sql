CREATE TABLE [MAC].[RepairElectronicSummaryDetail]
(
[RepairElectronicSummaryId] [int] NOT NULL,
[RepairDescription] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Amount] [decimal] (10, 0) NOT NULL,
[PricePerAmount] [decimal] (10, 0) NOT NULL,
[TotalPrice] [decimal] (10, 0) NOT NULL,
[RepairDescriptionType] [int] NOT NULL
) ON [PRIMARY]
GO
