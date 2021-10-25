SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthly_CREATE] 
-- Add the parameters for the stored procedure here
@MonthlyCode  VARCHAR(20), 
@ProjectCode  VARCHAR(10), 
@MonthNumber  INT, 
@YearNumber   INT, 
@TotalWorker  INT, 
@StartDate    DATETIME, 
@EndDate      DATETIME, 
@Status       INT, 
@ApprovedDate DATETIME, 
@ApprovedBy   INT, 
@CreatedDate  DATETIME, 
@CreatedBy    INT
AS
     INSERT INTO ApprovedMonthly
     (MonthlyCode, 
      ProjectCode, 
      MonthNumber, 
      YearNumber, 
      TotalWorker, 
	  StartDate,
	  EndDate,
      STATUS, 
      ApprovedDate, 
      ApprovedBy, 
      CreatedDate, 
      CreatedBy
     )
     VALUES
     (@MonthlyCode, 
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
      @CreatedBy
     );
GO
