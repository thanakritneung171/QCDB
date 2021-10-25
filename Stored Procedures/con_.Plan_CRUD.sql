SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Plan_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                  @PlanCode             VARCHAR(10)    = NULL, 
                                  @PlanName             NVARCHAR(256)  = NULL, 
                                  @PlanGroup            INT            = NULL, 
                                  @PlanType             INT            = NULL, 
                                  @Area                 DECIMAL(10, 2)  = NULL, 
                                  @MinArea              DECIMAL(10, 2)  = NULL, 
                                  @Floor                INT            = NULL, 
                                  @BedRoom              INT            = NULL, 
                                  @BathRoom             INT            = NULL, 
                                  @Parking              INT            = NULL, 
                                  @AreaUnit             INT            = NULL, 
                                  @Description          NVARCHAR(MAX)  = NULL, 
                                  @Active               BIT            = NULL, 
                                  @CreatedDate          DATETIME       = NULL, 
                                  @CreatedBy            INT            = NULL, 
                                  @ModifiedDate         DATETIME       = NULL, 
                                  @ModifiedBy           INT            = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[Plan_Create] 
                     @PlanCode, 
                     @PlanName, 
                     @PlanGroup, 
                     @PlanType, 
                     @Area, 
                     @MinArea, 
                     @Floor, 
                     @BedRoom, 
                     @BathRoom, 
                     @Parking, 
                     @AreaUnit, 
                     @Description, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[Plan_UPDATE] 
                     @PlanCode, 
                     @PlanName, 
                     @PlanGroup, 
                     @PlanType, 
                     @Area, 
                     @MinArea, 
                     @Floor, 
                     @BedRoom, 
                     @BathRoom, 
                     @Parking, 
                     @AreaUnit, 
                     @Description, 
                     @Active, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[Plan_READ_BY] 
                     @PlanCode;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[Plan_SELECT] 
                     @PlanName, 
                     @PlanGroup, 
                     @PlanType, 
                     @Active;
        END;
    END;
        SET ANSI_NULLS ON;
GO
