CREATE TABLE [dbo].[WorkerWorkGroup]
(
[WorkGroupId] [int] NOT NULL IDENTITY(1, 1),
[WorkGroupName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WorkTypeId] [int] NULL,
[Active] [bit] NULL,
[CreatedDate] [datetime] NULL,
[CreatedBy] [int] NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkerWorkGroup] ADD CONSTRAINT [PK_WorkerWorkGroup] PRIMARY KEY CLUSTERED  ([WorkGroupId]) ON [PRIMARY]
GO
