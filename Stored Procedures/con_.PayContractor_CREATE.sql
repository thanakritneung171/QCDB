SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[PayContractor_CREATE] @PayContractorCode VARCHAR(10)    = NULL, 
                                             @CodeNumber        INT            = NULL, 
                                             @ProjectCode       VARCHAR(10)    = NULL, 
                                             @Number            INT            = NULL, 
                                             @TotalPrice        DECIMAL(10, 2)  = NULL, 
                                             @Status            INT            = NULL, 
                                             @Active            BIT            = NULL, 
                                             @CreatedDate       DATETIME       = NULL, 
                                             @CreatedBy         INT            = NULL, 
                                             @NetPrice          DECIMAL(10, 2)  = NULL
AS
     SET @CodeNumber = 0;
     IF(
     (
         SELECT COUNT(*)
         FROM [con].[PayContractor]
         WHERE YEAR(CreatedDate) = YEAR(GETDATE())
     ) > 0)
         BEGIN
             SET @CodeNumber =
             (
                 SELECT TOP 1 CodeNumber
                 FROM [con].[PayContractor]
                 WHERE YEAR(CreatedDate) = YEAR(GETDATE())
                 ORDER BY CodeNumber DESC
             );
     END;
     SET @CodeNumber = @CodeNumber + 1;
     SET @PayContractorCode = SUBSTRING((CAST(YEAR(GETDATE()) + 543 AS VARCHAR(10))), 3, 4) + RIGHT('0000' + CAST(@CodeNumber AS VARCHAR(4)), 4);
     INSERT INTO [con].[PayContractor]
     (PayContractorCode, 
      CodeNumber, 
      ProjectCode, 
      Number, 
      TotalPrice, 
      STATUS, 
      Active, 
      CreatedDate, 
      CreatedBy,
	  NetPrice
     )
     VALUES
     (@PayContractorCode, 
      @CodeNumber, 
      @ProjectCode, 
      @Number, 
      @TotalPrice, 
      @Status, 
      @Active, 
      @CreatedDate, 
      @CreatedBy,
	  @NetPrice
     );
     SELECT @PayContractorCode AS PayContractorCode;
GO
