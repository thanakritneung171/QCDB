SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInContractorWorkType_CREATE] @ProjectInContractorId INT = NULL, 
                                                           @ContractorWorkTypeId  INT = NULL
AS
     INSERT INTO [con].[ProjectInContractorWorkType]
     (ProjectInContractorId, 
      ContractorWorkTypeId
     )
     VALUES
     (@ProjectInContractorId, 
      @ContractorWorkTypeId
     );
GO
