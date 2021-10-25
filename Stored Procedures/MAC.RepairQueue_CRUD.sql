SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairQueue_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                         @QueueCode            NVARCHAR(10)  = NULL, 
                                         @RepairNotifyCode     NVARCHAR(10)  = NULL, 
                                         @RepairManGroupId     INT           = NULL, 
                                         @IsInstant            BIT           = NULL, 
                                         @CreatedBy            INT           = NULL, 
                                         @CreatedDate          DATETIME      = NULL, 
                                         @ModifiedBy           INT           = NULL, 
                                         @ModifiedDate         DATETIME      = NULL, 
                                         @RunningNo            INT           = NULL,
										 @SearchForRepair	   BIT           = NULL,
										 @AssignWorkDay			   INT			 = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[RepairQueue_Create] 
                     @QueueCode, 
                     @RepairNotifyCode, 
                     @RepairManGroupId, 
                     @IsInstant, 
                     @RunningNo, 
                     @CreatedBy, 
                     @CreatedDate,
					 @AssignWorkDay
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[RepairQueue_UPDATE] 
                     @QueueCode, 
                     @RepairNotifyCode, 
                     @RepairManGroupId, 
                     @IsInstant, 
					 @RunningNo,
                     @ModifiedBy, 
                     @ModifiedDate,
					 @AssignWorkDay
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [MAC].[RepairQueue_DELETE] 
                     @QueueCode;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[RepairQueue_READ_BY] 
                     @QueueCode, 
                     @RepairNotifyCode;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[RepairQueue_SELECT] 
                     @RepairManGroupId,
					 @SearchForRepair
        END;
        IF @Control_Character_In = 'generateCode'
            BEGIN
                EXEC [MAC].[RepairQueue_GenerateCode] 
                     @RepairManGroupId, 
                     @RunningNo;
        END;
    END;
        SET ANSI_NULLS ON;


GO
