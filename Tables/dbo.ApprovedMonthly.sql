CREATE TABLE [dbo].[ApprovedMonthly]
(
[MonthlyCode] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MonthNumber] [int] NULL,
[YearNumber] [int] NULL,
[TotalWorker] [int] NULL,
[StartDate] [datetime] NULL,
[EndDate] [datetime] NULL,
[Status] [int] NULL,
[CreatedDate] [datetime] NULL,
[CreatedBy] [int] NULL,
[CheckDate] [datetime] NULL,
[CheckBy] [int] NULL,
[ApprovedDate] [datetime] NULL,
[ApprovedBy] [int] NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[ConfigId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApprovedMonthly] ADD CONSTRAINT [PK_ApprovedMonthly] PRIMARY KEY CLUSTERED  ([MonthlyCode]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApprovedMonthly] ADD CONSTRAINT [FK_ApprovedMonthly_Project] FOREIGN KEY ([ProjectCode]) REFERENCES [con].[Project] ([ProjectCode])
GO
