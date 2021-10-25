SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Unit_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                  @Id                   INT            = NULL, 
                                  @ProjectCode          VARCHAR(10)    = NULL, 
                                  @UnitType             INT            = NULL, 
                                  @UnitName             NVARCHAR(256)  = NULL, 
                                  @Area                 DECIMAL(10, 2)  = NULL, 
                                  @AreaUnit             INT            = NULL, 
                                  @DeedArea             DECIMAL(10, 2)  = NULL, 
                                  @PlanCode             VARCHAR(10)    = NULL, 
                                  @PeriodSetToPayWork   INT            = NULL, 
                                  @WorkAmount           DECIMAL(10, 2)  = NULL, 
                                  @WorkUnit             INT            = NULL, 
                                  @WorkDoneAmount       DECIMAL(10, 2)  = NULL, 
                                  @CreatedDate          DATETIME       = NULL, 
                                  @CreatedBy            INT            = NULL, 
                                  @ModifiedDate         DATETIME       = NULL, 
                                  @ModifiedBy           INT            = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[Unit_Create] 
                     @ProjectCode, 
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
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[Unit_UPDATE] 
                     @Id, 
                     @ProjectCode, 
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
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[Unit_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[Unit_SELECT] 
                     @ProjectCode,
					 @UnitType,
					 @PlanCode
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [con].[Unit_DELETE] 
                     @Id;
        END;
    END;
        SET ANSI_NULLS ON;
GO
