CREATE TABLE [con].[ProjectType]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ProjectTypeName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Status] [int] NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[ProjectType] ADD CONSTRAINT [PK_ProjectType] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
