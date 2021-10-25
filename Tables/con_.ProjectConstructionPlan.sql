CREATE TABLE [con].[ProjectConstructionPlan]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ConstPlanCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UnitId] [int] NOT NULL,
[UnitNumber] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OldExpectCompleteDate] [date] NULL,
[ExpectCompleteDate] [date] NULL,
[Note] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CancelReason] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [int] NULL,
[IsSlowDown] [bit] NULL,
[IsCompleted] [bit] NULL,
[CompleteDate] [date] NULL,
[OldExpectCompleteDateArchitect] [date] NULL,
[ExpectCompleteDateArchitect] [date] NULL,
[ProgressPercentId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[ProjectConstructionPlan] ADD CONSTRAINT [PK_ProjectPlan] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [con].[ProjectConstructionPlan] ADD CONSTRAINT [FK_ProjectConstructionPlan _ProjectConstructionPlanMaster] FOREIGN KEY ([ConstPlanCode]) REFERENCES [con].[ProjectConstructionPlanMaster] ([Code])
GO
