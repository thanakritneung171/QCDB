CREATE TABLE [con].[Unit]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UnitType] [int] NOT NULL,
[UnitName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Area] [decimal] (10, 2) NULL,
[AreaUnit] [int] NULL,
[DeedArea] [decimal] (10, 2) NULL,
[PlanCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PeriodSetToPayWork] [int] NULL,
[WorkAmount] [decimal] (10, 2) NULL,
[WorkUnit] [int] NULL,
[WorkDoneAmount] [decimal] (10, 2) NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[Unit] ADD CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [con].[Unit] ADD CONSTRAINT [FK_Unit_Plan] FOREIGN KEY ([PlanCode]) REFERENCES [con].[Plan] ([PlanCode])
GO
ALTER TABLE [con].[Unit] ADD CONSTRAINT [FK_Unit_Project] FOREIGN KEY ([ProjectCode]) REFERENCES [con].[Project] ([ProjectCode])
GO
