SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairManGroup_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                            @RepairManGroupId     INT           = NULL, 
                                            @RepairManGroupName   NVARCHAR(250) = NULL, 
                                            @Active               BIT           = NULL, 
                                            @RepairType           INT           = NULL, 
                                            @Note                 NVARCHAR(MAX) = NULL, 
                                            @CreatedDate          DATETIME      = NULL, 
                                            @CreatedBy            INT           = NULL, 
                                            @ModifiedDate         DATETIME      = NULL, 
                                            @ModifiedBy           INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[RepairManGroup_Create] 
                     @RepairManGroupName, 
                     @Active, 
                     @RepairType, 
                     @Note, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[RepairManGroup_UPDATE] 
                     @RepairManGroupId, 
                     @RepairManGroupName, 
                     @Active, 
                     @RepairType, 
                     @Note, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [MAC].[RepairManGroup_DELETE] 
                     @RepairManGroupId;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[RepairManGroup_READ_BY] 
                     @RepairManGroupId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[RepairManGroup_SELECT] 
                     @RepairType, 
                     @Active;
        END;
    END;
        SET ANSI_NULLS ON;
GO
