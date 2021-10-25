CREATE TABLE [con].[PayContractorPeriodDay]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Day] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[Active] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[PayContractorPeriodDay] ADD CONSTRAINT [PK_PayContractorPeriodDay] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
