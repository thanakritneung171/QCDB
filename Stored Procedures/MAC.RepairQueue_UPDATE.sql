SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairQueue_UPDATE] @QueueCode        NVARCHAR(10) = NULL, 
                                           @RepairNotifyCode NVARCHAR(10) = NULL, 
                                           @RepairManGroupId INT          = NULL, 
                                           @IsInstant        BIT          = NULL, 
                                           @RunningNo        INT          = NULL, 
                                           @ModifiedBy       INT          = NULL, 
                                           @ModifiedDate     DATETIME     = NULL, 
                                           @AssignWorkDay         INT          = NULL
AS
     UPDATE [MAC].[RepairQueue]
       SET 
           QueueCode = @QueueCode, 
           RepairNotifyCode = @RepairNotifyCode, 
           RepairManGroupId = @RepairManGroupId, 
           IsInstant = @IsInstant, 
           RunningNo = @RunningNo, 
           ModifiedBy = @ModifiedBy, 
           ModifiedDate = @ModifiedDate, 
           AssignWorkDay = @AssignWorkDay
     WHERE QueueCode = @QueueCode;

GO
