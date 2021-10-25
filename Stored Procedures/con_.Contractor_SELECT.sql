SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Contractor_SELECT] @ContractorName     NVARCHAR(100) = NULL, 
                                           @ContractorLastName NVARCHAR(50)  = NULL, 
                                           @ContractorType     INT           = NULL, 
                                           @Active             BIT           = NULL
AS
     SELECT *
     FROM [con].[Contractor]
     WHERE(ContractorType = @ContractorType
           OR @ContractorType IS NULL)
          AND (Active = @Active
               OR @Active IS NULL)
		   AND (ContractorName = @ContractorName AND (ContractorLastName IS NULL OR  @ContractorLastName IS NOT NULL ) AND (ContractorLastName = @ContractorLastName OR @ContractorLastName IS NULL ) OR (@ContractorName IS NULL AND @ContractorLastName IS NULL )) 
     ORDER BY ContractorName + ' ' + ContractorLastName , ContractorTitle

GO
