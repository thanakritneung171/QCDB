SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrderOtherDetail_SELECT] @WorkOrderId            INT = NULL, 
                                                    @OtherDetailGroupWorkId INT = NULL
AS
     SELECT *
     FROM [con].[WorkOrderOtherDetail]
     WHERE(WorkOrderId = @WorkOrderId
           OR @WorkOrderId IS NULL)
          AND (OtherDetailGroupWorkId = @OtherDetailGroupWorkId
               OR @OtherDetailGroupWorkId IS NULL)
          AND Active = 1;
GO
