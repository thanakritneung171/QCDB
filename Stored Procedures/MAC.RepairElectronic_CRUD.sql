SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronic_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                              @RepairElectronicCode NVARCHAR(10)  = NULL, 
                                              @ProjectCode          NVARCHAR(10)  = NULL, 
                                              @NotifyRepairBy       NVARCHAR(255) = NULL, 
                                              @NotifyRepairDate     DATE          = NULL, 
                                              @SendBy               NVARCHAR(255) = NULL, 
                                              @SendDate             DATE          = NULL, 
                                              @ReceiveBy            NVARCHAR(255) = NULL, 
                                              @ReceiveDate          DATE          = NULL, 
                                              @Active               BIT           = NULL, 
                                              @CreatedBy            INT           = NULL, 
                                              @CreatedDate          DATETIME      = NULL, 
                                              @ModifiedBy           INT           = NULL, 
                                              @ModifiedDate         DATETIME      = NULL, 
                                              @ElectronicCodeSearch NVARCHAR(10)  = NULL, 
                                              @SearchStartDate      DATETIME      = NULL, 
                                              @SearchToDate         DATETIME      = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[RepairElectronic_Create] 
                     @RepairElectronicCode, 
                     @ProjectCode, 
                     @NotifyRepairBy, 
                     @NotifyRepairDate, 
                     @SendBy, 
                     @SendDate, 
                     @ReceiveBy, 
                     @ReceiveDate, 
                     @Active, 
                     @CreatedBy, 
                     @CreatedDate;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[RepairElectronic_UPDATE] 
                     @RepairElectronicCode, 
                     @ProjectCode, 
                     @NotifyRepairBy, 
                     @NotifyRepairDate, 
                     @SendBy, 
                     @SendDate, 
                     @ReceiveBy, 
                     @ReceiveDate, 
                     @Active, 
                     @ModifiedBy, 
                     @ModifiedDate;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[RepairElectronic_READ_BY] 
                     @RepairElectronicCode;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[RepairElectronic_SELECT] 
                     @RepairElectronicCode, 
                     @ProjectCode, 
                     @ElectronicCodeSearch, 
                     @SearchStartDate, 
                     @SearchToDate;
        END;
    END;
        SET ANSI_NULLS ON;
GO
