SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Project_CRUD] @Control_Character_In  NVARCHAR(100) = NULL, 
                                     @ProjectCode           VARCHAR(10)   = NULL, 
                                     @Number                INT           = NULL, 
                                     @ProjectName           NVARCHAR(100) = NULL, 
                                     @ComCode               VARCHAR(5)    = NULL, 
                                     @Address               NVARCHAR(256) = NULL, 
                                     @TotalDeedArea         VARCHAR(10)   = NULL, 
                                     @StartConstructionDate DATETIME      = NULL, 
                                     @ProjectEngineer       VARCHAR(10)   = NULL, 
                                     @Active                BIT           = NULL, 
                                     @CreatedDate           DATETIME      = NULL, 
                                     @CreatedBy             INT           = NULL, 
                                     @ModifiedDate          DATETIME      = NULL, 
                                     @ModifiedBy            INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[Project_Create] 
                     @ProjectCode, 
                     @ProjectName, 
                     @ComCode, 
                     @Address, 
                     @TotalDeedArea, 
                     @StartConstructionDate, 
                     @ProjectEngineer, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[Project_UPDATE] 
                     @ProjectCode, 
                     @ProjectName, 
                     @ComCode, 
                     @Address, 
                     @TotalDeedArea, 
                     @StartConstructionDate, 
                     @ProjectEngineer, 
                     @Active, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[Project_READ_BY] 
                     @ProjectCode;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[Project_SELECT] 
                     @ProjectName, 
                     @ComCode, 
                     @Active;
        END;
    END;
        SET ANSI_NULLS ON;
GO
