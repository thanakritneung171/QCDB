CREATE TABLE [con].[ProjectInContractorWorkType]
(
[ProjectInContractorId] [int] NOT NULL,
[ContractorWorkTypeId] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [con].[ProjectInContractorWorkType] ADD CONSTRAINT [PK_ProjectInContractorInWorkType] PRIMARY KEY CLUSTERED  ([ProjectInContractorId], [ContractorWorkTypeId]) ON [PRIMARY]
GO
ALTER TABLE [con].[ProjectInContractorWorkType] ADD CONSTRAINT [FK_ProjectInContractorWorkType_ContractorWorkType] FOREIGN KEY ([ContractorWorkTypeId]) REFERENCES [con].[ContractorWorkType] ([Id])
GO
ALTER TABLE [con].[ProjectInContractorWorkType] ADD CONSTRAINT [FK_ProjectInContractorWorkType_ProjectInContractor] FOREIGN KEY ([ProjectInContractorId]) REFERENCES [con].[ProjectInContractor] ([Id])
GO
