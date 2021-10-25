SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ApprovedSummaryView]
AS
SELECT        Id AS ApprovedSummary_Id, ProjectCode AS ApprovedSummary_ProjectCode, Month AS ApprovedSummary_Month, Year AS ApprovedSummary_Year, Round AS ApprovedSummary_Round, 
                         StartDay AS ApprovedSummary_StartDay, EndDay AS ApprovedSummary_EndDay, Status AS ApprovedSummary_Status, TotalWorker AS ApprovedSummary_TotalWorker, 
                         TotalAverageWage AS ApprovedSummary_TotalAverageWage, TotalAmount AS ApprovedSummary_TotalAmount, TotalOverTime AS ApprovedSummary_TotalOverTime, Total AS ApprovedSummary_Total, 
                         TotalIncreasedAmount AS ApprovedSummary_TotalIncreasedAmount, TotalDecreasedAmount AS ApprovedSummary_TotalDecreasedAmount, CreateDate AS ApprovedSummary_CreateDate, 
                         RequestDate AS ApprovedSummary_RequestDate, RequestBy AS ApprovedSummary_RequestBy, ApprovedDate AS ApprovedSummary_ApprovedDate, ApprovedBy AS ApprovedSummary_ApprovedBy, 
                         Remark AS ApprovedSummary_Remark, IsActive AS ApprovedSummary_IsActive
FROM            dbo.ApprovedSummary
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "ApprovedSummary"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 335
               Right = 251
            End
            DisplayFlags = 280
            TopColumn = 8
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
         Column = 1440
         Alias = 6000
         Table = 1170
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
', 'SCHEMA', N'dbo', 'VIEW', N'ApprovedSummaryView', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'ApprovedSummaryView', NULL, NULL
GO
