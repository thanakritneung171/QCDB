CREATE TABLE [con].[ProjectConstructionUnitProgress]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UnitId] [int] NOT NULL,
[UnitNumber] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OldExpectCompleteDate] [date] NULL,
[ExpectCompleteDate] [date] NULL,
[CompleteDate] [date] NULL,
[PercentComplete] [decimal] (5, 2) NULL,
[Type] [int] NOT NULL,
[Progress] [int] NOT NULL,
[LastModifiedDate] [datetime] NULL,
[LastModifiedBy] [int] NOT NULL,
[Note] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsPlanAchitect] [bit] NULL,
[ChangePlanCount] [int] NULL,
[OldExpectCompleteDateArchitect] [date] NULL,
[ExpectCompleteDateArchitect] [date] NULL,
[ProgressPercentId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[ProjectConstructionUnitProgress] ADD CONSTRAINT [PK_ProjectContractionUnitProgress] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [con].[ProjectConstructionUnitProgress] ADD CONSTRAINT [FK_ProjectConstructionUnitProgress_Unit] FOREIGN KEY ([UnitId]) REFERENCES [con].[Unit] ([Id])
GO
