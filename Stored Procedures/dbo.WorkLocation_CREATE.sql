SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[WorkLocation_CREATE] 
	-- Add the parameters for the stored procedure here
		@DailyDetailId	int	,
		@MonthlyDetailId int,
		@UnitId	int	,
		@UnitName	nvarchar(50),
		@FromProjectCode varchar(10)			
	AS
BEGIN
	INSERT INTO WorkLocation(DailyDetailId,
	MonthlyDetailId,
	UnitId,
	UnitName,
	FromProjectCode
	)
	VALUES(@DailyDetailId,
	@MonthlyDetailId,
	@UnitId			,
	@UnitName		,
	@FromProjectCode						
	);

	select * from WorkLocationView where WorkLocation_Id=@@IDENTITY;
END
	
	--SELECT SCOPE_IDENTITY() AS Id;

GO
