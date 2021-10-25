SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[Wage_UPDATED_NEW] 
	---- Add the parameters Form Get Values
	@WageId_In			INT,
	@WorkerCode_In	varchar(10)			,
	@Wage_In		decimal(10, 2)		,
	@StartDate_In	datetime			,
	@Active_In		bit					,
	@CreatedBy_In	int				
	AS
	
 BEGIN

    DECLARE @WageCount INT
    

		BEGIN TRY
		-- update 
		Update  Wage Set 
			WorkerCode=@WorkerCode_In,
			Wage=@Wage_In,
			StartDate=@StartDate_In,
			Active=@Active_In,
			ModifiedBy=@CreatedBy_In,
			ModifiedDate=GETDATE()
		WHERE WageId= @WageId_In; 



	 SELECT  @WageCount =COUNT(WageId)  from wage where WorkerCode=@WorkerCode_In AND StartDate <= Getdate() and ApprovedBy IS NOT NULL  
	 
	 IF(@WageCount= 0)
	 begin 
	  Update Worker set WageId= @WageId_In where WorkerCode=@WorkerCode_In;
	  end
	 else BEGIN
	  	  Update Worker set WageId = (select TOP 1 WageId from wage where WorkerCode=@WorkerCode_In AND StartDate <= Getdate() and ApprovedBy IS NOT NULL  order by  WageId DESC) where WorkerCode=@WorkerCode_In;

	 END
     

		
		Select *,MessageReturn='Update Data Successfully' from WageView WHERE Wage_WageId = @WageId_In


	END TRY
	BEGIN CATCH
		SELECT MessageReturn = ERROR_MESSAGE();
	END CATCH


END
GO
