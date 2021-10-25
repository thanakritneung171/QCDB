SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronicDetail_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                                     @Id                   INT           = NULL, 
                                                     @RepairElectronicCode NVARCHAR(10)  = NULL, 
                                                     @ElectronicCode       NVARCHAR(10)  = NULL, 
                                                     @BrokenDetail         NVARCHAR(MAX) = NULL, 
                                                     @HasReturn           BIT           = NULL, 
                                                     @RepairDetail         NVARCHAR(MAX) = NULL,
													 @ReasonBroken		   NVARCHAR(MAX) = NULL,
                                                     @RepairCompleteDate   DATE          = NULL, 
                                                     @RepairBy             NVARCHAR(255) = NULL, 
                                                     @HasCantFix           BIT           = NULL, 
                                                     @CantFixReason        NVARCHAR(MAX) = NULL, 
                                                     @ReceiveBy            NVARCHAR(255) = NULL, 
                                                     @ReceiveDate          DATE          = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[RepairElectronicDetail_Create] 
                     @RepairElectronicCode, 
                     @ElectronicCode, 
                     @BrokenDetail, 
                     @HasReturn, 
                     @RepairDetail, 
					 @ReasonBroken,
                     @RepairCompleteDate, 
                     @RepairBy, 
                     @HasCantFix, 
                     @CantFixReason, 
                     @ReceiveBy, 
                     @ReceiveDate;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[RepairElectronicDetail_UPDATE] 
                     @Id, 
                     @RepairElectronicCode, 
                     @ElectronicCode, 
                     @BrokenDetail, 
                     @HasReturn, 
                     @RepairDetail, 
					 @ReasonBroken,
                     @RepairCompleteDate, 
                     @RepairBy, 
                     @HasCantFix, 
                     @CantFixReason, 
                     @ReceiveBy, 
                     @ReceiveDate;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[RepairElectronicDetail_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[RepairElectronicDetail_SELECT] 
                     @RepairElectronicCode;
        END;
		 IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [MAC].[RepairElectronicDetail_DELETE] 
                     @Id;
        END;
    END;
        SET ANSI_NULLS ON;

GO
