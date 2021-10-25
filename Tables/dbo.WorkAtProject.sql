CREATE TABLE [dbo].[WorkAtProject]
(
[ProjectId] [int] NOT NULL IDENTITY(1, 1),
[WorkerCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StartDate] [datetime] NULL,
[Active] [bit] NULL,
[ApprovedDate] [datetime] NULL,
[ApprovedBy] [int] NULL,
[CreatedDate] [datetime] NULL,
[CreatedBy] [int] NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkAtProject] ADD CONSTRAINT [PK_WorkAtProject] PRIMARY KEY CLUSTERED  ([ProjectId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkAtProject] ADD CONSTRAINT [FK_WorkAtProject_Project] FOREIGN KEY ([ProjectCode]) REFERENCES [con].[Project] ([ProjectCode])
GO
ALTER TABLE [dbo].[WorkAtProject] ADD CONSTRAINT [FK_WorkAtProject_Worker] FOREIGN KEY ([WorkerCode]) REFERENCES [dbo].[Worker] ([WorkerCode])
GO
