SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairManGroup_DELETE] @RepairManGroupId INT = NULL
AS
     DELETE [MAC].[RepairManGroup]
     WHERE RepairManGroupId = @RepairManGroupId;
GO
