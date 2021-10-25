SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[EquipmentPlan_CREATE] @EquipmentPlanName NVARCHAR(255) = NULL, 
                                             @Number            INT           = NULL, 
											 @Type            INT           = NULL, 
                                             @Active            BIT           = NULL, 
                                             @CreatedDate       DATETIME      = NULL, 
                                             @CreatedBy         INT           = NULL
AS
     INSERT INTO [MAC].[EquipmentPlan]
     ([EquipmentPlanName], 
      [Number], 
	  [Type],
      [Active], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@EquipmentPlanName, 
      (SELECT (CASE WHEN COUNT(Number) = 0 THEN 1 ELSE (SELECT TOP 1 Number + 1 FROM [MAC].[EquipmentPlan] WHERE Type = @Type ORDER BY Number DESC) END)  AS total FROM [MAC].[EquipmentPlan] WHERE Type = @Type), 
	  @Type,
      @Active, 
      @CreatedDate, 
      @CreatedBy
     );
     SELECT SCOPE_IDENTITY() AS EquipmentPlanId;
GO
