SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairMachineReport] @SearchDateForm DATE = NULL, 
                                            @SearchDateTo   DATE = NULL
AS
    BEGIN
        SELECT rn.RepairNotifyCode AS RepiarNotifyCode, 
               MIN(rsd.ReceiptDate) AS ReceiptDate, 
               MIN(rn.ProjectCode) AS ProjectCode, 
               MIN(rn.MachineCode) AS MachineCode, 
               MIN(rs.TotalPrice) AS TotalMachinePartPrice, 
               MIN(rn.WorkerPrice) AS WorkerPrice, 
               MIN(rn.RepairProgress) AS RepairProgress, 
               ISNULL(MIN(rs.TotalPrice), 0) + ISNULL(MIN(rn.WorkerPrice), 0) AS TotalPrice, 
               MIN(mt.MachineTypeName) AS MachineTypeName, 
               MIN(mt.MachineTypeId) AS MachineTypeId
        FROM MAC.RepairMachineSummaryDetail rsd
             JOIN MAC.RepairMachineSummary rs ON rs.Id = rsd.RepairMachineSummaryId
             JOIN MAC.RepairNotify rn ON rn.RepairNotifyCode = rs.RepairNotifyCode
             JOIN MAC.Machine m ON m.MachineCode = rn.MachineCode
             JOIN MAC.MachineType mt ON mt.MachineTypeId = m.MachineTypeId
        WHERE ReceiptDate IS NOT NULL
              AND (ReceiptDate >= @SearchDateForm
                   OR @SearchDateForm IS NULL)
              AND (ReceiptDate <= @SearchDateTo
                   OR @SearchDateTo IS NULL)
        GROUP BY rn.RepairNotifyCode
        ORDER BY ReceiptDate;
    END;
GO
