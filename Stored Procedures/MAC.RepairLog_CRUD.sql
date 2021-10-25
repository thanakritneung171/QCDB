SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairLog_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                       @RepairLogId          INT           = NULL, 
                                       @RepairNotifyCode     NVARCHAR(10)  = NULL, 
									   @ReasonBrokenDetail   NVARCHAR(250) = NULL,
                                       @BrokenDetail         NVARCHAR(250) = NULL, 
                                       @RepairDetail         NVARCHAR(250) = NULL,									    
                                       @LogStatus            INT           = NULL, 
                                       @LogType              INT           = NULL, 
                                       @CreatedDate          DATETIME      = NULL, 
                                       @CreatedBy            INT           = NULL, 
                                       @ModifiedDate         DATETIME      = NULL, 
                                       @ModifiedBy           INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[RepairLog_Create] 
                     @RepairNotifyCode, 
					 @ReasonBrokenDetail,
                     @BrokenDetail, 
                     @RepairDetail, 
                     @LogStatus, 
                     @LogType, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[RepairLog_UPDATE] 
                     @RepairLogId, 
                     @RepairNotifyCode, 
					 @ReasonBrokenDetail,
                     @BrokenDetail, 
                     @RepairDetail, 
                     @LogStatus, 
                     @LogType, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[RepairLog_READ_BY] 
                     @RepairLogId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[RepairLog_SELECT] 
                     @RepairNotifyCode;
        END;
    END;
        SET ANSI_NULLS ON;

GO
