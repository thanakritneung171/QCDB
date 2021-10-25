SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[CheckWorkStatement_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                                 @Id                   INT            = NULL, 
                                                 @ProjectCode          NVARCHAR(10)   = NULL, 
                                                 @HouseId              INT            = NULL, 
                                                 @WorkId               INT            = NULL, 
                                                 @WorkPriceId          INT            = NULL, 
                                                 @UnitNumber           NVARCHAR(30)   = NULL, 
                                                 @QCPass               BIT            = NULL, 
                                                 @OldAmount            DECIMAL(10, 2)  = NULL, 
                                                 @Amount               DECIMAL(10, 2)  = NULL, 
                                                 @Type                 INT            = NULL, 
                                                 @CreatedDate          DATETIME       = NULL, 
                                                 @CreatedBy            INT            = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[CheckWorkStatement_CREATE] 
                     @ProjectCode, 
                     @HouseId, 
                     @WorkId, 
                     @WorkPriceId, 
                     @UnitNumber, 
                     @QCPass, 
                     @OldAmount, 
                     @Amount, 
                     @Type, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[CheckWorkStatement_SELECT] 
                     @ProjectCode, 
                     @HouseId, 
                     @WorkId, 
                     @WorkPriceId, 
                     @UnitNumber;
        END;
    END;
        SET ANSI_NULLS ON;

GO
