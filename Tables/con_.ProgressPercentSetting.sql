CREATE TABLE [con].[ProgressPercentSetting]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ProgressPercent] [decimal] (5, 2) NOT NULL,
[ProgressName] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Type] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[Active] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[ProgressPercentSetting] ADD CONSTRAINT [PK_ProgressPercentSetting] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
