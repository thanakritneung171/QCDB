SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthly_UPDATE_Status_Check] 
			@MonthlyCode	varchar(20)			,	
			@Status   int			,
			@CheckBy	int					
AS
     UPDATE ApprovedMonthly
       SET 
		Status		= @Status,
		CheckBy	    = @CheckBy,
		CheckDate    = GETDATE()
	
     WHERE MonthlyCode = @MonthlyCode;

	 


	 select * from ApprovedMonthlyView  where  ApprovedMonthly_MonthlyCode=@MonthlyCode;




GO
