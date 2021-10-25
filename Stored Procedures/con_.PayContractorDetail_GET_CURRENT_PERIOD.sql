SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[PayContractorDetail_GET_CURRENT_PERIOD] @ContractorCode    NVARCHAR(10) = NULL, 
                                                               @PayContractorCode VARCHAR(10)  = NULL
AS
     DECLARE @Period INT;
     SET @Period = 1;
     SELECT TOP 1 @Period = Period + 1
     FROM [con].[PayContractorDetail] pcd
     WHERE pcd.ContractorCode = @ContractorCode
           AND Active = 1 
		   AND (PayContractorCode != @PayContractorCode OR @PayContractorCode IS NULL)
     ORDER BY pcd.Period DESC;
     SELECT @Period AS Period;
GO
