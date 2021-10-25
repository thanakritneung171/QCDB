CREATE TABLE [con].[ProjectInPlan]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PlanCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[ProjectInPlan] ADD CONSTRAINT [PK_PlanInProject] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [con].[ProjectInPlan] ADD CONSTRAINT [FK_PlanInProject_Plan] FOREIGN KEY ([PlanCode]) REFERENCES [con].[Plan] ([PlanCode])
GO
ALTER TABLE [con].[ProjectInPlan] ADD CONSTRAINT [FK_PlanInProject_Project] FOREIGN KEY ([ProjectCode]) REFERENCES [con].[Project] ([ProjectCode])
GO
