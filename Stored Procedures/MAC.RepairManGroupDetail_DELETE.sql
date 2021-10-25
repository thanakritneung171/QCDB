SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairManGroupDetail_DELETE] @RepairManGroupId INT = NULL, 
                                                     @UserId           INT = NULL
AS
     DELETE [MAC].[RepairManGroupDetail]
     WHERE RepairManGroupId = @RepairManGroupId
           AND UserId = @UserId;
GO
