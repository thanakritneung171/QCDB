SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectConstructionPlan_CREATE] @ConstPlanCode                  VARCHAR(10)   = NULL, 
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
     INSERT INTO [con].[ProjectConstructionPlan]
     (ConstPlanCode, 
      UnitId, 
      UnitNumber, 
      OldExpectCompleteDate, 
      ExpectCompleteDate, 
      Note, 
      CancelReason, 
      STATUS, 
      IsSlowDown, 
      IsCompleted, 
      CompleteDate, 
      OldExpectCompleteDateArchitect, 
      ExpectCompleteDateArchitect, 
      ProgressPercentId
     )
     VALUES
     (@ConstPlanCode, 
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
     );
GO
