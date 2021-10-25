SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthly_UPDATED_TotalWorker] 
			@MonthlyCode	varchar(20)			,	
			@TotalWorker   int			,
			@ModifiedBy	int					
AS
     UPDATE ApprovedMonthly
       SET 
		TotalWorker		= @TotalWorker,
		ModifiedBy	    = @ModifiedBy,
		ModifiedDate    = GETDATE()
	
     WHERE MonthlyCode = @MonthlyCode;

	 


	 select * from ApprovedMonthlyView  where  ApprovedMonthly_MonthlyCode=@MonthlyCode;




GO
