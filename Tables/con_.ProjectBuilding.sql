CREATE TABLE [con].[ProjectBuilding]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[BuildingType] [int] NOT NULL,
[BuildingName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[ProjectBuilding] ADD CONSTRAINT [PK_Building] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
