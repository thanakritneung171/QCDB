SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthly_DELETE] 
	@MonthlyCode varchar(20) = NULL
AS
     DELETE
     FROM ApprovedMonthly
     WHERE MonthlyCode = @MonthlyCode






GO
