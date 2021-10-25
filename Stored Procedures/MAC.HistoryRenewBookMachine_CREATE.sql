SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[HistoryRenewBookMachine_CREATE] @BookMachineId INT      = NULL, 
                                                        @OldStartDate  DATE     = NULL, 
                                                        @NewStartDate  DATE     = NULL, 
                                                        @OldEndDate    DATE     = NULL, 
                                                        @NewEndDate    DATE     = NULL, 
                                                        @Status        INT      = NULL, 
                                                        @CreatedDate   DATETIME = NULL, 
                                                        @CreatedBy     INT      = NULL
AS
     INSERT INTO [MAC].[HistoryRenewBookMachine]
     ([BookMachineId], 
      [OldStartDate], 
      [NewStartDate], 
      [OldEndDate], 
      [NewEndDate], 
      [Status], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@BookMachineId, 
      @OldStartDate, 
      @NewStartDate, 
      @OldEndDate, 
      @NewEndDate, 
      @Status, 
      @CreatedDate, 
      @CreatedBy
     );
GO
