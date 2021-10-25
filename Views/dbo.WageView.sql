SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[WageView]
AS
SELECT        WageId AS Wage_WageId, WorkerCode AS Wage_WorkerCode, Wage AS Wage_Wage, StartDate AS Wage_StartDate, Active AS Wage_Active, ApprovedDate AS Wage_ApprovedDate, ApprovedBy AS Wage_ApprovedBy, 
                         CreatedDate AS Wage_CreatedDate, CreatedBy AS Wage_CreatedBy, ModifiedDate AS Wage_ModifiedDate, ModifiedBy AS Wage_ModifiedBy
FROM            dbo.Wage

GO
