CREATE TABLE [MAC].[ElectronicType]
(
[ElectronicTypeId] [int] NOT NULL IDENTITY(1, 1),
[ElectronicTypeCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ElectronicTypeName] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Note] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Active] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [MAC].[ElectronicType] ADD CONSTRAINT [PK_Electronic] PRIMARY KEY CLUSTERED  ([ElectronicTypeId]) ON [PRIMARY]
GO
