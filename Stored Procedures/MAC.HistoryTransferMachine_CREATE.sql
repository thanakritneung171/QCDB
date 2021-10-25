SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[HistoryTransferMachine_CREATE] @MachineCode    NVARCHAR(10)  = NULL, 
                                                      @OldProjectCode NVARCHAR(10)  = NULL, 
                                                      @NewProjectCode NVARCHAR(10)  = NULL, 
                                                      @Status         INT           = NULL, 
                                                      @Note           NVARCHAR(MAX) = NULL, 
                                                      @TransferDate   DATETIME      = NULL, 
                                                      @TransferBy     INT           = NULL, 
                                                      @CreatedDate    DATETIME      = NULL, 
                                                      @CreatedBy      INT           = NULL
AS
     INSERT INTO [MAC].[HistoryTransferMachine]
     ([MachineCode], 
      [OldProjectCode], 
      [NewProjectCode], 
      [Status],
	  [Note],
	  [TransferDate],
	  [TransferBy],
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@MachineCode, 
      @OldProjectCode, 
      @NewProjectCode, 
      @Status,
	  @Note,        
	  @TransferDate,
	  @TransferBy,   
      @CreatedDate, 
      @CreatedBy
     );
     SELECT SCOPE_IDENTITY() AS Id;
GO
