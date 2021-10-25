SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairLog_SELECT] @RepairNotifyCode     NVARCHAR(10)  = NULL
AS
     SELECT *
     FROM [MAC].[RepairLog] r
	 WHERE (RepairNotifyCode = @RepairNotifyCode OR @RepairNotifyCode IS NULL)
GO
