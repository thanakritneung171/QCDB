CREATE TABLE [con].[Payment]
(
[PaymentCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContractorCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TotalPrice] [decimal] (10, 2) NOT NULL,
[VatPrice] [int] NULL,
[NetPrice] [decimal] (10, 2) NOT NULL,
[PayDate] [datetime] NOT NULL,
[ReceiveBy] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[ContractorName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WHT] [decimal] (10, 2) NULL,
[VATType] [int] NULL,
[Note] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[Payment] ADD CONSTRAINT [PK_PaymentContractor] PRIMARY KEY CLUSTERED  ([PaymentCode]) ON [PRIMARY]
GO
