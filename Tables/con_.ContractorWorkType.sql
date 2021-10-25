CREATE TABLE [con].[ContractorWorkType]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[WorkTypeName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[ContractorWorkType] ADD CONSTRAINT [PK_ContractorWorkType] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
