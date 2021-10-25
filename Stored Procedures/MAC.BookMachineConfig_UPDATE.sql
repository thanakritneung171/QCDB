SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachineConfig_UPDATE] @Id                INT, 
                                                 @MachineTypeId     INT, 
                                                 @MachineCode       NVARCHAR(10), 
                                                 @MachineAddCode    NVARCHAR(10), 
                                                 @DriverId          INT, 
                                                 @Note              NVARCHAR(MAX), 
                                                 @BookBeforeDay     INT, 
                                                 @BookBeforeDayMax  INT, 
                                                 @HasArea           BIT, 
                                                 @HasTask           BIT, 
                                                 @HasUpload         BIT, 
                                                 @HasBookPeriodWeek BIT, 
                                                 @MinDay            INT, 
                                                 @MinDayType        NVARCHAR(15), 
                                                 @MaxDay            INT, 
                                                 @MaxDayType        NVARCHAR(15), 
                                                 @Active            BIT, 
                                                 @ModifiedDate      DATETIME, 
                                                 @ModifiedBy        INT,
												 @BookMachineGroupName NVARCHAR(50)
AS
     UPDATE [MAC].[BookMachineConfig]
       SET 
           [MachineTypeId] = @MachineTypeId, 
           [MachineCode] = @MachineCode, 
           [MachineAddCode] = @MachineAddCode, 
           [DriverId] = @DriverId, 
           [Note] = @Note, 
           [BookBeforeDay] = @BookBeforeDay, 
           [BookBeforeDayMax] = @BookBeforeDayMax, 
           [HasArea] = @HasArea, 
           [HasTask] = @HasTask, 
           [HasUpload] = @HasUpload, 
           [HasBookPeriodWeek] = @HasBookPeriodWeek, 
           [MinDay] = @MinDay, 
           [MinDayType] = @MinDayType, 
           [MaxDay] = @MaxDay, 
           [MaxDayType] = @MaxDayType, 
           [Active] = @Active, 
           [ModifiedDate] = @ModifiedDate, 
           [ModifiedBy] = @ModifiedBy,
		   [BookMachineGroupName] = @BookMachineGroupName
     WHERE Id = @Id;

GO
