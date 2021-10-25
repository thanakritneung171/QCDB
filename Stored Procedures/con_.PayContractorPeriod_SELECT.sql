SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[PayContractorPeriod_SELECT] 
AS
      SELECT *
	  FROM [con].[PayContractorPeriod]
	  ORDER BY Number
GO
