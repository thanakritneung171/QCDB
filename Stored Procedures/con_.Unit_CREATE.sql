SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Unit_CREATE] @ProjectCode        VARCHAR(10)    = NULL, 
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
                                     @CreatedDate        DATETIME       = NULL, 
                                     @CreatedBy          INT            = NULL
AS
     INSERT INTO [con].[Unit]
     (ProjectCode, 
      UnitType, 
      UnitName, 
      Area, 
      AreaUnit, 
      DeedArea, 
      PlanCode, 
      PeriodSetToPayWork, 
      WorkAmount, 
      WorkUnit, 
      WorkDoneAmount, 
      CreatedDate, 
      CreatedBy
     )
     VALUES
     (@ProjectCode, 
      @UnitType, 
      @UnitName, 
      @Area, 
      @AreaUnit, 
      @DeedArea, 
      @PlanCode, 
      @PeriodSetToPayWork, 
      @WorkAmount, 
      @WorkUnit, 
      @WorkDoneAmount, 
      @CreatedDate, 
      @CreatedBy
     );
GO
