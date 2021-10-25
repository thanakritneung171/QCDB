SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[EquipmentType_CREATE] @EquipmentTypeCode VARCHAR(5)    = NULL, 
                                             @EquipmentTypeName NVARCHAR(255) = NULL, 
                                             @Type              INT           = NULL, 
                                             @Active            BIT           = NULL, 
                                             @CreatedDate       DATETIME      = NULL, 
                                             @CreatedBy         INT           = NULL
AS
     INSERT INTO [MAC].[EquipmentType]
     ([EquipmentTypeCode], 
      [EquipmentTypeName], 
      [Type], 
      [Active], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@EquipmentTypeCode, 
      @EquipmentTypeName, 
      @Type, 
      @Active, 
      @CreatedDate, 
      @CreatedBy
     );
     SELECT SCOPE_IDENTITY() AS EquipmentTypeId;
GO
