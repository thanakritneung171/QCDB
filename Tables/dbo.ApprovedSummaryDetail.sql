CREATE TABLE [dbo].[ApprovedSummaryDetail]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ApprovedSummaryId] [int] NULL,
[WorkerCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Amount] [decimal] (18, 2) NULL,
[Wage] [decimal] (18, 4) NULL,
[TotalWage] [decimal] (18, 2) NULL,
[TotalOverTime] [decimal] (18, 2) NULL,
[TotalAmount] [decimal] (18, 2) NULL,
[IncreasedAmount] [decimal] (18, 2) NULL,
[DecreasedAmount] [decimal] (18, 2) NULL,
[TotalPay] [decimal] (18, 2) NULL,
[IsActive] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApprovedSummaryDetail] ADD CONSTRAINT [PK_ApprovedSummaryDetail] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
