SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectConstructionPlan_UPDATE] @Id                             INT           = NULL, 
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
     UPDATE [con].[ProjectConstructionPlan]
       SET 
           ConstPlanCode = @ConstPlanCode, 
           UnitId = @UnitId, 
           UnitNumber = @UnitNumber, 
           OldExpectCompleteDate = @OldExpectCompleteDate, 
           ExpectCompleteDate = @ExpectCompleteDate, 
           Note = @Note, 
           CancelReason = @CancelReason, 
           STATUS = @Status, 
           IsSlowDown = @IsSlowDown, 
           IsCompleted = @IsCompleted, 
           CompleteDate = @CompleteDate, 
           OldExpectCompleteDateArchitect = @OldExpectCompleteDateArchitect, 
           ExpectCompleteDateArchitect = @ExpectCompleteDateArchitect, 
           ProgressPercentId = @ProgressPercentId
     WHERE Id = @Id;
GO
