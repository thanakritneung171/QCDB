CREATE TABLE [MAC].[MachineType]
(
[MachineTypeId] [int] NOT NULL IDENTITY(1, 1),
[MachineTypeCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MachineTypeName] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifieBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[MachineType] ADD CONSTRAINT [PK_MachineType] PRIMARY KEY CLUSTERED  ([MachineTypeId]) ON [PRIMARY]
GO
