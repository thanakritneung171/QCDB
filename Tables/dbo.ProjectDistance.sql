CREATE TABLE [dbo].[ProjectDistance]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[SourceProject] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DestinationProject] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Distance] [decimal] (18, 3) NULL,
[AmountPerKm] [decimal] (18, 3) NULL,
[IsActive] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProjectDistance] ADD CONSTRAINT [PK_ProjectDistance] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
