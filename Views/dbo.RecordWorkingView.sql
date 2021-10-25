SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[RecordWorkingView]
AS
SELECT dbo.RecordWorking.DailyCode AS RecordWorking_DailyCode, dbo.RecordWorking.ProjectCode AS RecordWorking_ProjectCode, dbo.RecordWorking.Date AS RecordWorking_Date, 
                  dbo.RecordWorking.TotalWorker AS RecordWorking_TotalWorker, dbo.RecordWorking.TotalFullTime AS RecordWorking_TotalFullTime, dbo.RecordWorking.TotalPartTime AS RecordWorking_TotalPartTime, 
                  dbo.RecordWorking.TotalOvertime AS RecordWorking_TotalOvertime, dbo.RecordWorking.TotalQuota AS RecordWorking_TotalQuota, dbo.RecordWorking.AverageWage AS RecordWorking_AverageWage, 
                  dbo.RecordWorking.TotalWage AS RecordWorking_TotalWage, dbo.RecordWorking.Status AS RecordWorking_Status, dbo.RecordWorking.PictureTime AS RecordWorking_PictureTime, 
                  dbo.RecordWorking.DetailTime AS RecordWorking_DetailTime, dbo.RecordWorking.SummaryTime AS RecordWorking_SummaryTime, dbo.RecordWorking.Remark AS RecordWorking_Remark, 
                  dbo.RecordWorking.CreatedDate AS RecordWorking_CreatedDate, dbo.RecordWorking.CreatedBy AS RecordWorking_CreatedBy, dbo.RecordWorking.ModifiedDate AS RecordWorking_ModifiedDate, 
                  dbo.RecordWorking.ModifiedBy AS RecordWorking_ModifiedBy, dbo.RecordWorking.VerifiedDate AS RecordWorking_VerifiedDate, dbo.RecordWorking.VerifiedBy AS RecordWorking_VerifiedBy, 
                  dbo.RecordWorking.VerifiedRemark AS RecordWorking_VerifiedRemark, dbo.RecordWorking.VerifiedStatus AS RecordWorking_VerifiedStatus, dbo.RecordWorking.ConfigId AS RecordWorking_ConfigId, 
                  dbo.RecordWorking.LastVerifiedDate AS RecordWorking_LastVerifiedDate, dbo.RecordWorking.LastVerifiedBy AS RecordWorking_LastVerifiedBy, dbo.RecordWorking.LastVerifiedRemark AS RecordWorking_LastVerifiedRemark, 
                  dbo.RecordWorking.LastVerifiedStatus AS RecordWorking_LastVerifiedStatus, dbo.RecordWorking.SummaryBy AS RecordWorking_SummaryBy, con.Project.ProjectCode AS Project_ProjectCode, con.Project.Number AS Project_Number, 
                  con.Project.ProjectName AS Project_ProjectName, con.Project.ComCode AS Project_ComCode, con.Project.Address AS Project_Address, con.Project.TotalDeedArea AS Project_TotalDeedArea, 
                  con.Project.StartConstructionDate AS Project_StartConstructionDate, con.Project.ProjectEngineer AS Project_ProjectEngineer, con.Project.Active AS Project_Active, con.Project.CreatedDate AS Project_CreatedDate, 
                  con.Project.CreatedBy AS Project_CreatedBy, con.Project.ModifiedDate AS Project_ModifiedDate, con.Project.ModifiedBy AS Project_ModifiedBy, dbo.ConfigWorker.ConfigId AS ConfigWorker_ConfigId, 
                  dbo.ConfigWorker.DailySentWorkBefore AS ConfigWorker_DailySentWorkBefore, dbo.ConfigWorker.DailySentDescriptionWorkBefore AS ConfigWorker_DailySentDescriptionWorkBefore, 
                  dbo.ConfigWorker.DailyVerifyRecordBefore AS ConfigWorker_DailyVerifyRecordBefore, dbo.ConfigWorker.DailySentOvertimeBefore AS ConfigWorker_DailySentOvertimeBefore, 
                  dbo.ConfigWorker.OTAmountWorkLowest AS ConfigWorker_OTAmountWorkLowest, dbo.ConfigWorker.DailyStartWorkSummary AS ConfigWorker_DailyStartWorkSummary, 
                  dbo.ConfigWorker.DailyEndWorkSummary AS ConfigWorker_DailyEndWorkSummary, dbo.ConfigWorker.MonthlyStartSentRequestMonthly AS ConfigWorker_MonthlyStartSentRequestMonthly, 
                  dbo.ConfigWorker.MonthlySentRequestMonthlyBefore AS ConfigWorker_MonthlySentRequestMonthlyBefore, dbo.ConfigWorker.MonthlyReminderBefore AS ConfigWorker_MonthlyReminderBefore, 
                  dbo.ConfigWorker.MonthlyStartDate AS ConfigWorker_MonthlyStartDate, dbo.ConfigWorker.MonthlyEndDate AS ConfigWorker_MonthlyEndDate, dbo.ConfigWorker.Active AS ConfigWorker_Active, 
                  dbo.ConfigWorker.CreatedDate AS ConfigWorker_CreatedDate, dbo.ConfigWorker.CreatedBy AS ConfigWorker_CreatedBy, dbo.ConfigWorker.ModifiedDate AS ConfigWorker_ModifiedDate, 
                  dbo.ConfigWorker.ModifiedBy AS ConfigWorker_ModifiedBy
FROM     dbo.RecordWorking LEFT OUTER JOIN
                  dbo.ConfigWorker ON dbo.RecordWorking.ConfigId = dbo.ConfigWorker.ConfigId LEFT OUTER JOIN
                  con.Project ON dbo.RecordWorking.ProjectCode = con.Project.ProjectCode
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[36] 4[25] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RecordWorking"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 416
               Right = 272
            End
            DisplayFlags = 280
            TopColumn = 14
         End
         Begin Table = "Project (con)"
            Begin Extent = 
               Top = 7
               Left = 320
               Bottom = 387
               Right = 561
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ConfigWorker"
            Begin Extent = 
               Top = 7
               Left = 609
               Bottom = 374
               Right = 938
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2796
         Alias = 5256
         Table = 2928
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'RecordWorkingView', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'RecordWorkingView', NULL, NULL
GO
