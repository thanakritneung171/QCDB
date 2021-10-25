SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[Wage_CREATE_NEW] 
	---- Add the parameters Form Get Values
	@WorkerCode_In	varchar(10)			,
	@Wage_In	decimal(10, 2)			,
	@StartDate_In	datetime			,
	@Active_In	bit	 = 0					,
	@CreatedBy_In	int	 =1			
	AS
	
    
	-- =============================================
	-- Add the parameters for the stored procedure here

   DECLARE @IdIDENTITY int
   DECLARE @WageCount int
   DECLARE @IdWageActive int



	-- =============================================


	IF (@StartDate_In <= GETDATE())
	BEGIN
		SET @Active_In=1;
	END

	

		-- insert 
	  INSERT INTO  Wage
		(WorkerCode,
		Wage,
		StartDate,
		Active,
		CreatedBy,
		CreatedDate
		)

		 VALUES
		(@WorkerCode_In		,
		@Wage_In			,
		@StartDate_In		,
		@Active_In			,
		@CreatedBy_In,
		GETDATE()
		)

		SET @IdIDENTITY = SCOPE_IDENTITY(); 




	 select  @WageCount =COUNT(WageId)  from wage where WorkerCode=@WorkerCode_In AND StartDate <= Getdate() ;

	 --SELECT COUNT(Wage_WageId) FROM dbo.WageView WHERE
	 
	 IF(@WageCount= 0)
	 begin 

	 INSERT INTO  Wage		(WorkerCode,Wage,StartDate,Active,CreatedBy,CreatedDate)
					  VALUES(@WorkerCode_In,0,GETDATE(),1,@CreatedBy_In,GETDATE())

			 	  Update Worker set WageId= SCOPE_IDENTITY() ,Active=1 where WorkerCode=@WorkerCode_In;
	 end
	 else 
	 BEGIN

		SET	@IdWageActive =  (select TOP 1 WageId from wage where WorkerCode=@WorkerCode_In AND StartDate <= Getdate()  order by  WageId DESC)

	  	  Update Worker set WageId = @IdWageActive ,Active=1  WHERE WorkerCode=@WorkerCode_In;
		  
		  UPDATE dbo.Wage SET Active= 0 WHERE WorkerCode=@WorkerCode_In AND WageId NOT IN (@IdWageActive);

	 end


		  SELECT * from WageView where  Wage_WageId =  @IdIDENTITY ;

GO
