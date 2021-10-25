SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[SetToPayContractor_CRUD] @Control_Character_In              NVARCHAR(100)  = NULL, 
                                                @Id                                INT            = NULL, 
                                                @WorkOrderId                       INT            = NULL, 
                                                @WorkOrderDetailId                 INT            = NULL, 
                                                @ContractorCode                    NVARCHAR(10)   = NULL, 
                                                @ContractorName                    NVARCHAR(256)  = NULL, 
                                                @WorkId                            INT            = NULL, 
                                                @ProjectTypeId                     INT            = NULL, 
                                                @ProjectCode                       NVARCHAR(10)   = NULL, 
                                                @HouseId                           INT            = NULL, 
                                                @UnitId                            INT            = NULL, 
                                                @UnitName                          NVARCHAR(256)  = NULL, 
                                                @Price                             DECIMAL(10, 2)  = NULL, 
                                                @Amount                            DECIMAL(10, 2)  = NULL, 
                                                @TotalPrice                        DECIMAL(10, 2)  = NULL, 
                                                @WorkUnit                          NVARCHAR(100)  = NULL, 
                                                @Note                              NVARCHAR(256)  = NULL, 
                                                @Status                            INT            = NULL, 
                                                @Active                            BIT            = NULL, 
                                                @CreatedDate                       DATETIME       = NULL, 
                                                @CreatedBy                         INT            = NULL, 
                                                @ModifiedDate                      DATETIME       = NULL, 
                                                @ModifiedBy                        INT            = NULL, 
                                                @ApproveLevel1Date                 DATETIME       = NULL, 
                                                @ApproveLevel1By                   INT            = NULL, 
                                                @ApproveLevel2Date                 DATETIME       = NULL, 
                                                @ApproveLevel2By                   INT            = NULL, 
                                                @PayContractorCode                 VARCHAR(10)    = NULL, 
                                                @SearchCreateDateForm              DATETIME       = NULL, 
                                                @SearchCreateDateTo                DATETIME       = NULL, 
                                                @SearchStatus                      INT            = NULL, 
                                                @SearchCreatePayContractorDateForm DATE           = NULL, 
                                                @SearchCreatePayContractorDateTo   DATE           = NULL, 
                                                @SetToPayType                      INT            = NULL, 
                                                @SearchGroupWorkMainId             INT            = NULL, 
                                                @OtherDetailGroupWorkId            INT            = NULL, 
                                                @WHT                               DECIMAL(10, 2)  = NULL, 
                                                @VATType                           INT            = NULL, 
                                                @VAT                               DECIMAL(10, 2)  = NULL, 
                                                @NetPrice                          DECIMAL(10, 2)  = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[SetToPayContractor_Create] 
                     @WorkOrderId, 
                     @WorkOrderDetailId, 
                     @ContractorCode, 
                     @ContractorName, 
                     @WorkId, 
                     @ProjectTypeId, 
                     @ProjectCode, 
                     @HouseId, 
                     @UnitId, 
                     @UnitName, 
                     @Price, 
                     @Amount, 
                     @TotalPrice, 
                     @WorkUnit, 
                     @Note, 
                     @Status, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy, 
                     @WHT, 
                     @VATType, 
                     @VAT, 
                     @NetPrice;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[SetToPayContractor_UPDATE] 
                     @Id, 
                     @ContractorCode, 
                     @ContractorName, 
                     @Price, 
                     @Amount, 
                     @TotalPrice, 
                     @WorkUnit, 
                     @Note, 
                     @Status, 
                     @Active, 
                     @ModifiedDate, 
                     @ModifiedBy, 
                     @ApproveLevel1Date, 
                     @ApproveLevel1By, 
                     @ApproveLevel2Date, 
                     @ApproveLevel2By, 
                     @PayContractorCode, 
                     @WHT, 
                     @VATType, 
                     @VAT, 
                     @NetPrice;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[SetToPayContractor_READ_BY] 
                     @Id, 
                     @WorkOrderId, 
                     @WorkOrderDetailId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[SetToPayContractor_SELECT] 
                     @ContractorCode, 
                     @WorkId, 
                     @ProjectTypeId, 
                     @ProjectCode, 
                     @HouseId, 
                     @UnitName, 
					 @Price,
                     @Status, 
                     @Active, 
                     @PayContractorCode, 
                     @SearchCreateDateForm, 
                     @SearchCreateDateTo, 
                     @SearchStatus, 
                     @SearchCreatePayContractorDateForm, 
                     @SearchCreatePayContractorDateTo, 
                     @SetToPayType, 
                     @SearchGroupWorkMainId, 
                     @OtherDetailGroupWorkId
        END;
    END;
        SET ANSI_NULLS ON;
GO
