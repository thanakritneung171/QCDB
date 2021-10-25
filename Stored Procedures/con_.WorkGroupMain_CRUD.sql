SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkGroupMain_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                            @Id                   INT           = NULL, 
                                            @ProjectTypeId        INT           = NULL, 
                                            @MainName             NVARCHAR(50)  = NULL, 
                                            @Active               BIT           = NULL, 
                                            @CreatedDate          DATETIME      = NULL, 
                                            @CreatedBy            INT           = NULL, 
                                            @ModifiedDate         DATETIME      = NULL, 
                                            @ModifiedBy           INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[WorkGroupMain_Create] 
                     @ProjectTypeId, 
                     @MainName, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[WorkGroupMain_UPDATE] 
                     @Id, 
                     @MainName, 
                     @Active, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[WorkGroupMain_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[WorkGroupMain_SELECT] 
                     @ProjectTypeId, 
                     @Active;
        END;
    END;
        SET ANSI_NULLS ON;





GO
