SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectConstructionUnitProgress_CREATE] @ProjectCode                    VARCHAR(10)   = NULL, 
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
                                                               @OldExpectCompleteDateArchitect DATE          = NULL, 
                                                               @ExpectCompleteDateArchitect    DATE          = NULL, 
                                                               @ProgressPercentId              INT           = NULL
AS
     INSERT INTO [con].[ProjectConstructionUnitProgress]
     (ProjectCode, 
      UnitId, 
      UnitNumber, 
      OldExpectCompleteDate, 
      ExpectCompleteDate, 
      CompleteDate, 
      PercentComplete, 
      Type, 
      Progress, 
      LastModifiedDate, 
      LastModifiedBy, 
      Note, 
      IsPlanAchitect, 
      OldExpectCompleteDateArchitect, 
      ExpectCompleteDateArchitect, 
      ProgressPercentId
     )
     VALUES
     (@ProjectCode, 
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
      @ProgressPercentId
     );
GO
