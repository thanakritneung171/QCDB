SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ConfigWorker_CRUD] @Control_Character_In            NVARCHAR(100) = NULL, 
                                          @ConfigId                        INT           = NULL, 
                                          @DailySentWorkBefore             DATETIME      = NULL, 
                                          @DailySentDescriptionWorkBefore  DATETIME      = NULL, 
										  @DailyVerifyRecordBefore		DATETIME   =NULL,
                                          @DailySentOvertimeBefore         DATETIME      = NULL, 
                                          @OTAmountWorkLowest              INT           = NULL, 
                                          @DailyStartWorkSummary            DATETIME      = NULL, 
                                          @DailyEndWorkSummary             DATETIME      = NULL, 
                                          @MonthlyStartSentRequestMonthly  INT           = NULL, 
                                          @MonthlySentRequestMonthlyBefore INT           = NULL, 
                                          @MonthlyReminderBefore           INT           = NULL, 
                                          @MonthlyStartDate                INT           = NULL, 
                                          @MonthlyEndDate                  INT           = NULL, 
                                          @Active                          BIT           = NULL, 
                                          @CreatedDate                     DATETIME      = NULL, 
                                          @CreatedBy                       INT           = NULL, 
                                          @ModifiedDate                    DATETIME      = NULL, 
                                          @ModifiedBy                      INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [ConfigWorker_CREATE] 
                     @DailySentWorkBefore, 
                     @DailySentDescriptionWorkBefore, 
					 @DailyVerifyRecordBefore,
                     @DailySentOvertimeBefore, 
                     @OTAmountWorkLowest, 
                     @DailyStartWorkSummary, 
                     @DailyEndWorkSummary, 
                     @MonthlyStartSentRequestMonthly, 
                     @MonthlySentRequestMonthlyBefore, 
                     @MonthlyReminderBefore, 
                     @MonthlyStartDate, 
                     @MonthlyEndDate, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [ConfigWorker_UPDATE] 
                     @ConfigId, 
                     @DailySentWorkBefore, 
                     @DailySentDescriptionWorkBefore, 
					 @DailyVerifyRecordBefore,
                     @DailySentOvertimeBefore, 
                     @OTAmountWorkLowest, 
                     @DailyStartWorkSummary, 
                     @DailyEndWorkSummary, 
                     @MonthlyStartSentRequestMonthly, 
                     @MonthlySentRequestMonthlyBefore, 
                     @MonthlyReminderBefore, 
                     @MonthlyStartDate, 
                     @MonthlyEndDate, 
                     @Active, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [ConfigWorker_READ_BY] 
                     @ConfigId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [ConfigWorker_SELECT] 
                     @ConfigId;
        END;
    END;
        SET ANSI_NULLS ON;
GO
