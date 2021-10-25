SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[EquipmentPartDetail_CREATE] @EquipmentId INT            = NULL, 
                                                   @Number      INT            = NULL, 
                                                   @PartName    NVARCHAR(255)  = NULL, 
                                                   @Amount      DECIMAL(10, 2)  = NULL
AS
     INSERT INTO [MAC].[EquipmentPartDetail]
     ([EquipmentId], 
      [Number], 
      [PartName], 
      [Amount]
     )
     VALUES
     (@EquipmentId, 
      @Number, 
      @PartName, 
      @Amount
     );
GO
