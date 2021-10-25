SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairManGroup_READ_BY] @RepairManGroupId INT = NULL
AS
     SELECT *
     FROM [MAC].[RepairManGroup]
     WHERE RepairManGroupId = @RepairManGroupId;
GO
