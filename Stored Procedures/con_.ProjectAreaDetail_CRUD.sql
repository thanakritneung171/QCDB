SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectAreaDetail_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                               @Id                   INT            = NULL, 
                                               @ProjectCode          VARCHAR(10)    = NULL, 
                                               @BuildingType         INT            = NULL, 
                                               @BuildingId           INT            = NULL, 
                                               @Amount               DECIMAL(10, 2)  = NULL, 
                                               @Area                 DECIMAL(10, 2)  = NULL, 
                                               @CreatedDate          DATETIME       = NULL, 
                                               @CreatedBy            INT            = NULL, 
                                               @ModifiedDate         DATETIME       = NULL, 
                                               @ModifiedBy           INT            = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[ProjectAreaDetail_Create] 
                     @ProjectCode, 
                     @BuildingType, 
                     @BuildingId, 
                     @Amount, 
                     @Area, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[ProjectAreaDetail_UPDATE] 
                     @Id, 
                     @ProjectCode, 
                     @BuildingType, 
                     @BuildingId, 
                     @Amount, 
                     @Area, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[ProjectAreaDetail_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[ProjectAreaDetail_SELECT] 
                     @ProjectCode;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [con].[ProjectAreaDetail_DELETE] 
                     @ProjectCode;
        END;
    END;
        SET ANSI_NULLS ON;
GO
