CREATE TABLE [con].[WorkGroupMain]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ProjectTypeId] [int] NOT NULL,
[MainName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[ControlCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[WorkGroupMain] ADD CONSTRAINT [PK_WorkGroupMain] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
