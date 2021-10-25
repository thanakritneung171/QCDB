SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[CheckWork_CRUD] @Control_Character_In   NVARCHAR(100) = NULL, 
                                        @Id                     INT           = NULL, 
                                        @ProjectCode            NVARCHAR(10)  = NULL, 
                                        @HouseId                INT           = NULL, 
                                        @WorkId                 INT           = NULL, 
                                        @WorkPriceId            INT           = NULL, 
                                        @UnitNumber             NVARCHAR(30)  = NULL, 
                                        @QCPass                 BIT           = NULL, 
                                        @Amount                 NCHAR(10)     = NULL, 
                                        @LastModifiedQCPassDate DATETIME      = NULL, 
                                        @LastModifiedQCPassBy   INT           = NULL, 
                                        @LastModifiedAmountDate DATETIME      = NULL, 
                                        @LastModifiedAmountBy   INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[CheckWork_Create] 
                     @ProjectCode, 
                     @HouseId, 
                     @WorkId, 
                     @WorkPriceId, 
                     @UnitNumber, 
                     @QCPass, 
                     @Amount, 
                     @LastModifiedQCPassDate, 
                     @LastModifiedQCPassBy, 
                     @LastModifiedAmountDate, 
                     @LastModifiedAmountBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[CheckWork_UPDATE] 
                     @Id, 
                     @QCPass, 
                     @Amount, 
                     @LastModifiedQCPassDate, 
                     @LastModifiedQCPassBy, 
                     @LastModifiedAmountDate, 
                     @LastModifiedAmountBy;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[CheckWork_SELECT] 
                     @ProjectCode, 
                     @HouseId, 
                     @WorkId,
					 @UnitNumber
        END;
    END;
        SET ANSI_NULLS ON;

GO
