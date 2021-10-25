SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairQueue_DELETE] @QueueCode NVARCHAR(10) = NULL
AS
     DECLARE @RunningNo INT
	 DECLARE @RepairManGroupId INT

	 SELECT @RunningNo = RunningNo , @RepairManGroupId = RepairManGroupId
	 FROM [MAC].[RepairQueue]
	 WHERE QueueCode = @QueueCode 

	 UPDATE [MAC].[RepairQueue]
	 SET RunningNo = RunningNo - 1
	 WHERE RepairManGroupId = @RepairManGroupId AND RunningNo >= @RunningNo

     DELETE [MAC].[RepairQueue]
     WHERE QueueCode = @QueueCode;
GO
