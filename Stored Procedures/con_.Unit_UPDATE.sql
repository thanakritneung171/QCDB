SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Unit_UPDATE] @Id                 INT            = NULL, 
                                     @ProjectCode        VARCHAR(10)    = NULL, 
                                     @UnitType           INT            = NULL, 
                                     @UnitName           NVARCHAR(256)  = NULL, 
                                     @Area               DECIMAL(10, 2)  = NULL, 
                                     @AreaUnit           INT            = NULL, 
                                     @DeedArea           DECIMAL(10, 2)  = NULL, 
                                     @PlanCode           VARCHAR(10)    = NULL, 
                                     @PeriodSetToPayWork INT            = NULL, 
                                     @WorkAmount         DECIMAL(10, 2)  = NULL, 
                                     @WorkUnit           INT            = NULL, 
                                     @WorkDoneAmount     DECIMAL(10, 2)  = NULL, 
                                     @ModifiedDate       DATETIME       = NULL, 
                                     @ModifiedBy         INT            = NULL
AS
     UPDATE [con].[Unit]
       SET 
           ProjectCode = @ProjectCode, 
           UnitType = @UnitType, 
           UnitName = @UnitName, 
           Area = @Area, 
           AreaUnit = @AreaUnit, 
           DeedArea = @DeedArea, 
           PlanCode = @PlanCode, 
           PeriodSetToPayWork = @PeriodSetToPayWork, 
           WorkAmount = @WorkAmount, 
           WorkUnit = @WorkUnit, 
           WorkDoneAmount = @WorkDoneAmount, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy
     WHERE Id = @Id;
GO
