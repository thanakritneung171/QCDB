CREATE TABLE [dbo].[DeductionSurchargeWorker]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[WorkerCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TypeWage] [int] NULL,
[MonthNumber] [int] NULL,
[YearNumber] [int] NULL,
[Period] [int] NULL,
[NameWage] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Price] [decimal] (10, 2) NULL,
[CreatedDate] [datetime] NULL,
[CreatedBy] [int] NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[AdjustDate] [datetime] NULL,
[AdjustBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DeductionSurchargeWorker] ADD CONSTRAINT [PK_DeductionSurchargeWorker] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
