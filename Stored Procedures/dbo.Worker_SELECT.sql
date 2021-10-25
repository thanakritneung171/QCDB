SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Worker_SELECT] 

		@WorkerCode varchar(10) = NULL
AS
     SELECT wk.*,w.Wage,p.ProjectName,p.ProjectCode
     FROM Worker wk
	 left join Wage w on wk.WageId = w.WageId
	 left join WorkAtProject wp on wp.ProjectId = wk.ProjectId
	 left join [con].[Project] p on p.ProjectCode = wp.ProjectCode
     WHERE wk.WorkerCode = @WorkerCode OR @WorkerCode IS NULL






GO
