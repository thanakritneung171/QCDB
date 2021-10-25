SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthly_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                             @MonthlyCode          VARCHAR(20)   = NULL, 
                                             @ProjectCode          VARCHAR(10)   = NULL, 
                                             @MonthNumber          INT           = NULL, 
                                             @YearNumber           INT           = NULL, 
                                             @TotalWorker          INT           = NULL, 
                                             @StartDate            DATETIME      = NULL, 
                                             @EndDate              DATETIME      = NULL, 
                                             @Status               INT           = NULL, 
                                             @ApprovedDate         DATETIME      = NULL, 
                                             @ApprovedBy           INT           = NULL, 
                                             @CreatedDate          DATETIME      = NULL, 
                                             @CreatedBy            INT           = NULL, 
                                             @ModifiedDate         DATETIME      = NULL, 
                                             @ModifiedBy           INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [ApprovedMonthly_CREATE] 
                     @MonthlyCode, 
                     @ProjectCode, 
                     @MonthNumber, 
                     @YearNumber, 
                     @TotalWorker, 
                     @StartDate, 
                     @EndDate, 
                     @Status, 
                     @ApprovedDate, 
                     @ApprovedBy, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [ApprovedMonthly_UPDATE] 
                     @MonthlyCode, 
                     @ProjectCode, 
                     @MonthNumber, 
                     @YearNumber, 
                     @TotalWorker, 
                     @StartDate, 
                     @EndDate, 
                     @Status, 
                     @ApprovedDate, 
                     @ApprovedBy, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [ApprovedMonthly_READ_BY] 
                     @MonthlyCode;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [ApprovedMonthly_SELECT] 
                     @MonthlyCode, 
                     @ProjectCode, 
                     @MonthNumber, 
                     @YearNumber;
        END;
		   IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [ApprovedMonthly_DELETE] 
                     @MonthlyCode;
        END;
    END;
        SET ANSI_NULLS ON;
GO
