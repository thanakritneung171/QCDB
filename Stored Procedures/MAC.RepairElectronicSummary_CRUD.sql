SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronicSummary_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                                      @Id                   INT, 
                                                      @RepairElectronicCode NVARCHAR(10), 
                                                      @TotalPrice           DECIMAL(10, 2), 
                                                      @Note                 NVARCHAR(MAX), 
                                                      @POCodeRef            NVARCHAR(10), 
                                                      @Active               BIT, 
                                                      @CreatedDate          DATETIME, 
                                                      @CreatedBy            INT, 
                                                      @ModifiedDate         DATETIME, 
                                                      @ModifiedBy           INT
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[RepairElectronicSummary_Create] 
                     @RepairElectronicCode, 
                     @TotalPrice, 
                     @Note, 
                     @POCodeRef, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[RepairElectronicSummary_UPDATE] 
                     @Id, 
                     @RepairElectronicCode, 
                     @TotalPrice, 
                     @Note, 
                     @POCodeRef, 
                     @Active, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[RepairElectronicSummary_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[RepairElectronicSummary_SELECT] 
                     @RepairElectronicCode;
        END;
    END;
        SET ANSI_NULLS ON;
GO
