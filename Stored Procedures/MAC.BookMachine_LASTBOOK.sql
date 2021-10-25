SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachine_LASTBOOK] @MachineTypeId INT,
										@StartDate            DATETIME,
										@BookMachineConfigId INT
AS
     SELECT MachineCode, 
            MAX(EndDate) AS EndDate
     FROM [MAC].[BookMachine]
     WHERE (MachineTypeId = @MachineTypeId OR @MachineTypeId IS NULL) AND (CAST(EndDate AS DATE) <= CAST(@StartDate AS DATE)) AND (BookMachineConfigId = @BookMachineConfigId OR @BookMachineConfigId IS NULL)
     GROUP BY MachineCode;

GO
