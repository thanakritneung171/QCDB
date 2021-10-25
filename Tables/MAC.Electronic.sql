CREATE TABLE [MAC].[Electronic]
(
[ElectronicCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ElectronicTypeId] [int] NOT NULL,
[ProjectCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Brand] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Model] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Size] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Specification] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SerialNumber] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Active] [bit] NOT NULL,
[Status] [int] NOT NULL,
[RunningNo] [int] NOT NULL,
[BuyDate] [datetime] NULL,
[Price] [decimal] (10, 2) NULL,
[EstimatedPrice] [decimal] (10, 2) NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[Amount] [decimal] (10, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[Electronic] ADD CONSTRAINT [PK_Electronic_1] PRIMARY KEY CLUSTERED  ([ElectronicCode]) ON [PRIMARY]
GO
ALTER TABLE [MAC].[Electronic] ADD CONSTRAINT [FK_Electronic_ElectronicType] FOREIGN KEY ([ElectronicTypeId]) REFERENCES [MAC].[ElectronicType] ([ElectronicTypeId])
GO
