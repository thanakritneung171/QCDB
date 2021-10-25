SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInContractorWorkType_SELECT] @ProjectInContractorId INT = NULL
AS
     SELECT * , c.WorkTypeName
     FROM [con].[ProjectInContractorWorkType] p
	 JOIN [con].[ContractorWorkType] c on c.Id = p.ContractorWorkTypeId
     WHERE ProjectInContractorId = @ProjectInContractorId;
GO
