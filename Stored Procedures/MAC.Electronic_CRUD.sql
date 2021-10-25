SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Electronic_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                        @ElectronicCode       NVARCHAR(10)   = NULL, 
                                        @ElectronicTypeId     INT            = NULL, 
                                        @ProjectCode          NVARCHAR(10)   = NULL, 
                                        @Brand                NVARCHAR(MAX)  = NULL, 
                                        @Model                NVARCHAR(MAX)  = NULL, 
                                        @Size                 NVARCHAR(MAX)  = NULL, 
                                        @Color                NVARCHAR(MAX)  = NULL, 
                                        @Specification        NVARCHAR(MAX)  = NULL, 
                                        @SerialNumber         NVARCHAR(MAX)  = NULL, 
                                        @Active               BIT            = NULL, 
                                        @Status               INT            = NULL, 
                                        @RunningNo            INT            = NULL, 
                                        @BuyDate              DATETIME       = NULL, 
                                        @Price                DECIMAL(10, 2)  = NULL, 
                                        @EstimatedPrice       DECIMAL(10, 2)  = NULL, 
                                        @Amount               DECIMAL(10, 2)  = NULL, 
                                        @CreatedDate          DATETIME       = NULL, 
                                        @CreatedBy            INT            = NULL, 
                                        @ModifiedDate         DATETIME       = NULL, 
                                        @ModifiedBy           INT            = NULL, 
                                        @SearchElectronic     NVARCHAR(MAX)  = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[Electronic_Create] 
                     @ElectronicCode, 
                     @ElectronicTypeId, 
                     @ProjectCode, 
                     @Brand, 
                     @Model, 
                     @Size, 
                     @Color, 
                     @Specification, 
                     @SerialNumber, 
                     @Active, 
                     @Status, 
                     @RunningNo, 
                     @BuyDate, 
                     @Price, 
                     @EstimatedPrice, 
                     @Amount, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[Electronic_UPDATE] 
                     @ElectronicCode, 
                     @ElectronicTypeId, 
                     @ProjectCode, 
                     @Brand, 
                     @Model, 
                     @Size, 
                     @Color, 
                     @Specification, 
                     @SerialNumber, 
                     @Active, 
                     @Status, 
                     @BuyDate, 
                     @Price, 
                     @EstimatedPrice, 
                     @Amount, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[Electronic_READ_BY] 
                     @ElectronicCode;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[Electronic_SELECT] 
                     @ElectronicTypeId, 
                     @ProjectCode, 
                     @SerialNumber, 
                     @Active;
        END;
        IF @Control_Character_In = 'search'
            BEGIN
                EXEC [MAC].[Electronic_SEARCH] 
                     @SearchElectronic, 
                     @ProjectCode;
        END;
    END;
        SET ANSI_NULLS ON;
GO
