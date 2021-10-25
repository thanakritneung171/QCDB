CREATE TABLE [dbo].[ApprovedMonthlyDetail]
(
[MonthlyDetailId] [int] NOT NULL IDENTITY(1, 1),
[MonthlyCode] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WorkerCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WorkType] [int] NULL,
[WorkGroup] [int] NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Owner] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Holiday] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Wage] [decimal] (10, 2) NULL,
[Remark] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DescriptionId] [int] NULL,
[DescriptionOther] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HolidayId] [int] NULL,
[HolidayOther] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WagePerMonthly] [decimal] (10, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApprovedMonthlyDetail] ADD CONSTRAINT [PK_ApprovedMonthlyDetail] PRIMARY KEY CLUSTERED  ([MonthlyDetailId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApprovedMonthlyDetail] ADD CONSTRAINT [FK_ApprovedMonthlyDetail_ApprovedMonthly] FOREIGN KEY ([MonthlyCode]) REFERENCES [dbo].[ApprovedMonthly] ([MonthlyCode])
GO
ALTER TABLE [dbo].[ApprovedMonthlyDetail] ADD CONSTRAINT [FK_ApprovedMonthlyDetail_Worker] FOREIGN KEY ([WorkerCode]) REFERENCES [dbo].[Worker] ([WorkerCode])
GO
