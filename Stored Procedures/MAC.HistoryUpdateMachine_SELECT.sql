SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[HistoryUpdateMachine_SELECT] @MachineCode   NVARCHAR(10) = NULL, 
                                                    @MachineTypeId INT          = NULL, 
                                                    @ProjectCode   NVARCHAR(10) = NULL, 
                                                    @MachineStatus INT          = NULL, 
                                                    @Progress      INT          = NULL, 
                                                    @Month         INT          = NULL, 
                                                    @Year          INT          = NULL
AS
     SELECT h.*, 
            hm.Month AS Month, 
            hm.Year AS Year,
			hm.FromDate AS FromDate,
			hm.ToDate AS ToDate
     FROM MAC.HistoryUpdateMachine h
          LEFT JOIN MAC.HistoryUpdateMachineMaster hm ON hm.Id = h.UpdateMachineMasterId
          JOIN MAC.Machine m ON m.MachineCode = h.MachineCode
     WHERE(hm.Month = @Month
           OR @Month IS NULL)
          AND (hm.Year = @Year
               OR @Year IS NULL)
          AND (m.MachineTypeId = @MachineTypeId
               OR @MachineTypeId IS NULL)
          AND (h.ProjectCode = @ProjectCode
               OR @ProjectCode IS NULL)
          AND (h.MachineStatus = @MachineStatus
               OR @MachineStatus IS NULL)
          AND (h.MachineCode = @MachineCode
               OR @MachineCode IS NULL)
          AND (h.Progress = @Progress
               OR @Progress IS NULL);
GO
