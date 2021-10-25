CREATE TABLE [MAC].[Machine]
(
[MachineCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MachineTypeId] [int] NOT NULL,
[Number] [int] NOT NULL,
[ProjectCode] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Brand] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Model] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Specification] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MachineSerial] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Active] [bit] NOT NULL,
[Note] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [int] NULL,
[BuyDate] [datetime] NULL,
[MachinePrice] [decimal] (10, 2) NULL,
[StartDate] [datetime] NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[MachineName] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NoUpdateMachine] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[Machine] ADD CONSTRAINT [PK_Machine] PRIMARY KEY CLUSTERED  ([MachineCode]) ON [PRIMARY]
GO
ALTER TABLE [MAC].[Machine] ADD CONSTRAINT [FK_Machine_MachineType] FOREIGN KEY ([MachineTypeId]) REFERENCES [MAC].[MachineType] ([MachineTypeId])
GO
