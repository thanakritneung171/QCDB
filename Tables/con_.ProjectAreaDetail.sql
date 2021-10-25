CREATE TABLE [con].[ProjectAreaDetail]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BuildingType] [int] NOT NULL,
[BuildingId] [int] NOT NULL,
[Amount] [decimal] (10, 2) NOT NULL,
[Area] [decimal] (10, 2) NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[ProjectAreaDetail] ADD CONSTRAINT [PK_ProjectAreaDetail] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [con].[ProjectAreaDetail] ADD CONSTRAINT [FK_ProjectAreaDetail_Project] FOREIGN KEY ([ProjectCode]) REFERENCES [con].[Project] ([ProjectCode])
GO
