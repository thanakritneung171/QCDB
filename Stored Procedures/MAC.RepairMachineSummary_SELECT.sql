SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairMachineSummary_SELECT] @RepairNotifyCode NVARCHAR(10)
AS
     SELECT *
     FROM [MAC].[RepairMachineSummary]
     WHERE RepairNotifyCode = @RepairNotifyCode;
GO
