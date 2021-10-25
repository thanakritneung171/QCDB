SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachineConfig_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                               @Id                   INT, 
                                               @MachineTypeId        INT, 
                                               @MachineCode          NVARCHAR(10), 
                                               @MachineAddCode       NVARCHAR(10), 
                                               @DriverId             INT, 
                                               @Note                 NVARCHAR(MAX), 
                                               @BookBeforeDay        INT, 
                                               @BookBeforeDayMax     INT, 
                                               @HasArea              BIT, 
                                               @HasTask              BIT, 
                                               @HasUpload            BIT, 
                                               @HasBookPeriodWeek    BIT, 
                                               @MinDay               INT, 
                                               @MinDayType           NVARCHAR(15), 
                                               @MaxDay               INT, 
                                               @MaxDayType           NVARCHAR(15), 
                                               @Active               BIT, 
                                               @CreatedDate          DATETIME, 
                                               @CreatedBy            INT, 
                                               @ModifiedDate         DATETIME, 
                                               @ModifiedBy           INT,
											   @BookMachineGroupName NVARCHAR(50)
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[BookMachineConfig_Create] 
                     @MachineTypeId, 
                     @MachineCode, 
                     @MachineAddCode, 
                     @DriverId, 
                     @Note, 
                     @BookBeforeDay, 
                     @BookBeforeDayMax, 
                     @HasArea, 
                     @HasTask, 
                     @HasUpload, 
					 @HasBookPeriodWeek,
                     @MinDay, 
                     @MinDayType, 
                     @MaxDay, 
                     @MaxDayType, 
                     @Active, 
                     @CreatedDate, 
                     @CreatedBy,
					 @BookMachineGroupName
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[BookMachineConfig_UPDATE] 
                     @Id, 
                     @MachineTypeId, 
                     @MachineCode, 
                     @MachineAddCode, 
                     @DriverId, 
                     @Note, 
                     @BookBeforeDay, 
                     @BookBeforeDayMax, 
                     @HasArea, 
                     @HasTask, 
                     @HasUpload,
					 @HasBookPeriodWeek, 
                     @MinDay, 
                     @MinDayType, 
                     @MaxDay, 
                     @MaxDayType, 
                     @Active, 
                     @ModifiedDate, 
                     @ModifiedBy,
					 @BookMachineGroupName
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[BookMachineConfig_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[BookMachineConfig_SELECT] 
                     @MachineTypeId, 
                     @Active,
					 @MachineCode
        END;
    END;
        SET ANSI_NULLS ON;


GO
