SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachine_UPDATE] @BookMachineId       INT, 
                                           @BookMachineConfigId INT, 
                                           @MachineTypeId       INT, 
                                           @MachineCode         NVARCHAR(50), 
                                           @ProjectCode         NVARCHAR(10), 
                                           @OldStartDate        DATETIME, 
                                           @OldEndDate          DATETIME, 
                                           @OldPeriodTime       NVARCHAR(10), 
                                           @StartDate           DATETIME, 
                                           @EndDate             DATETIME, 
                                           @PeriodTime          NVARCHAR(10), 
                                           @AreaAmount          DECIMAL(10, 2), 
                                           @TaskAmount          DECIMAL(10, 2), 
                                           @ForTask             NVARCHAR(MAX), 
                                           @Status              INT, 
                                           @Progress            INT, 
                                           @ModifiedDate        DATETIME, 
                                           @ModifiedBy          INT, 
                                           @ConfirmNote         NVARCHAR(MAX), 
                                           @ConfirmDate         DATETIME, 
                                           @ConfirmBy           INT, 
                                           @RejectReason        NVARCHAR(MAX), 
                                           @ConfirmReturnDate   DATETIME, 
                                           @ConfirmReturnBy     NVARCHAR(250),
										   @DriverId		    INT
AS
     UPDATE [MAC].[BookMachine]
       SET 
           [BookMachineConfigId] = @BookMachineConfigId, 
           [MachineTypeId] = @MachineTypeId, 
           [MachineCode] = @MachineCode, 
           [ProjectCode] = @ProjectCode, 
           [OldStartDate] = @OldStartDate, 
           [OldEndDate] = @OldEndDate, 
           [OldPeriodTime] = @OldPeriodTime, 
           [StartDate] = @StartDate, 
           [EndDate] = @EndDate, 
           [PeriodTime] = @PeriodTime, 
           [AreaAmount] = @AreaAmount, 
           [TaskAmount] = @TaskAmount, 
           [ForTask] = @ForTask, 
           [Status] = @Status, 
           [Progress] = @Progress, 
           [ModifiedDate] = @ModifiedDate, 
           [ModifiedBy] = @ModifiedBy, 
           [ConfirmNote] = @ConfirmNote,  
           [ConfirmDate] = @ConfirmDate, 
           [ConfirmBy] = @ConfirmBy, 
           [RejectReason] = @RejectReason, 
           [ConfirmReturnDate] = @ConfirmReturnDate, 
           [ConfirmReturnBy] = @ConfirmReturnBy,
		   [DriverId] = @DriverId
     WHERE BookMachineId = @BookMachineId;
GO
