SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Equipment_CREATE] @EquipmentCode        VARCHAR(10)   = NULL, 
                                         @RunningNo            INT           = NULL, 
                                         @EquipmentTypeId      INT           = NULL, 
                                         @RunningNoType        INT           = NULL, 
                                         @EquipmentPlanId      INT           = NULL, 
                                         @Type                 INT           = NULL, 
                                         @ProjectCode          VARCHAR(10)   = NULL, 
                                         @EquipmentName        NVARCHAR(255) = NULL, 
                                         @EquipmentDescription NVARCHAR(MAX) = NULL, 
                                         @Status               INT           = NULL, 
                                         @Active               BIT           = NULL, 
                                         @CreatedDate          DATETIME      = NULL, 
                                         @CreatedBy            INT           = NULL
AS
     INSERT INTO [MAC].[Equipment]
     ([EquipmentCode], 
      [RunningNo], 
      [EquipmentTypeId], 
      [RunningNoType], 
      [EquipmentPlanId], 
      [Type], 
      [ProjectCode], 
      [EquipmentName], 
      [EquipmentDescription], 
      [Status], 
      [Active], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@EquipmentCode, 
      @RunningNo, 
      @EquipmentTypeId, 
      @RunningNoType, 
      @EquipmentPlanId, 
      @Type, 
      @ProjectCode, 
      @EquipmentName, 
      @EquipmentDescription, 
      @Status, 
      @Active, 
      @CreatedDate, 
      @CreatedBy
     );
     SELECT SCOPE_IDENTITY() AS EquipmentId;
GO
