SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthly_GET_MonthlyCode_BY_StartDate_NEW] 
-- Add the parameters for the stored procedure here


-- Add the parameters for the stored procedure here
@ProjectCode  VARCHAR(20), 
@Date   DATETIME

AS
BEGIN


SELECT TOP (1000) [MonthlyCode]
      ,[ProjectCode]
      ,[MonthNumber]
      ,[YearNumber]
      ,[TotalWorker]
      ,[StartDate]
      ,[EndDate]
      ,[Status]
      ,[CreatedDate]
      ,[CreatedBy]
      ,[ApprovedDate]
      ,[ApprovedBy]
      ,[ModifiedDate]
      ,[ModifiedBy]
	  ,[ConfigId]
  FROM [dbo].[ApprovedMonthly]
  where ProjectCode= @ProjectCode AND  StartDate <= @Date AND EndDate >= @Date AND Status=3
  

END
GO
