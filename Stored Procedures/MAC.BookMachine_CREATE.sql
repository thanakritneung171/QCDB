SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachine_CREATE] @BookMachineConfigId INT, 
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
                                           @CreatedDate         DATETIME, 
                                           @CreatedBy           INT,
										   @HasGroup            BIT,
										   @DriverId			INT
AS
     INSERT INTO [MAC].[BookMachine]
     ([BookMachineConfigId], 
      [MachineTypeId], 
      [MachineCode], 
      [ProjectCode], 
      [OldStartDate], 
      [OldEndDate], 
      [OldPeriodTime], 
      [StartDate], 
      [EndDate], 
      [PeriodTime], 
      [AreaAmount], 
      [TaskAmount], 
      [ForTask], 
      [Status], 
      [Progress], 
      [CreatedDate], 
      [CreatedBy],
	  [HasGroup],
	  [DriverId]
     )
     VALUES
     (@BookMachineConfigId, 
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
     );
     SELECT SCOPE_IDENTITY() AS BookMachineId;
GO
