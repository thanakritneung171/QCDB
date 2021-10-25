SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectConstructionPlan_CRUD] @Control_Character_In           NVARCHAR(100) = NULL, 
                                                     @Id                             INT           = NULL, 
                                                     @ConstPlanCode                  VARCHAR(10)   = NULL, 
                                                     @UnitId                         INT           = NULL, 
                                                     @UnitNumber                     VARCHAR(10)   = NULL, 
                                                     @OldExpectCompleteDate          DATE          = NULL, 
                                                     @ExpectCompleteDate             DATE          = NULL, 
                                                     @Note                           NVARCHAR(256) = NULL, 
                                                     @CancelReason                   NVARCHAR(256) = NULL, 
                                                     @Status                         INT           = NULL, 
                                                     @IsSlowDown                     BIT           = NULL, 
                                                     @IsCompleted                    BIT           = NULL, 
                                                     @CompleteDate                   DATE          = NULL, 
                                                     @OldExpectCompleteDateArchitect DATE          = NULL, 
                                                     @ExpectCompleteDateArchitect    DATE          = NULL, 
                                                     @ProgressPercentId              INT           = NULL													 
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[ProjectConstructionPlan_Create] 
                     @ConstPlanCode, 
                     @UnitId, 
                     @UnitNumber, 
                     @OldExpectCompleteDate, 
                     @ExpectCompleteDate, 
                     @Note, 
                     @CancelReason, 
                     @Status, 
                     @IsSlowDown, 
                     @IsCompleted, 
                     @CompleteDate, 
                     @OldExpectCompleteDateArchitect, 
                     @ExpectCompleteDateArchitect, 
                     @ProgressPercentId;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[ProjectConstructionPlan_UPDATE] 
                     @Id, 
                     @ConstPlanCode, 
                     @UnitId, 
                     @UnitNumber, 
                     @OldExpectCompleteDate, 
                     @ExpectCompleteDate, 
                     @Note, 
                     @CancelReason, 
                     @Status, 
                     @IsSlowDown, 
                     @IsCompleted, 
                     @CompleteDate, 
                     @OldExpectCompleteDateArchitect, 
                     @ExpectCompleteDateArchitect, 
                     @ProgressPercentId
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [con].[ProjectConstructionPlan_DELETE] 
                     @Id;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[ProjectConstructionPlan_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[ProjectConstructionPlan_SELECT] 
                     @ConstPlanCode, 
                     @UnitId, 
                     @Status;
        END;
    END;
        SET ANSI_NULLS ON;
GO
