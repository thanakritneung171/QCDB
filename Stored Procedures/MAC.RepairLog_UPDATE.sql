SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairLog_UPDATE] @RepairLogId        INT           = NULL, 
                                         @RepairNotifyCode   NVARCHAR(10)  = NULL, 
                                         @ReasonBrokenDetail NVARCHAR(250) = NULL, 
                                         @BrokenDetail       NVARCHAR(250) = NULL, 
                                         @RepairDetail       NVARCHAR(250) = NULL, 
                                         @LogStatus          INT           = NULL, 
                                         @LogType            INT           = NULL, 
                                         @ModifiedDate       DATETIME      = NULL, 
                                         @ModifiedBy         INT           = NULL
AS
     UPDATE [MAC].[RepairLog]
       SET 
           [RepairNotifyCode] = @RepairNotifyCode, 
           [ReasonBrokenDetail] = @ReasonBrokenDetail, 
           [BrokenDetail] = @BrokenDetail, 
           [RepairDetail] = @RepairDetail, 
           [LogStatus] = @LogStatus, 
           [LogType] = @LogType, 
           [ModifiedDate] = @ModifiedDate, 
           [ModifiedBy] = @ModifiedBy
     WHERE RepairLogId = @RepairLogId;
GO
