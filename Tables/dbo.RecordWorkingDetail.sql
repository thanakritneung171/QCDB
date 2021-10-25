CREATE TABLE [dbo].[RecordWorkingDetail]
(
[DailyDetailId] [int] NOT NULL IDENTITY(1, 1),
[DailyCode] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WorkerCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WorkType] [int] NULL,
[WorkGroup] [int] NULL,
[WorkTime] [int] NULL,
[Round] [int] NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Remark] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TotalOverTime] [float] NULL,
[Owner] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HasDefaultMonthly] [bit] NULL,
[Wage] [decimal] (18, 4) NULL,
[Amount] [decimal] (18, 5) NULL,
[Total] [decimal] (18, 2) NULL,
[ContractorCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsContractor] [int] NULL,
[IsCover] [int] NULL,
[TravelExpensesType] [int] NULL,
[TravelExpenses] [decimal] (18, 2) NULL,
[IsActive] [int] NULL,
[Represent] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProjectCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsExternal] [int] NULL,
[DescriptionWork] [int] NULL,
[Holiday] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RecordWorkingDetail] ADD CONSTRAINT [PK_ApprovedDailyDetail] PRIMARY KEY CLUSTERED  ([DailyDetailId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RecordWorkingDetail] ADD CONSTRAINT [FK_ApprovedDailyDetail_ApprovedDaily] FOREIGN KEY ([DailyCode]) REFERENCES [dbo].[RecordWorking] ([DailyCode])
GO
