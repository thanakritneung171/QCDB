SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthlyDetail_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                                   @MonthlyDetailId      INT, 
                                                   @MonthlyCode          VARCHAR(20), 
                                                   @WorkerCode           VARCHAR(10), 
                                                   @WorkType             INT, 
                                                   @WorkGroup            INT, 
                                                   @Description          NVARCHAR(255), 
                                                   @Owner                NVARCHAR(50), 
                                                   @Holiday              NVARCHAR(50), 
                                                   @Wage                 DECIMAL(10, 2), 
                                                   @Remark               NVARCHAR(255), 
                                                   @Date                 DATETIME, 
                                                   @ProjectCode          VARCHAR(10)
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [ApprovedMonthlyDetail_CREATE] 
                     @MonthlyCode, 
                     @WorkerCode, 
                     @WorkType, 
                     @WorkGroup, 
                     @Description, 
                     @Owner, 
                     @Holiday, 
                     @Wage, 
                     @Remark;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [ApprovedMonthlyDetail_UPDATE] 
                     @MonthlyDetailId, 
                     @MonthlyCode, 
                     @WorkerCode, 
                     @WorkType, 
                     @WorkGroup, 
                     @Description, 
                     @Owner, 
                     @Holiday, 
                     @Wage, 
                     @Remark;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [ApprovedMonthlyDetail_READ_BY] 
                     @MonthlyDetailId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [ApprovedMonthlyDetail_SELECT] 
                     @MonthlyDetailId, 
                     @MonthlyCode, 
                     @Date,
					 @ProjectCode
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [ApprovedMonthlyDetail_DELETE] 
                     @MonthlyDetailId;
        END;
        IF @Control_Character_In = 'summary'
            BEGIN
                EXEC [ApprovedMonthlyDetail_GetSummary] 
                     @Date;
        END;
    END;
        SET ANSI_NULLS ON;
GO
