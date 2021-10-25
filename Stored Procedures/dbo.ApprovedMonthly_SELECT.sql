SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthly_SELECT] 
		@MonthlyCode varchar(20) = NULL,
		@ProjectCode varchar(10) = NULL,
		@MonthNumber int =NULL,
		@YearNumber int=NULL
AS
     SELECT *
     FROM ApprovedMonthly 
     WHERE (MonthlyCode = @MonthlyCode OR @MonthlyCode IS NULL) AND (ProjectCode = @ProjectCode OR @ProjectCode IS NULL) AND (MonthNumber = @MonthNumber OR @MonthNumber IS NULL)
	 AND (YearNumber = @YearNumber OR @YearNumber IS NULL)






GO
