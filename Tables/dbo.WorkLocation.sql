CREATE TABLE [dbo].[WorkLocation]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[DailyDetailId] [int] NULL,
[MonthlyDetailId] [int] NULL,
[UnitId] [int] NULL,
[UnitName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FromProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkLocation] ADD CONSTRAINT [PK_WorkUnit_1] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkLocation] ADD CONSTRAINT [FK_WorkLocation_ApprovedDailyDetail] FOREIGN KEY ([DailyDetailId]) REFERENCES [dbo].[RecordWorkingDetail] ([DailyDetailId])
GO
ALTER TABLE [dbo].[WorkLocation] ADD CONSTRAINT [FK_WorkLocation_Unit] FOREIGN KEY ([UnitId]) REFERENCES [con].[Unit] ([Id])
GO
