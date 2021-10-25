SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectConstructionUnitProgress_UPDATE] @Id                             INT           = NULL, 
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
                                                               @ProgressPercentId                INT           = NULL
AS
     UPDATE [con].[ProjectConstructionUnitProgress]
       SET 
           ProjectCode = @ProjectCode, 
           UnitId = @UnitId, 
           UnitNumber = @UnitNumber, 
           OldExpectCompleteDate = @OldExpectCompleteDate, 
           ExpectCompleteDate = @ExpectCompleteDate, 
           CompleteDate = @CompleteDate, 
           PercentComplete = @PercentComplete, 
           Type = @Type, 
           Progress = @Progress, 
           LastModifiedDate = @LastModifiedDate, 
           LastModifiedBy = @LastModifiedBy, 
           Note = @Note, 
           IsPlanAchitect = @IsPlanAchitect, 
           ChangePlanCount = @ChangePlanCount, 
           OldExpectCompleteDateArchitect = @OldExpectCompleteDateArchitect, 
           ExpectCompleteDateArchitect = @ExpectCompleteDateArchitect, 
           ProgressPercentId = @ProgressPercentId
     WHERE Id = @Id;
GO
