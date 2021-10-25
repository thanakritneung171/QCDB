SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairMachineSummary_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                                  @Id                   INT, 
                                                  @RepairNotifyCode     NVARCHAR(10), 
                                                  @TotalPrice           DECIMAL(10, 2), 
                                                  @Note                 NVARCHAR(MAX), 
                                                  @POCodeRef            VARCHAR(255), 
                                                  @Active               BIT, 
                                                  @CreatedDate          DATETIME, 
                                                  @CreatedBy            INT, 
                                                  @ModifiedDate         DATETIME, 
                                                  @ModifiedBy           INT,
												  @NoRepairCost			BIT
												
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[RepairMachineSummary_Create] 
                     @RepairNotifyCode, 
                     @TotalPrice, 
                     @Note, 
                     @POCodeRef, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy,
					 @NoRepairCost
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[RepairMachineSummary_UPDATE] 
                     @Id, 
                     @RepairNotifyCode, 
                     @TotalPrice, 
                     @Note, 
                     @POCodeRef, 
                     @Active, 
                     @ModifiedDate, 
                     @ModifiedBy,
					 @NoRepairCost
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[RepairMachineSummary_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[RepairMachineSummary_SELECT] 
                     @RepairNotifyCode;
        END;
    END;
        SET ANSI_NULLS ON;
GO
