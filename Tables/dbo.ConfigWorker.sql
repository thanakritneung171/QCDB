CREATE TABLE [dbo].[ConfigWorker]
(
[ConfigId] [int] NOT NULL IDENTITY(1, 1),
[DailySentWorkBefore] [datetime] NULL,
[DailySentDescriptionWorkBefore] [datetime] NULL,
[DailyVerifyRecordBefore] [datetime] NULL,
[DailySentOvertimeBefore] [datetime] NULL,
[OTAmountWorkLowest] [int] NULL,
[DailyStartWorkSummary] [datetime] NULL,
[DailyEndWorkSummary] [datetime] NULL,
[MonthlyStartSentRequestMonthly] [int] NULL,
[MonthlySentRequestMonthlyBefore] [int] NULL,
[MonthlyReminderBefore] [int] NULL,
[MonthlyStartDate] [int] NULL,
[MonthlyEndDate] [int] NULL,
[Active] [bit] NULL,
[CreatedDate] [datetime] NULL,
[CreatedBy] [int] NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ConfigWorker] ADD CONSTRAINT [PK_ConfigWorker] PRIMARY KEY CLUSTERED  ([ConfigId]) ON [PRIMARY]
GO
