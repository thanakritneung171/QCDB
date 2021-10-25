SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInContractor_SELECT] @ProjectCode    VARCHAR(10) = NULL, 
                                                   @ContractorCode VARCHAR(10) = NULL
AS
     SELECT *, 
            c.ContractorTitle AS ContractorTitle, 
            c.ContractorName AS ContractorName, 
            c.ContractorLastName AS ContractorLastName, 
            ISNULL(c.ContractorTitle + ' ', '') + ISNULL(c.ContractorName + ' ', '') + ISNULL(c.ContractorLastName + ' ', '') AS ContractorFullName
     FROM [con].[ProjectInContractor] pc
          JOIN [con].[Contractor] c ON pc.ContractorCode = c.ContractorCode
     WHERE(pc.ProjectCode = @ProjectCode
           OR @ProjectCode IS NULL)
          AND (pc.ContractorCode = @ContractorCode
               OR @ContractorCode IS NULL);
GO
