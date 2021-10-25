SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthly_UPDATE] @MonthlyCode  VARCHAR(20), 
                                               @ProjectCode  VARCHAR(10), 
                                               @MonthNumber  INT, 
                                               @YearNumber   INT, 
                                               @TotalWorker  INT, 
                                               @StartDate    DATETIME, 
                                               @EndDate      DATETIME, 
                                               @Status       INT, 
                                               @ApprovedDate DATETIME, 
                                               @ApprovedBy   INT, 
                                               @ModifiedDate DATETIME, 
                                               @ModifiedBy   INT
AS
     UPDATE ApprovedMonthly
       SET 
           ProjectCode = @ProjectCode, 
           MonthNumber = @MonthNumber, 
           YearNumber = @YearNumber, 
           TotalWorker = @TotalWorker, 
		   StartDate = @StartDate,
		   EndDate = @EndDate,
           STATUS = @Status, 
           ApprovedDate = @ApprovedDate, 
           ApprovedBy = @ApprovedBy, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy
     WHERE MonthlyCode = @MonthlyCode;
GO
