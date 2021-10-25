SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[HistoryUpdateMachine_CREATE]
AS
       DECLARE @CurrentMonth INT= MONTH(GETDATE());
     DECLARE @CurrentYear INT= YEAR(GETDATE());
     DECLARE @LastDayOfMonth INT= DAY(EOMONTH(GETDATE()));
     DECLARE @FromDayUpdateMachine INT=
     (
         SELECT TOP 1(CASE
                          WHEN FromDayUpdateMachine > @LastDayOfMonth
                          THEN @LastDayOfMonth
                          ELSE FromDayUpdateMachine
                      END)
         FROM [MAC].InitialSetting
     );
     DECLARE @ToDayUpdateMachine INT=
     (
         SELECT TOP 1(CASE
                          WHEN ToDayUpdateMachine = 1
                          THEN @LastDayOfMonth
                          ELSE ToDayUpdateMachine - 1
                      END)
         FROM [MAC].InitialSetting
     );
     DECLARE @FromDate DATE= CAST(@CurrentYear AS VARCHAR(10)) + '-' + RIGHT('0' + ISNULL(CAST(@CurrentMonth AS VARCHAR(10)), ''), 2) + '-' + RIGHT('0' + ISNULL(CAST(@FromDayUpdateMachine AS VARCHAR(10)), ''), 2);
     DECLARE @ToDate DATE= CAST(@CurrentYear AS VARCHAR(10)) + '-' + RIGHT('0' + ISNULL(CAST(@CurrentMonth AS VARCHAR(10)), ''), 2) + '-' + RIGHT('0' + ISNULL(CAST(@ToDayUpdateMachine AS VARCHAR(10)), ''), 2);
     SET @ToDate = CASE
                       WHEN @ToDate < @FromDate
                       THEN DATEADD(MONTH, 1, @ToDate)
                       ELSE @ToDate
                   END;
     DECLARE @CountMaster BIT;
     DECLARE @UpdateMachineMasterId INT;
     --- ALTER MASTER
     SET @CountMaster =
     (
         SELECT COUNT(*)
         FROM [MAC].[HistoryUpdateMachineMaster] hm
         WHERE hm.Month = @CurrentMonth
               AND hm.Year = @CurrentYear
     );
    
     IF(@CountMaster = 0)
                 BEGIN
                     INSERT INTO [MAC].[HistoryUpdateMachineMaster]
                     ([Month], 
                      [Year], 
                      [FromDate], 
                      [ToDate]
                     )
                     VALUES
                     (MONTH(@FromDate), 
                      YEAR(@FromDate), 
                      @FromDate, 
                      @ToDate
                     );
                     SET @UpdateMachineMasterId = SCOPE_IDENTITY();
             END;
                 ELSE
                 BEGIN
                     SET @UpdateMachineMasterId =
                     (
                         SELECT hm.Id
                         FROM [MAC].[HistoryUpdateMachineMaster] hm
                         WHERE hm.Month = @CurrentMonth
                               AND hm.Year = @CurrentYear
                     );
             END;

     --- ALTER DETAIL
     INSERT INTO [MAC].[HistoryUpdateMachine]
             ([UpdateMachineMasterId], 
              [MachineCode], 
              [ProjectCode], 
              [Description], 
              [CreatedBy], 
              [CreatedDate], 
              [MachineStatus], 
              [Progress], 
              [VerifyNote], 
              [VerifiedDate], 
              [VerifiedBy], 
              [AnalysisNote], 
              [AnalysisDate], 
              [AnalysisBy]
             )
                    SELECT @UpdateMachineMasterId, 
                           m.MachineCode, 
                           m.ProjectCode, 
                           NULL, 
                           NULL, 
                           NULL, 
                           m.STATUS, 
                           1, 
                           NULL, 
                           NULL, 
                           NULL, 
                           NULL, 
                           NULL, 
                           NULL
                    FROM MAC.Machine m
                    WHERE m.Active = 1
                          AND NOT EXISTS
                    (
                        SELECT *
                        FROM [MAC].[HistoryUpdateMachine] _hmd
                        WHERE _hmd.MachineCode = m.MachineCode
                              AND _hmd.UpdateMachineMasterId = @UpdateMachineMasterId
                    )
                          AND ISNULL(m.NoUpdateMachine, 0) = 0
                    ORDER BY m.MachineCode;

GO
