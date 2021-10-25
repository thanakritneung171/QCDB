SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthly_READ_BY] 
	@MonthlyCode varchar(20) = NULL
AS
     SELECT *
     FROM ApprovedMonthly
     WHERE MonthlyCode = @MonthlyCode






GO
