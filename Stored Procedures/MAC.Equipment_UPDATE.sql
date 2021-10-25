SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Equipment_UPDATE] @EquipmentId          INT           = NULL, 
                                         @EquipmentCode        VARCHAR(10)   = NULL, 
                                         @RunningNo            INT           = NULL, 
                                         @EquipmentTypeId      INT           = NULL, 
                                         @EquipmentPlanId      INT           = NULL, 
                                         @ProjectCode          VARCHAR(10)   = NULL, 
                                         @EquipmentName        NVARCHAR(255) = NULL, 
                                         @EquipmentDescription NVARCHAR(MAX) = NULL, 
                                         @Status               INT           = NULL, 
                                         @Active               BIT           = NULL, 
                                         @ModifiedDate         DATETIME      = NULL, 
                                         @ModifiedBy           INT           = NULL
AS
     UPDATE [MAC].[Equipment]
       SET 
           EquipmentCode = @EquipmentCode, 
           EquipmentTypeId = @EquipmentTypeId, 
           RunningNo = @RunningNo, 
           ProjectCode = @ProjectCode, 
           EquipmentName = @EquipmentName, 
           EquipmentDescription = @EquipmentDescription, 
           STATUS = @Status, 
           Active = @Active, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy
     WHERE EquipmentId = @EquipmentId;
GO
