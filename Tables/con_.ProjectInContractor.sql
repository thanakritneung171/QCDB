CREATE TABLE [con].[ProjectInContractor]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ProjectCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContractorCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedBy] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedBy] [int] NULL,
[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[ProjectInContractor] ADD CONSTRAINT [PK_ProjectInContractor] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
