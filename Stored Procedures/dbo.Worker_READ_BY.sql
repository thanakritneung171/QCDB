SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Worker_READ_BY] 
	@WorkerCode varchar(10) = NULL
AS
     SELECT wk.*,w.Wage,p.ProjectName,p.ProjectCode
     FROM Worker wk
	 left join Wage w on wk.WorkerCode = w.WorkerCode 
	 left join WorkAtProject wp on wp.WorkerCode = wk.WorkerCode
	 left join [con].[Project] p on wp.ProjectCode = p.ProjectCode
     WHERE wk.WorkerCode = @WorkerCode






GO
