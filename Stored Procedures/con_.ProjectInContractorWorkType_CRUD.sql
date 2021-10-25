SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInContractorWorkType_CRUD] @Control_Character_In  NVARCHAR(100) = NULL, 
                                                         @ProjectInContractorId INT           = NULL, 
                                                         @ContractorWorkTypeId  INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[ProjectInContractorWorkType_Create] 
                     @ProjectInContractorId, 
                     @ContractorWorkTypeId;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [con].[ProjectInContractorWorkType_DELETE] 
                     @ProjectInContractorId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[ProjectInContractorWorkType_SELECT] 
                     @ProjectInContractorId;
        END;
    END;
        SET ANSI_NULLS ON;
GO
