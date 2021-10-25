SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ApprovedMonthly_UPDATE_Status_Approved] 
			@MonthlyCode	varchar(20)			,	
			@Status   int			,
			@ApprovedBy	int					
AS
     UPDATE ApprovedMonthly
       SET 
		Status		= @Status,
		ApprovedBy	    = @ApprovedBy,
		ApprovedDate    = GETDATE()
	
     WHERE MonthlyCode = @MonthlyCode;

	 


	 select * from ApprovedMonthlyView  where  ApprovedMonthly_MonthlyCode=@MonthlyCode;




GO
