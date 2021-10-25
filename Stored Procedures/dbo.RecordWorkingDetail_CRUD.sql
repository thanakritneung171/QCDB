SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorkingDetail_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                                 @DailyDetailId        INT           = NULL, 
                                                 @DailyCode            VARCHAR(20)   = NULL, 
                                                 @WorkerCode           VARCHAR(10)   = NULL, 
                                                 @WorkType             INT           = NULL, 
                                                 @WorkGroup            INT           = NULL, 
                                                 @WorkTime             INT           = NULL, 
                                                 @Round                INT           = NULL, 
                                                 @Description          NVARCHAR(255) = NULL, 
                                                 @Remark               NVARCHAR(255) = NULL, 
                                                 @TotalOverTime        FLOAT         = NULL, 
                                                 @Owner                NVARCHAR(50)  = NULL, 
                                                 @HasDefaultMonthly    BIT           = NULL, 
                                                 @ProjectCode          VARCHAR(10)   = NULL, 
                                                 @RecordWorkingDate    DATE      = NULL,
												 @Date					DATETIME	=NULL,
												 @Wage					DECIMAL(18,2)=NULL,
												 @Amount				DECIMAL(18,5)=NULL,
												 @Total					DECIMAL(18,2)=NULL

AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [RecordWorkingDetail_CREATE] 
                     @DailyCode, 
                     @WorkerCode, 
                     @WorkType, 
                     @WorkGroup, 
                     @WorkTime, 
                     @Round, 
                     @Description, 
                     @Remark, 
                     @TotalOverTime, 
                     @Owner, 
                     @HasDefaultMonthly,
					 @Wage,
					 @Amount,
					 @Total;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [RecordWorkingDetail_UPDATE] 
                     @DailyDetailId, 
                     @DailyCode, 
                     @WorkerCode, 
                     @WorkType, 
                     @WorkGroup, 
                     @WorkTime, 
                     @Round, 
                     @Description, 
                     @Remark, 
                     @TotalOverTime, 
                     @Owner, 
                     @HasDefaultMonthly,
					 @Wage,
					 @Amount,
					 @Total;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [RecordWorkingDetail_READ_BY] 
                     @DailyDetailId,
					 @DailyCode,
					 @WorkerCode;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [RecordWorkingDetail_SELECT] 
                     @DailyDetailId, 
                     @DailyCode, 
                     @ProjectCode, 
                     @WorkerCode,
					 @RecordWorkingDate
        END;
        IF @Control_Character_In = 'selectAll'
            BEGIN
                EXEC [RecordWorkingDetail_SELECT_ALL] 
                     @DailyCode;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [RecordWorkingDetail_DELETE] 
                     @DailyDetailId;
        END;
        IF @Control_Character_In = 'summary'
            BEGIN
                EXEC [RecordWorkingDetail_GetSummary] 
					 @ProjectCode, 
                     @DailyCode,
					 @WorkerCode;
        END;
		IF @Control_Character_In = 'getByDate'
            BEGIN
                EXEC [RecordWorkingDetail_GETBYDATE] 
                     @Date;
        END;
		IF @Control_Character_In = 'getCount'
            BEGIN
                EXEC [RecordWorkingDetail_GetWorkDailyCount] 
                     @DailyCode,
					 @WorkerCode,
					 @WorkTime;
        END;
    END;
        SET ANSI_NULLS ON;
GO
