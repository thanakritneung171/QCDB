CREATE TABLE [con].[ContractorPassport]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ContractorCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PassportNo] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PassportName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ExpireDate] [date] NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[ContractorPassport] ADD CONSTRAINT [PK_ContractorPassport] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
