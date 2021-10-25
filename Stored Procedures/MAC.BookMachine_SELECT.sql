SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[BookMachine_SELECT] @ProjectCode   NVARCHAR(10),
										   @MachineCode	  NVARCHAR(50),										    
                                           @MachineTypeId INT, 
                                           @StartDate     DATETIME, 
                                           @EndDate       DATETIME,
										   @GetCancelled		   BIT,
										   @GetRejected          BIT,
										   @BookMachineConfigId  INT,
										   @Progress INT
AS
     SELECT * , t.MachineTypeName as MachineTypeName ,m.MachineName as MachineName , m.Model as Model , (CASE WHEN (SELECT COUNT(*) FROM [MAC].[RepairNotify] rt WHERE rt.MachineCode = m.MachineCode AND rt.ProjectCode = m.ProjectCode AND rt.RepairStatus != 2 AND rt.RepairProgress < 8) = 0 THEN m.Status ELSE 2 END) as MachineStatus 
			, apd.Code as ApproveConfirmBookMachineDetailCode
	 FROM [MAC].[BookMachine] bm
	 JOIN [MAC].[BookMachineConfig] bmc on bm.BookMachineConfigId = bmc.Id
	 LEFT JOIN [MAC].[MachineType] t on t.MachineTypeId = bm.MachineTypeId
	 LEFT JOIN [MAC].[Machine] m on bm.MachineCode = m.MachineCode
	 LEFT JOIN [MAC].[ApproveConfirmBookMachineDetail] apd on apd.BookMachineId = bm.BookMachineId
     WHERE (bm.ProjectCode = @ProjectCode OR @ProjectCode IS NULL)
		  AND (bm.MachineCode = @MachineCode OR @MachineCode IS NULL)
          AND (bm.MachineTypeId = @MachineTypeId OR @MachineTypeId IS NULL)
		  AND (bm.Status != 2 OR @GetCancelled = 1)
		  AND (bm.Progress != -1 OR @GetRejected = 1)
		  AND (bm.BookMachineConfigId = @BookMachineConfigId OR @BookMachineConfigId IS NULL)
		  AND (bm.Progress = @Progress OR @Progress IS NULL)
		  AND ((CAST(bm.StartDate as DATE) <= CAST(@EndDate as DATE) OR  @EndDate IS NULL) AND (CAST(@StartDate as DATE) <= CAST(bm.EndDate as DATE) OR @StartDate IS NULL))
GO
