SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[WorkLocation_UPDATE] 
		@Id int ,
		@DailyDetailId int,
			@MonthlyDetailId int,
		@UnitId int,
		@UnitName nvarchar(50)
AS
BEGIN
     UPDATE WorkLocation
       SET DailyDetailId = @DailyDetailId,
	   MonthlyDetailId = @MonthlyDetailId,
	   UnitId = @UnitId,
	   UnitName = @UnitName
     WHERE Id = @Id;

	 select * from WorkLocationView where WorkLocation_Id= @Id
END





GO
