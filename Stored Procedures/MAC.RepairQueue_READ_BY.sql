SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairQueue_READ_BY] @QueueCode NVARCHAR(10) = NULL,
											@RepairNotifyCode     NVARCHAR(10)  = NULL	
AS
     SELECT * ,rg.RepairManGroupName  as RepairManGroupName , r.RepairProgress as RepairProgress
     FROM RepairQueue q
	 LEFT JOIN RepairManGroup rg on q.RepairManGroupId = rg.RepairManGroupId 
	 LEFT JOIN RepairNotify r on r.RepairNotifyCode = q.RepairNotifyCode
     WHERE (q.QueueCode = @QueueCode OR @QueueCode IS NULL) AND (q.RepairNotifyCode = @RepairNotifyCode OR @RepairNotifyCode IS NULL)
GO
