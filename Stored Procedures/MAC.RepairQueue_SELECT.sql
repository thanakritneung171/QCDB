SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairQueue_SELECT] @RepairManGroupId INT          = NULL,
										   @SearchForRepair  BIT		  = NULL
AS
     SELECT *, rg.RepairManGroupName  as RepairManGroupName , r.RepairProgress as RepairProgress
	 FROM RepairQueue q
	 LEFT JOIN RepairManGroup rg on q.RepairManGroupId = rg.RepairManGroupId 
	 LEFT JOIN RepairNotify r on r.RepairNotifyCode = q.RepairNotifyCode
	 WHERE q.RepairManGroupId = @RepairManGroupId AND (r.RepairProgress <= 5 OR ISNULL(@SearchForRepair,1) = 0);

GO
