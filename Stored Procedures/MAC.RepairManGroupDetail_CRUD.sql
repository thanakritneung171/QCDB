SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairManGroupDetail_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                                 @RepairManGroupId     INT           = NULL, 
                                                 @UserId               INT           = NULL, 
                                                 @CreatedDate          DATETIME      = NULL, 
                                                 @CreatedBy            INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[RepairManGroupDetail_Create] 
                     @RepairManGroupId, 
                     @UserId, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [MAC].[RepairManGroupDetail_Delete]
				@RepairManGroupId,
				@UserId
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[RepairManGroupDetail_SELECT]
				@RepairManGroupId,
				@UserId
        END;
    END;
        SET ANSI_NULLS ON;
GO
