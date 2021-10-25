SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Worker_SEARCH_BY_PROCECTCODE_NEW] 
-- Add the parameters for the stored procedure here

	@MonthlyCode_in nvarchar(50)= null,
	@ProjectCode_In nvarchar(50)= null
AS
BEGIN

--declare @MonthlyCode_in  nvarchar(50) ='AP052021/P007',
--	@ProjectCode_In nvarchar(50)='P007' ;


		select * from WorkerView WKV
		LEFT JOIN WorkAtProject WAP on WKV.Worker_ProjectId = WAP.ProjectId
		where WAP.ProjectCode= @ProjectCode_In
		AND  WAP.WorkerCode not in  
		(select WorkerCode from ApprovedMonthlyDetail where MonthlyCode=@MonthlyCode_in)

   



END
GO
