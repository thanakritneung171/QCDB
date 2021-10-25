SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[ElectronicType_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                            @ElectronicTypeId     INT, 
                                            @ElectronicTypeCode   NVARCHAR(10), 
                                            @ElectronicTypeName   NVARCHAR(250), 
                                            @Note                 NVARCHAR(MAX), 
                                            @Active               BIT, 
                                            @CreatedDate          DATETIME, 
                                            @CreatedBy            INT, 
                                            @ModifiedDate         DATETIME, 
                                            @ModifiedBy           INT
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[ElectronicType_Create] 
                     @ElectronicTypeCode, 
                     @ElectronicTypeName, 
                     @Note, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[ElectronicType_UPDATE] 
                     @ElectronicTypeId, 
                     @ElectronicTypeCode, 
                     @ElectronicTypeName, 
                     @Note, 
                     @Active, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[ElectronicType_READ_BY] 
                     @ElectronicTypeId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[ElectronicType_SELECT] 
                     @ElectronicTypeName, 
                     @Active;
        END;
    END;
        SET ANSI_NULLS ON;
GO
