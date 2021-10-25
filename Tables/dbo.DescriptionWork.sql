CREATE TABLE [dbo].[DescriptionWork]
(
[DesId] [int] NOT NULL IDENTITY(1, 1),
[DescriptionName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Active] [bit] NULL,
[CreatedDate] [datetime] NULL,
[CreatedBy] [int] NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[WorkGroupId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DescriptionWork] ADD CONSTRAINT [PK_DescriptionWork] PRIMARY KEY CLUSTERED  ([DesId]) ON [PRIMARY]
GO
