CREATE TABLE [con].[ProjectDeed]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Province] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Amphur] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DeedTitle] [int] NOT NULL,
[Rai] [int] NULL,
[Ngan] [int] NULL,
[Wah] [decimal] (10, 2) NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[ProjectDeed] ADD CONSTRAINT [PK_ProjectDeed] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [con].[ProjectDeed] ADD CONSTRAINT [FK_ProjectDeed_Project] FOREIGN KEY ([ProjectCode]) REFERENCES [con].[Project] ([ProjectCode])
GO
