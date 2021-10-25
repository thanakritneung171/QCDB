SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[HistoryTransferEquipment_CREATE] @EquipmentId    INT           = NULL, 
                                                        @EquipmentName  NVARCHAR(255) = NULL, 
                                                        @OldProjectCode VARCHAR(50)   = NULL, 
                                                        @NewProjectCode VARCHAR(50)   = NULL, 
                                                        @Note           NVARCHAR(255) = NULL, 
                                                        @TransferDate    DATETIME      = NULL, 
                                                        @TransferBy      INT           = NULL
AS
     INSERT INTO [MAC].[HistoryTransferEquipment]
     ([EquipmentId], 
      [EquipmentName], 
      [OldProjectCode], 
      [NewProjectCode], 
      [Note], 
      [TransferDate], 
      [TransferBy]
     )
     VALUES
     (@EquipmentId, 
      @EquipmentName, 
      @OldProjectCode, 
      @NewProjectCode, 
      @Note, 
      @TransferDate, 
      @TransferBy
     );
GO
