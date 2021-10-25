SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrder_CREATE] @ProjectCode    NVARCHAR(10)   = NULL, 
                                          @PlanCode       NVARCHAR(10)   = NULL, 
                                          @WorkId         INT            = NULL, 
                                          @UnitId         INT            = NULL, 
                                          @UnitName       NVARCHAR(256)  = NULL, 
                                          @Amount         DECIMAL(10, 2)  = NULL, 
                                          @Price          DECIMAL(10, 2)  = NULL, 
                                          @TotalPrice     DECIMAL(10, 2)  = NULL, 
                                          @WorkUnit       NVARCHAR(50)   = NULL, 
                                          @ContractorName NVARCHAR(256)  = NULL, 
                                          @ContractorCode VARCHAR(10)    = NULL, 
                                          @Status         INT            = NULL, 
                                          @Active         BIT            = NULL, 
                                          @SetToPayType   INT            = NULL
AS
    BEGIN
        INSERT INTO [con].[WorkOrder]
        (ProjectCode, 
         PlanCode, 
         WorkId, 
         UnitId, 
         UnitName, 
         Amount, 
         Price, 
         TotalPrice, 
         WorkUnit, 
         ContractorName, 
         ContractorCode, 
         STATUS, 
         Active, 
         SetToPayType
        )
        VALUES
        (@ProjectCode, 
         @PlanCode, 
         @WorkId, 
         @UnitId, 
         @UnitName, 
         @Amount, 
         @Price, 
         @TotalPrice, 
         @WorkUnit, 
         @ContractorName, 
         @ContractorCode, 
         @Status, 
         @Active, 
         @SetToPayType
        );
        SELECT SCOPE_IDENTITY() AS Id;
    END;
GO
