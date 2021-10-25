CREATE TABLE [con].[WorkGroup]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ProjectTypeId] [int] NOT NULL,
[WorkGroupMainId] [int] NOT NULL,
[WorkGroupName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Number] [int] NOT NULL,
[Status] [int] NOT NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[IsOtherWork] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[WorkGroup] ADD CONSTRAINT [PK_WorkGroup] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [con].[WorkGroup] ADD CONSTRAINT [FK_WorkGroup_WorkGroupMain] FOREIGN KEY ([WorkGroupMainId]) REFERENCES [con].[WorkGroupMain] ([Id])
GO
