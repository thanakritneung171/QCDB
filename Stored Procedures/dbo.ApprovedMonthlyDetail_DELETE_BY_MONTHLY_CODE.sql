SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthlyDetail_DELETE_BY_MONTHLY_CODE]
@MonthlyCode NVARCHAR(50) = NULL
AS
BEGIN	

	delete ApprovedMonthlyDetail  where  MonthlyCode =  @MonthlyCode


END

GO
