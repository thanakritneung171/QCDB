CREATE TABLE [MAC].[BookMachineConfigGroup]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[BookMachineConfigId] [int] NOT NULL,
[MachineCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DriverId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[BookMachineConfigGroup] ADD CONSTRAINT [PK_BookMachineConfigGroup] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
