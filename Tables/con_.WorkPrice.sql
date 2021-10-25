CREATE TABLE [con].[WorkPrice]
(
[Id] [int] NOT NULL,
[WorkId] [int] NOT NULL,
[ProjectTypeId] [int] NULL,
[HouseId] [int] NULL,
[ProjectCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Price] [decimal] (10, 2) NULL,
[OldPrice] [decimal] (10, 2) NULL,
[Amount] [decimal] (10, 2) NULL,
[ModifiedDate] [datetime] NOT NULL,
[ModifiedBy] [int] NOT NULL,
[ChangePriceId] [int] NULL,
[TotalPrice] [decimal] (10, 2) NULL,
[WHT] [decimal] (10, 2) NULL,
[VATType] [int] NULL,
[VAT] [decimal] (10, 2) NULL,
[NetPrice] [decimal] (10, 2) NULL,
[OldNetPrice] [decimal] (10, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[WorkPrice] ADD CONSTRAINT [PK_WorkPrice] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [con].[WorkPrice] ADD CONSTRAINT [FK_WorkPrice_ProjectType] FOREIGN KEY ([ProjectTypeId]) REFERENCES [con].[ProjectType] ([Id])
GO
ALTER TABLE [con].[WorkPrice] ADD CONSTRAINT [FK_WorkPrice_StandardWork] FOREIGN KEY ([WorkId]) REFERENCES [con].[Work] ([Id])
GO
