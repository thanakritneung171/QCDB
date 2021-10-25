SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairLog_CREATE] @RepairNotifyCode   NVARCHAR(10)  = NULL, 
                                         @ReasonBrokenDetail NVARCHAR(250) = NULL, 
                                         @BrokenDetail       NVARCHAR(250) = NULL, 
                                         @RepairDetail       NVARCHAR(250) = NULL, 
                                         @LogStatus          INT           = NULL, 
                                         @LogType            INT           = NULL, 
                                         @CreatedDate        DATETIME      = NULL, 
                                         @CreatedBy          INT           = NULL
AS
     INSERT INTO [MAC].[RepairLog]
     ([RepairNotifyCode], 
      [ReasonBrokenDetail], 
      [BrokenDetail], 
      [RepairDetail], 
      [LogStatus], 
      [LogType], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@RepairNotifyCode, 
      @ReasonBrokenDetail, 
      @BrokenDetail, 
      @RepairDetail, 
      @LogStatus, 
      @LogType, 
      @CreatedDate, 
      @CreatedBy
     );
     SELECT SCOPE_IDENTITY() AS RepairLogId;
GO
