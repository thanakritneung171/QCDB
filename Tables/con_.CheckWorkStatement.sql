CREATE TABLE [con].[CheckWorkStatement]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ProjectCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HouseId] [int] NOT NULL,
[WorkId] [int] NOT NULL,
[WorkPriceId] [int] NOT NULL,
[UnitNumber] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QCPass] [bit] NULL,
[OldAmount] [decimal] (10, 2) NULL,
[Amount] [decimal] (10, 2) NULL,
[Type] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[CheckWorkStatement] ADD CONSTRAINT [PK_CheckWorkStatement] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
