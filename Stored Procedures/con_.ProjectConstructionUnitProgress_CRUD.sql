SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectConstructionUnitProgress_CRUD] @Control_Character_In           NVARCHAR(100) = NULL, 
                                                             @Id                             INT           = NULL, 
                                                             @ProjectCode                    VARCHAR(10)   = NULL, 
                                                             @UnitId                         INT           = NULL, 
                                                             @UnitNumber                     NVARCHAR(50)  = NULL, 
                                                             @OldExpectCompleteDate          DATE          = NULL, 
                                                             @ExpectCompleteDate             DATE          = NULL, 
                                                             @CompleteDate                   DATE          = NULL, 
                                                             @PercentComplete                DECIMAL(5, 2)  = NULL, 
                                                             @Type                           INT           = NULL, 
                                                             @Progress                       INT           = NULL, 
                                                             @LastModifiedDate               DATETIME      = NULL, 
                                                             @LastModifiedBy                 INT           = NULL, 
                                                             @Note                           NVARCHAR(256) = NULL, 
                                                             @IsPlanAchitect                 BIT           = NULL, 
                                                             @ChangePlanCount                INT           = NULL, 
                                                             @OldExpectCompleteDateArchitect DATE          = NULL, 
                                                             @ExpectCompleteDateArchitect    DATE          = NULL, 
                                                             @ProgressPercentId               INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[ProjectConstructionUnitProgress_Create] 
                     @ProjectCode, 
                     @UnitId, 
                     @UnitNumber, 
                     @OldExpectCompleteDate, 
                     @ExpectCompleteDate, 
                     @CompleteDate, 
                     @PercentComplete, 
                     @Type, 
                     @Progress, 
                     @LastModifiedDate, 
                     @LastModifiedBy, 
                     @Note, 
					 @IsPlanAchitect,
                     @OldExpectCompleteDateArchitect, 
                     @ExpectCompleteDateArchitect, 
                     @ProgressPercentId;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[ProjectConstructionUnitProgress_UPDATE] 
                     @Id, 
                     @ProjectCode, 
                     @UnitId, 
                     @UnitNumber, 
                     @OldExpectCompleteDate, 
                     @ExpectCompleteDate, 
                     @CompleteDate, 
                     @PercentComplete, 
                     @Type, 
                     @Progress, 
                     @LastModifiedDate, 
                     @LastModifiedBy, 
                     @Note, 
                     @IsPlanAchitect, 
                     @ChangePlanCount, 
                     @OldExpectCompleteDateArchitect, 
                     @ExpectCompleteDateArchitect, 
                     @ProgressPercentId;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[ProjectConstructionUnitProgress_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[ProjectConstructionUnitProgress_SELECT] 
                     @ProjectCode, 
                     @UnitId, 
                     @Type, 
                     @Progress;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [con].[ProjectConstructionUnitProgress_DELETE] 
                     @Id;
        END;
    END;
        SET ANSI_NULLS ON;
GO
