SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrderOtherDetail_CREATE] @WorkOrderId            INT            = NULL, 
                                                    @WorkName               NVARCHAR(50)   = NULL, 
                                                    @OtherDetailGroupWorkId INT            = NULL, 
                                                    @Amount                 DECIMAL(10, 2)  = NULL, 
                                                    @Price                  DECIMAL(10, 2)  = NULL, 
                                                    @TotalPrice             DECIMAL(10, 2)  = NULL, 
                                                    @WorkUnit               NVARCHAR(50)   = NULL, 
                                                    @ContractorName         NVARCHAR(256)  = NULL, 
                                                    @ContractorCode         VARCHAR(10)    = NULL, 
                                                    @Status                 INT            = NULL, 
                                                    @Active                 BIT            = NULL, 
                                                    @CreatedDate            DATETIME       = NULL, 
                                                    @CreatedBy              INT            = NULL, 
                                                    @WHT                    DECIMAL(10, 2)  = NULL, 
                                                    @VATType                INT            = NULL, 
                                                    @VAT                    DECIMAL(10, 2)  = NULL, 
                                                    @NetPrice               DECIMAL(10, 2)  = NULL
AS
     IF(@OtherDetailGroupWorkId IS NULL)
         BEGIN
             SET @OtherDetailGroupWorkId =
             (
                 SELECT TOP 1 OtherDetailGroupWorkId
                 FROM con.WorkOrderOtherDetail wd
                 WHERE wd.WorkName = @WorkName
                       AND wd.CreatedDate = @CreatedDate
             );
             IF(@OtherDetailGroupWorkId IS NULL)
                 BEGIN
                     SET @OtherDetailGroupWorkId =
                     (
                         SELECT TOP 1 ISNULL(OtherDetailGroupWorkId, 1) + 1
                         FROM con.WorkOrderOtherDetail wd
                         ORDER BY wd.OtherDetailGroupWorkId DESC
                     );
             END;
     END;
     SET @OtherDetailGroupWorkId = ISNULL(@OtherDetailGroupWorkId, 1);
     INSERT INTO [con].[WorkOrderOtherDetail]
     (WorkOrderId, 
      WorkName, 
      OtherDetailGroupWorkId, 
      Amount, 
      Price, 
      TotalPrice, 
      WorkUnit, 
      ContractorName, 
      ContractorCode, 
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
      @WorkName, 
      @OtherDetailGroupWorkId, 
      @Amount, 
      @Price, 
      @TotalPrice, 
      @WorkUnit, 
      @ContractorName, 
      @ContractorCode, 
      @Status, 
      @Active, 
      @CreatedDate, 
      @CreatedBy, 
      @WHT, 
      @VATType, 
      @VAT, 
      @NetPrice
     );
     SELECT SCOPE_IDENTITY() AS Id, 
            @OtherDetailGroupWorkId AS OtherDetailGroupWorkId;
GO
