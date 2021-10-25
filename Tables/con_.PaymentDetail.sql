CREATE TABLE [con].[PaymentDetail]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[PaymentCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Number] [int] NOT NULL,
[Period] [int] NOT NULL,
[WorkId] [int] NOT NULL,
[WorkName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MonthYear] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Amount] [decimal] (18, 0) NOT NULL,
[WorkUnit] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TotalPrice] [decimal] (18, 0) NOT NULL,
[WHT] [decimal] (10, 2) NULL,
[VATType] [int] NULL,
[VAT] [decimal] (10, 2) NULL,
[NetPrice] [decimal] (10, 2) NULL,
[PricePerUnit] [decimal] (10, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[PaymentDetail] ADD CONSTRAINT [PK_PaymentDetail] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [con].[PaymentDetail] ADD CONSTRAINT [FK_PaymentDetail_Payment] FOREIGN KEY ([PaymentCode]) REFERENCES [con].[Payment] ([PaymentCode])
GO
