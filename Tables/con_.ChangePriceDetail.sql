CREATE TABLE [con].[ChangePriceDetail]
(
[ChangePriceMasterId] [int] NOT NULL,
[WorkPriceId] [int] NOT NULL,
[Price] [decimal] (10, 2) NULL,
[Amount] [decimal] (10, 2) NULL,
[WorkUnit] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TotalPrice] [decimal] (10, 2) NULL,
[WHT] [decimal] (10, 2) NULL,
[VATType] [int] NULL,
[VAT] [decimal] (10, 2) NULL,
[NetPrice] [decimal] (10, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[ChangePriceDetail] ADD CONSTRAINT [PK_ChangePriceDetail] PRIMARY KEY CLUSTERED  ([ChangePriceMasterId], [WorkPriceId]) ON [PRIMARY]
GO
ALTER TABLE [con].[ChangePriceDetail] ADD CONSTRAINT [FK_ChangePriceDetail_ChangePriceMaster] FOREIGN KEY ([ChangePriceMasterId]) REFERENCES [con].[ChangePriceMaster] ([Id])
GO
ALTER TABLE [con].[ChangePriceDetail] ADD CONSTRAINT [FK_ChangePriceDetail_TaskPrice] FOREIGN KEY ([WorkPriceId]) REFERENCES [con].[WorkPrice] ([Id])
GO
