SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[HistoryUpdateMachine_READ_BY] @Id          INT          = NULL, 
                                                     @MachineCode NVARCHAR(10) = NULL, 
                                                     @Month       INT          = NULL, 
                                                     @Year        INT          = NULL
AS
     SELECT h.* , hm.Month as Month , hm.Year as Year,
			hm.FromDate AS FromDate,
			hm.ToDate AS ToDate
     FROM [MAC].HistoryUpdateMachine h
          LEFT JOIN [MAC].HistoryUpdateMachineMaster hm ON hm.Id = h.UpdateMachineMasterId
     WHERE(h.Id = @Id
           OR @Id IS NULL)
          AND (h.MachineCode = @MachineCode
               OR @MachineCode IS NULL)
          AND (hm.Month = @Month
               OR @Month IS NULL)
          AND (hm.Year = @Year
               OR @Year IS NULL);
GO
