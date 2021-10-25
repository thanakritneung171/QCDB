CREATE TABLE [dbo].[RecordWorking]
(
[DailyCode] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Date] [datetime] NULL,
[TotalWorker] [int] NULL,
[TotalFullTime] [int] NULL,
[TotalPartTime] [int] NULL,
[TotalOvertime] [int] NULL,
[TotalQuota] [int] NULL,
[AverageWage] [decimal] (10, 2) NULL,
[TotalWage] [decimal] (10, 2) NULL,
[Status] [int] NULL,
[PictureTime] [datetime] NULL,
[DetailTime] [datetime] NULL,
[SummaryTime] [datetime] NULL,
[Remark] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NULL,
[CreatedBy] [int] NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[VerifiedDate] [datetime] NULL,
[VerifiedBy] [int] NULL,
[VerifiedRemark] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VerifiedStatus] [int] NULL,
[ConfigId] [int] NULL,
[LastVerifiedDate] [datetime] NULL,
[LastVerifiedBy] [int] NULL,
[LastVerifiedRemark] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastVerifiedStatus] [int] NULL,
[SummaryBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RecordWorking] ADD CONSTRAINT [PK_ApprovedDaily] PRIMARY KEY CLUSTERED  ([DailyCode]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RecordWorking] ADD CONSTRAINT [FK_ApprovedDaily_Project] FOREIGN KEY ([ProjectCode]) REFERENCES [con].[Project] ([ProjectCode])
GO
