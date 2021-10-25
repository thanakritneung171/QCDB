SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthly_UPDATED_Status] 
			@MonthlyCode	varchar(20)			,	
			@Status   int			,
			@ModifiedBy	int					
AS
     UPDATE ApprovedMonthly
       SET 
		Status		= @Status,
		ModifiedBy	    = @ModifiedBy,
		ModifiedDate    = GETDATE()
	
     WHERE MonthlyCode = @MonthlyCode;

	 


	 select * from ApprovedMonthlyView  where  ApprovedMonthly_MonthlyCode=@MonthlyCode;




GO
