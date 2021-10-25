SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[House_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                   @Id                   INT           = NULL, 
                                   @Name                 NVARCHAR(50)  = NULL, 
                                   @ProjectTypeId        INT           = NULL, 
                                   @Description          NVARCHAR(255) = NULL, 
                                   @Active               BIT           = NULL, 
                                   @PlanCode             VARCHAR(10)   = NULL, 
                                   @CreatedDate          DATETIME      = NULL, 
                                   @CreatedBy            INT           = NULL, 
                                   @ModifiedDate         DATETIME      = NULL, 
                                   @ModifiedBy           INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[House_Create] 
                     @Name, 
                     @ProjectTypeId, 
                     @Description, 
                     @Active, 
					 @PlanCode,
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[House_UPDATE] 
                     @Id, 
                     @Name, 
                     @ProjectTypeId, 
                     @Description, 
                     @Active, 
					 @PlanCode,
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[House_READ_BY] 
                     @Id,
					 @PlanCode
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[House_SELECT] 
                     @ProjectTypeId, 
					 @PlanCode,
                     @Active;
        END;
    END;
        SET ANSI_NULLS ON;

GO
