SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInContractor_GET_PICKER] @ProjectCode    VARCHAR(10) = NULL
                                                  
AS
     SELECT pc.Id,
			pc.ContractorCode,
			c.ContractorTitle, 
			ISNULL(c.ContractorName, '') + ' ' + ISNULL(c.ContractorLastName,'') AS ContractorFullName,
			c.AliasName,
			c.Phone,
			c.ContractorType,
			pss.PassportNo,
			pss.ExpireDate AS PassportExpireDate
			
FROM [con].[ProjectInContractor] pc
JOIN [con].[Contractor] c ON pc.ContractorCode = c.ContractorCode
LEFT JOIN (SELECT Id, PassportNo, ExpireDate FROM [con].[ContractorPassport]) pss
	ON (SELECT TOP 1 Id FROM [con].[ContractorPassport] sub WHERE sub.ContractorCode = pc.ContractorCode) = pss.Id
WHERE(pc.ProjectCode = @ProjectCode OR @ProjectCode IS NULL) AND c.Active = 1
ORDER BY ContractorFullName


GO
