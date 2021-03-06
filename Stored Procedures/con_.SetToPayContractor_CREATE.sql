SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[SetToPayContractor_CREATE] @WorkOrderId       INT            = NULL, 
                                                  @WorkOrderDetailId INT            = NULL, 
                                                  @ContractorCode    NVARCHAR(10)   = NULL, 
                                                  @ContractorName    NVARCHAR(256)  = NULL, 
                                                  @WorkId            INT            = NULL, 
                                                  @ProjectTypeId     INT            = NULL, 
                                                  @ProjectCode       NVARCHAR(10)   = NULL, 
                                                  @HouseId           INT            = NULL, 
                                                  @UnitId            INT            = NULL, 
                                                  @UnitName          NVARCHAR(256)  = NULL, 
                                                  @Price             DECIMAL(10, 2)  = NULL, 
                                                  @Amount            DECIMAL(10, 2)  = NULL, 
                                                  @TotalPrice        DECIMAL(10, 2)  = NULL, 
                                                  @WorkUnit          NVARCHAR(100)  = NULL, 
                                                  @Note              NVARCHAR(256)  = NULL, 
                                                  @Status            INT            = NULL, 
                                                  @Active            BIT            = NULL, 
                                                  @CreatedDate       DATETIME       = NULL, 
                                                  @CreatedBy         INT            = NULL, 
                                                  @WHT               DECIMAL(10, 2)  = NULL, 
                                                  @VATType           INT            = NULL, 
                                                  @VAT               DECIMAL(10, 2)  = NULL, 
                                                  @NetPrice          DECIMAL(10, 2)  = NULL
AS
     INSERT INTO [con].[SetToPayContractor]
     (WorkOrderId, 
      WorkOrderDetailId, 
      ContractorCode, 
      ContractorName, 
      WorkId, 
      ProjectTypeId, 
      ProjectCode, 
      HouseId, 
      UnitId, 
      UnitName, 
      Price, 
      Amount, 
      TotalPrice, 
      WorkUnit, 
      Note, 
      STATUS, 
      Active, 
      CreatedDate, 
      CreatedBy, 
      WHT, 
      VATType, 
      VAT, 
      NetPrice
     )
     VALUES
     (@WorkOrderId, 
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
      @NetPrice
     );
     SELECT SCOPE_IDENTITY() AS Id;
GO
