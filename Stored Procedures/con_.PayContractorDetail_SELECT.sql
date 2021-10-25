SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[PayContractorDetail_SELECT] @PayContractorCode     VARCHAR(10) = NULL, 
                                                   @ProjectCode           VARCHAR(10) = NULL, 
                                                   @ContractorCode        VARCHAR(10) = NULL, 
                                                   @Status                INT         = NULL, 
                                                   @Active                BIT         = NULL, 
                                                   @CreatePaymentDateForm DATE        = NULL, 
                                                   @CreatePaymentDateTo   DATE        = NULL, 
                                                   @WorkGroupMainId       INT         = NULL
AS
     SELECT *, 
            pc.CreatedDate AS CreatePayContractorDate , wm.MainName as WorkGroupMainName,
			(SELECT TOP 1 w.SetToPayType
				  FROM [con].[WorkOrderInPayment] wp
				  JOIN [con].[WorkOrder] w on w.Id = wp.WorkOrderId 
				  WHERE wp.PayContractorCode = pcd.PayContractorCode AND w.WorkId = pcd.WorkId) as SetToPayType,
			(CASE WHEN (SELECT COUNT(*)
				  FROM [con].[WorkOrderInPayment] wp
				  JOIN [con].[SetToPayContractor] s on s.Id = wp.SetToPayContractorId 
				  WHERE wp.PayContractorCode = pcd.PayContractorCode AND s.Active = 1) > 0 THEN 0 ELSE 1 END) as IsDeleted
     FROM [con].[PayContractorDetail] pcd
          JOIN [con].[PayContractor] pc ON pc.PayContractorCode = pcd.PayContractorCode
		  LEFT JOIN [con].[WorkGroupMain] wm ON wm.Id = pcd.WorkGroupMainId
     WHERE(pcd.PayContractorCode = @PayContractorCode
           OR @PayContractorCode IS NULL)
          AND (pcd.ProjectCode = @ProjectCode
               OR @ProjectCode IS NULL)
          AND (pcd.STATUS = @Status
               OR @Status IS NULL)
		  AND (pcd.Active = @Active
			   OR @Active IS NULL)
          AND (pc.Active = @Active
               OR @Active IS NULL)
          AND ((CAST(pc.CreatedDate AS DATE) >= CAST(@CreatePaymentDateForm AS DATE)
                OR @CreatePaymentDateForm IS NULL)
               AND (CAST(pc.CreatedDate AS DATE) <= CAST(@CreatePaymentDateTo AS DATE)
                    OR @CreatePaymentDateTo IS NULL))
          AND (pcd.ContractorCode = @ContractorCode
               OR @ContractorCode IS NULL)
          AND (pcd.WorkGroupMainId = @WorkGroupMainId
               OR @WorkGroupMainId IS NULL);


GO
