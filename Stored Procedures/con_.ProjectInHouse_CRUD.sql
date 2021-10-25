SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInHouse_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                             @Id                   INT           = NULL, 
                                             @HouseId              INT           = NULL, 
                                             @ProjectCode          NVARCHAR(10)  = NULL, 
                                             @Note                 NVARCHAR(255) = NULL, 
											 @Active			   BIT			 = NULL,
                                             @CreatedDate          DATETIME      = NULL, 
                                             @CreatedBy            INT           = NULL, 
                                             @ModifiedDate         DATETIME      = NULL, 
                                             @ModifiedBy           INT           = NULL,
											 @Status			   INT			 = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[ProjectInHouse_Create] 
                     @HouseId, 
                     @ProjectCode, 
                     @Note, 
                     @CreatedDate, 
                     @CreatedBy,
					 @Status
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[ProjectInHouse_UPDATE] 
                     @Id, 
                     @HouseId, 
                     @ProjectCode, 
                     @Note, 
					 @Active,
                     @ModifiedDate, 
                     @ModifiedBy,
					 @Status
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[ProjectInHouse_READ_BY] 
                     @Id,
					 @HouseId,
					 @ProjectCode
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[ProjectInHouse_SELECT] 
                     @HouseId,
					 @ProjectCode,
					 @Status
        END;
    END;
        SET ANSI_NULLS ON;




GO
