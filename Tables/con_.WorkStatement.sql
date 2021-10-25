CREATE TABLE [con].[WorkStatement]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ProjectTypeId] [int] NOT NULL,
[WorkGroupMainId] [int] NOT NULL,
[WorkGroupId] [int] NOT NULL,
[WorkId] [int] NULL,
[WorkName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Number] [int] NOT NULL,
[WorkUnit] [int] NOT NULL,
[QCPassBeforePay] [bit] NOT NULL,
[SetAmountBeforePay] [bit] NOT NULL,
[IsNoPrice] [bit] NULL,
[WorkAmountWeight] [int] NULL,
[Note] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [int] NOT NULL,
[Active] [bit] NOT NULL,
[IsCurrent] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[ApprovedDate] [datetime] NULL,
[ApprovedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[WorkStatement] ADD CONSTRAINT [PK_WorkStatement] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [con].[WorkStatement] ADD CONSTRAINT [FK_WorkStatement_Work] FOREIGN KEY ([WorkId]) REFERENCES [con].[Work] ([Id])
GO
ALTER TABLE [con].[WorkStatement] ADD CONSTRAINT [FK_WorkStatement_WorkGroup] FOREIGN KEY ([WorkGroupId]) REFERENCES [con].[WorkGroup] ([Id])
GO
ALTER TABLE [con].[WorkStatement] ADD CONSTRAINT [FK_WorkStatement_WorkGroupMain] FOREIGN KEY ([WorkGroupMainId]) REFERENCES [con].[WorkGroupMain] ([Id])
GO
