SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectOrganizeChart_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                                  @EmployeeCode         VARCHAR(50)   = NULL, 
                                                  @ProjectCode          VARCHAR(10)   = NULL, 
                                                  @CreatedBy            INT           = NULL, 
                                                  @CreatedDate          DATETIME      = NULL, 
                                                  @ModifiedBy           INT           = NULL, 
                                                  @ModifiedDate         DATETIME      = NULL, 
                                                  @Active               INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[ProjectOrganizeChart_Create] 
                     @EmployeeCode, 
                     @ProjectCode, 
                     @CreatedBy, 
                     @CreatedDate, 
                     @Active;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[ProjectOrganizeChart_UPDATE] 
                     @EmployeeCode, 
                     @ProjectCode, 
                     @ModifiedBy, 
                     @ModifiedDate, 
                     @Active;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[ProjectOrganizeChart_READ_BY] 
                     @EmployeeCode, 
                     @ProjectCode;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[ProjectOrganizeChart_SELECT] 
                     @EmployeeCode, 
                     @ProjectCode;
        END;
    END;
        SET ANSI_NULLS ON;
GO
