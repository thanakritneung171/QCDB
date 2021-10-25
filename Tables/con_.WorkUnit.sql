CREATE TABLE [con].[WorkUnit]
(
[Id] [int] NOT NULL,
[WorkUnitName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Active] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[WorkUnit] ADD CONSTRAINT [PK_WorkUnit] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
