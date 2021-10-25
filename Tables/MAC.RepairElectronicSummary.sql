CREATE TABLE [MAC].[RepairElectronicSummary]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[RepairElectronicCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TotalPrice] [decimal] (10, 2) NOT NULL,
[Note] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POCodeRef] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[RepairElectronicSummary] ADD CONSTRAINT [PK_RepairElectronicSummary] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
