CREATE TABLE [MAC].[Driver]
(
[DriverId] [int] NOT NULL IDENTITY(1, 1),
[DriverName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DriverTel] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[Driver] ADD CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED  ([DriverId]) ON [PRIMARY]
GO
