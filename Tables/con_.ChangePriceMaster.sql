CREATE TABLE [con].[ChangePriceMaster]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ProjectTypeId] [int] NOT NULL,
[WorkId] [int] NULL,
[HouseId] [int] NULL,
[ProjectCode] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Type] [int] NOT NULL,
[Price] [decimal] (10, 2) NULL,
[Note] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[ApprovedDate] [datetime] NULL,
[ApprovedBy] [int] NULL,
[TotalPrice] [decimal] (10, 2) NULL,
[WHT] [decimal] (10, 2) NULL,
[VATType] [int] NULL,
[VAT] [decimal] (10, 2) NULL,
[NetPrice] [decimal] (10, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[ChangePriceMaster] ADD CONSTRAINT [PK_ChangePriceMaster] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [con].[ChangePriceMaster] ADD CONSTRAINT [FK_ChangePriceMaster_House] FOREIGN KEY ([HouseId]) REFERENCES [con].[House] ([Id])
GO
ALTER TABLE [con].[ChangePriceMaster] ADD CONSTRAINT [FK_ChangePriceMaster_ProjectType] FOREIGN KEY ([ProjectTypeId]) REFERENCES [con].[ProjectType] ([Id])
GO
