SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrderInPayment_SELECT_ApproveSetToPaycontractorBY] @PayContractorCode    INT         = NULL
AS
  /****** Script for SelectTopNRows command from SSMS  ******/
  SELECT s.ApproveLevel1By , s.ApproveLevel2By
  FROM [con].[WorkOrderInPayment] wp
  JOIN [con].[SetToPayContractor] s on s.Id = SetToPayContractorId
  WHERE wp.PayContractorCode = @PayContractorCode AND s.ApproveLevel1By IS NOT NULL AND s.ApproveLevel2By IS NOT NULL
GO
