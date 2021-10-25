SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorking_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                           @DailyCode            VARCHAR(20)    = NULL, 
                                           @ProjectCode          VARCHAR(10)    = NULL, 
                                           @Date                 DATETIME       = NULL, 
                                           @TotalWorker          INT            = NULL, 
                                           @TotalFullTime        INT            = NULL, 
                                           @TotalPartTime        INT            = NULL, 
                                           @TotalOvertime        INT            = NULL, 
                                           @TotalQuota           INT            = NULL, 
                                           @AverageWage          DECIMAL(10, 2)  = NULL, 
                                           @TotalWage            DECIMAL(10, 2)  = NULL, 
                                           @Status               INT            = NULL, 
                                           @PictureTime          DATETIME       = NULL, 
                                           @DetailTime           DATETIME       = NULL, 
                                           @SummaryTime          DATETIME       = NULL, 
                                           @Remark               NVARCHAR(255)  = NULL, 
                                           @CreatedDate          DATETIME       = NULL, 
                                           @CreatedBy            INT            = NULL, 
                                           @ModifiedDate         DATETIME       = NULL, 
                                           @ModifiedBy           INT            = NULL, 
                                           @VerifiedDate         DATETIME       = NULL, 
                                           @VerifiedBy           INT            = NULL, 
                                           @VerifiedRemark       NVARCHAR(255)  = NULL, 
                                           @VerifiedStatus       INT            = NULL, 
                                           @ConfigId             INT            = NULL, 
                                           @LastVerifiedDate     DATETIME       = NULL, 
                                           @LastVerifiedBy       INT            = NULL, 
                                           @LastVerifiedRemark   NVARCHAR(255)  = NULL, 
                                           @LastVerifiedStatus   INT            = NULL, 
                                           @SummaryBy            INT            = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [RecordWorking_CREATE] 
                     @DailyCode, 
                     @ProjectCode, 
                     @Date, 
                     @TotalWorker, 
                     @TotalFullTime, 
                     @TotalPartTime, 
                     @TotalOvertime, 
                     @TotalQuota, 
                     @AverageWage, 
                     @TotalWage, 
                     @Status, 
                     @PictureTime, 
                     @DetailTime, 
                     @SummaryTime, 
                     @Remark, 
                     @CreatedDate, 
                     @CreatedBy, 
                      @VerifiedDate			,
					  @VerifiedBy        	,
					  @VerifiedRemark    	,
					  @VerifiedStatus    	,
					  @ConfigId          	,
					  @LastVerifiedDate  	,
					  @LastVerifiedBy    	,
					  @LastVerifiedRemark	,
					  @LastVerifiedStatus	,
					  @SummaryBy  

        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [RecordWorking_UPDATE] 
                     @DailyCode, 
                     @ProjectCode, 
                     @Date, 
                     @TotalWorker, 
                     @TotalFullTime, 
                     @TotalPartTime, 
                     @TotalOvertime, 
                     @TotalQuota, 
                     @AverageWage, 
                     @TotalWage, 
                     @Status, 
                     @PictureTime, 
                     @DetailTime, 
                     @SummaryTime, 
                     @Remark, 
                     @ModifiedDate, 
                     @ModifiedBy, 
                    @VerifiedDate			,
					  @VerifiedBy        	,
					  @VerifiedRemark    	,
					  @VerifiedStatus    	,
					  @ConfigId          	,
					  @LastVerifiedDate  	,
					  @LastVerifiedBy    	,
					  @LastVerifiedRemark	,
					  @LastVerifiedStatus	,
					  @SummaryBy  
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [RecordWorking_READ_BY] 
                     @DailyCode;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [RecordWorking_SELECT] 
                     @DailyCode,
					 @Date;
        END;
		IF @Control_Character_In='count'
			BEGIN
				EXEC [RecordWorking_COUNT]
					@Date,
					@Status;
		END;
    END;
        SET ANSI_NULLS ON;
GO
