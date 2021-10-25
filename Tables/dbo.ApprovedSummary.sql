CREATE TABLE [dbo].[ApprovedSummary]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ProjectCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Month] [int] NULL,
[Year] [int] NULL,
[Round] [int] NULL,
[StartDay] [int] NULL,
[EndDay] [int] NULL,
[Status] [int] NULL,
[TotalWorker] [int] NULL,
[TotalAverageWage] [decimal] (18, 2) NULL,
[TotalAmount] [decimal] (18, 2) NULL,
[TotalOverTime] [decimal] (18, 2) NULL,
[Total] [decimal] (18, 2) NULL,
[TotalIncreasedAmount] [decimal] (18, 2) NULL,
[TotalDecreasedAmount] [decimal] (18, 2) NULL,
[CreateDate] [datetime] NULL,
[RequestDate] [datetime] NULL,
[RequestBy] [int] NULL,
[ApprovedDate] [datetime] NULL,
[ApprovedBy] [int] NULL,
[Remark] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsActive] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApprovedSummary] ADD CONSTRAINT [PK_ApprovedSummary] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
