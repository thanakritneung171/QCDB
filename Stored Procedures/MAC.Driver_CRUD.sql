SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Driver_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                     @DriverId             INT, 
                                     @DriverName           NVARCHAR(255), 
                                     @DriverTel            NVARCHAR(255),
									 @Active			   BIT, 
                                     @CreatedDate          DATETIME, 
                                     @CreatedBy            INT, 
                                     @ModifiedDate         DATETIME, 
                                     @ModifiedBy           INT
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[Driver_Create] 
                     @DriverName, 
                     @DriverTel,
					 @Active, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[Driver_UPDATE] 
                     @DriverId, 
                     @DriverName, 
                     @DriverTel,
					 @Active, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[Driver_READ_BY] 
                     @DriverId
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[Driver_SELECT] 
                     @Active;
        END;
    END;
        SET ANSI_NULLS ON;
GO
