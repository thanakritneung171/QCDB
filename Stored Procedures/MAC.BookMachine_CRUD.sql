SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachine_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                         @BookMachineId        INT, 
                                         @BookMachineConfigId  INT, 
                                         @MachineTypeId        INT, 
                                         @MachineCode          NVARCHAR(50), 
                                         @ProjectCode          NVARCHAR(10), 
                                         @OldStartDate         DATETIME, 
                                         @OldEndDate           DATETIME, 
                                         @OldPeriodTime        NVARCHAR(10), 
                                         @StartDate            DATETIME, 
                                         @EndDate              DATETIME, 
                                         @PeriodTime           NVARCHAR(10), 
                                         @AreaAmount           DECIMAL(10, 2), 
                                         @TaskAmount           DECIMAL(10, 2), 
                                         @ForTask              NVARCHAR(MAX), 
                                         @Status               INT, 
                                         @Progress             INT, 
                                         @CreatedDate          DATETIME, 
                                         @CreatedBy            INT, 
                                         @ModifiedDate         DATETIME, 
                                         @ModifiedBy           INT, 
                                         @ConfirmNote          NVARCHAR(MAX), 
                                         @ConfirmDate          DATETIME, 
                                         @ConfirmBy            INT, 
                                         @GetCancelled         BIT, 
                                         @RejectReason         NVARCHAR(MAX), 
                                         @GetRejected          BIT, 
                                         @ConfirmReturnDate    DATETIME, 
                                         @ConfirmReturnBy      NVARCHAR(250),
										 @HasGroup			   BIT,
										 @DriverId			   INT
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[BookMachine_Create] 
                     @BookMachineConfigId, 
                     @MachineTypeId, 
                     @MachineCode, 
                     @ProjectCode, 
                     @OldStartDate, 
                     @OldEndDate, 
                     @OldPeriodTime, 
                     @StartDate, 
                     @EndDate, 
                     @PeriodTime, 
                     @AreaAmount, 
                     @TaskAmount, 
                     @ForTask, 
                     @Status, 
                     @Progress, 
                     @CreatedDate, 
                     @CreatedBy,
					 @HasGroup,
					 @DriverId
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[BookMachine_UPDATE] 
                     @BookMachineId, 
                     @BookMachineConfigId, 
                     @MachineTypeId, 
                     @MachineCode, 
                     @ProjectCode, 
                     @OldStartDate, 
                     @OldEndDate, 
                     @OldPeriodTime, 
                     @StartDate, 
                     @EndDate, 
                     @PeriodTime, 
                     @AreaAmount, 
                     @TaskAmount, 
                     @ForTask, 
                     @Status, 
                     @Progress, 
                     @ModifiedDate, 
                     @ModifiedBy, 
                     @ConfirmNote,  
                     @ConfirmDate, 
                     @ConfirmBy, 
                     @RejectReason,   
					 @ConfirmReturnDate,
					 @ConfirmReturnBy,
					 @DriverId  
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[BookMachine_READ_BY] 
                     @BookMachineId;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[BookMachine_SELECT] 
                     @ProjectCode, 
                     @MachineCode, 
                     @MachineTypeId, 
                     @StartDate, 
                     @EndDate, 
                     @GetCancelled, 
                     @GetRejected,
					 @BookMachineConfigId,
					 @Progress
					 
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [MAC].[BookMachine_DELETE] 
                     @BookMachineId;
        END;
        IF @Control_Character_In = 'lastbook'
            BEGIN
                EXEC [MAC].[BookMachine_LASTBOOK] 
                     @MachineTypeId, 
                     @StartDate,
					 @BookMachineConfigId
        END;
    END;
        SET ANSI_NULLS ON;


GO
