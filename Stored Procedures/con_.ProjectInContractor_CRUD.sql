SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInContractor_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                                 @Id                   INT           = NULL, 
                                                 @ProjectCode          VARCHAR(10)   = NULL, 
                                                 @ContractorCode       VARCHAR(10)   = NULL, 
                                                 @CreatedBy            INT           = NULL, 
                                                 @CreatedDate          DATETIME      = NULL, 
                                                 @ModifiedBy           INT           = NULL, 
                                                 @ModifiedDate         DATETIME      = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[ProjectInContractor_Create] 
                     @ProjectCode, 
                     @ContractorCode, 
                     @CreatedBy, 
                     @CreatedDate;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[ProjectInContractor_UPDATE] 
                     @Id, 
                     @ModifiedBy, 
                     @ModifiedDate
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[ProjectInContractor_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[ProjectInContractor_SELECT] 
                     @ProjectCode, 
                     @ContractorCode;
        END;
		  IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [con].[ProjectInContractor_DELETE] 
                     @Id
        END;
    END;
        SET ANSI_NULLS ON;
GO
