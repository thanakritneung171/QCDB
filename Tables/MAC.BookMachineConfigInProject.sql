CREATE TABLE [MAC].[BookMachineConfigInProject]
(
[BookMachineConfigId] [int] NOT NULL,
[ProjectCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[BookMachineConfigInProject] ADD CONSTRAINT [PK_BookMachineInProject] PRIMARY KEY CLUSTERED  ([BookMachineConfigId], [ProjectCode]) ON [PRIMARY]
GO
ALTER TABLE [MAC].[BookMachineConfigInProject] ADD CONSTRAINT [FK_BookMachineConfigInProject_BookMachineConfig] FOREIGN KEY ([BookMachineConfigId]) REFERENCES [MAC].[BookMachineConfig] ([Id])
GO
