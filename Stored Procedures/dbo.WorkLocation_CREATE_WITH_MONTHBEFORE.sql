SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[WorkLocation_CREATE_WITH_MONTHBEFORE] 
	-- Add the parameters for the stored procedure here
		@MonthlyCode nvarchar(20)
	AS

insert into WorkLocation (MonthlyDetailId,UnitId,UnitName,FromProjectCode)
 select AMD.MonthlyDetailId,WAP.UnitId,WAP.UnitName,WAP.FromProjectCode
 from ApprovedMonthlyDetail   AMD
left join WorkLocation WAP on WAP.MonthlyDetailId = AMD.MonthlyDetailIdBefore
where AMD.MonthlyCode= @MonthlyCode
GO
