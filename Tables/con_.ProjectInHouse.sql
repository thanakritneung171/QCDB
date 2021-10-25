CREATE TABLE [con].[ProjectInHouse]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[HouseId] [int] NOT NULL,
[ProjectCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Note] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[Status] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[ProjectInHouse] ADD CONSTRAINT [PK_ProjectInHouse] PRIMARY KEY CLUSTERED  ([Id], [HouseId], [ProjectCode]) ON [PRIMARY]
GO
