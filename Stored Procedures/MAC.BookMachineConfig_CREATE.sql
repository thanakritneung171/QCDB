SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachineConfig_CREATE] @MachineTypeId     INT, 
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
                                                 @CreatedDate       DATETIME, 
                                                 @CreatedBy         INT,
												 @BookMachineGroupName NVARCHAR(50)
AS
     INSERT INTO [MAC].[BookMachineConfig]
     ([MachineTypeId], 
      [MachineCode], 
      [MachineAddCode], 
      [DriverId], 
      [Note], 
      [BookBeforeDay], 
      [BookBeforeDayMax], 
      [HasArea], 
      [HasTask], 
      [HasUpload], 
      [HasBookPeriodWeek], 
      [MinDay], 
      [MinDayType], 
      [MaxDay], 
      [MaxDayType], 
      [Active], 
      [CreatedDate], 
      [CreatedBy],
	  [BookMachineGroupName]
     )
     VALUES
     (@MachineTypeId, 
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
     );
     SELECT SCOPE_IDENTITY() AS Id;

GO
