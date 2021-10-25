CREATE TABLE [con].[Contractor]
(
[ContractorCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContractorTitle] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContractorName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContractorLastName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContractorNameEN] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContractorLastNameEN] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Identification] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Refcode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PassportNo] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OldPassportNo] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContractorType] [int] NULL,
[Address] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Phone] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProjectSent] [int] NULL,
[UserSent] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[CreatedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NULL,
[ModifiedBy] [int] NULL,
[Active] [bit] NOT NULL,
[AccountNumber] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BalanceAmount] [numeric] (10, 2) NULL,
[TaxNumber] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AliasName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankId] [int] NULL,
[WorkPermitName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaxPayerName] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[Contractor] ADD CONSTRAINT [PK_Contractor_1] PRIMARY KEY CLUSTERED  ([ContractorCode]) ON [PRIMARY]
GO
