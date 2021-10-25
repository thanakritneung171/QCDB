SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ContractorPassport_DELETE] @Id             INT         = NULL, 
                                                   @ContractorCode VARCHAR(10) = NULL
AS
     DELETE [con].[ContractorPassport]
     WHERE(Id = @Id
           OR @Id IS NULL)
          AND (ContractorCode = @ContractorCode
               OR @ContractorCode IS NULL)
          AND (@Id IS NOT NULL
               OR @ContractorCode IS NOT NULL);
GO
