SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthly_CREATE_NEW] 
-- Add the parameters for the stored procedure here


-- Add the parameters for the stored procedure here
@MonthlyCode  VARCHAR(20), 
@ProjectCode  VARCHAR(10), 
@MonthNumber  INT, 
@YearNumber   INT, 
@Status       INT, 
@CreatedBy       INT, 
@ConfigId    INT
AS
     INSERT INTO ApprovedMonthly
     (MonthlyCode, 
      ProjectCode, 
      MonthNumber, 
      YearNumber, 
      STATUS, 
      CreatedDate, 
      CreatedBy,
	  ConfigId
     )
     VALUES
     (@MonthlyCode, 
      @ProjectCode, 
      @MonthNumber, 
      @YearNumber, 
      @Status, 
      GETDATE(), 
      @CreatedBy,
	  @ConfigId
     );





	 select * from ApprovedMonthlyView Where ApprovedMonthly_MonthlyCode = @MonthlyCode;




	--@Project_In varchar(20)  = NULL
	--AS
	--BEGIN
		
	--INSERT INTO  dbo.ApprovedMonthly
	--(
	--	MonthlyCode,
	--	ProjectCode,
	--	MonthNumber,
	--	YearNumber
	--)
	--Values( 'AP'+left(CONVERT ( char(20) , getdate() , 101 ),2)+left(CONVERT ( char(20) , getdate() , 102 ),4)+'/'+@Project_In,
	--@Project_In,MONTH(getdate()),YEAR(getdate()))

	--	select AppM.*,PRO.* from ApprovedMonthlyView AppM
	--	left join ProjectView Pro on AppM.ApprovedMonthly_ProjectCode= Pro.Project_ProjectCode
	--	where   AppM.ApprovedMonthly_MonthlyCode = @@IDENTITY


GO
