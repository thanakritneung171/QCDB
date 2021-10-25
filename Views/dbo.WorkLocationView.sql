SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[WorkLocationView]
AS
SELECT dbo.WorkLocation.Id AS WorkLocation_Id, dbo.WorkLocation.DailyDetailId AS WorkLocation_DailyDetailId, dbo.WorkLocation.MonthlyDetailId AS WorkLocation_MonthlyDetailId, dbo.WorkLocation.UnitId AS WorkLocation_UnitId, 
                  dbo.WorkLocation.UnitName AS WorkLocation_UnitName, dbo.WorkLocation.FromProjectCode AS WorkLocation_FromProjectCode, con.Unit.Id AS Unit_Id, con.Unit.ProjectCode AS Unit_ProjectCode, con.Unit.UnitType AS Unit_UnitType, 
                  con.Unit.UnitName AS Unit_UnitName, con.Unit.Area AS Unit_Area, con.Unit.AreaUnit AS Unit_AreaUnit, con.Unit.DeedArea AS Unit_DeedArea, con.Unit.PlanCode AS Unit_PlanCode, 
                  con.Unit.PeriodSetToPayWork AS Unit_PeriodSetToPayWork, con.Unit.WorkAmount AS Unit_WorkAmount, con.Unit.WorkUnit AS Unit_WorkUnit, con.Unit.WorkDoneAmount AS Unit_WorkDoneAmount, 
                  con.Unit.CreatedDate AS Unit_CreatedDate, con.Unit.CreatedBy AS Unit_CreatedBy, con.Unit.ModifiedDate AS Unit_ModifiedDate, con.Unit.ModifiedBy AS Unit_ModifiedBy, con.Project.ProjectCode AS Project_ProjectCode, 
                  con.Project.Number AS Project_Number, con.Project.ProjectName AS Project_ProjectName, con.Project.ComCode AS Project_ComCode, con.Project.Address AS Project_Address, con.Project.TotalDeedArea AS Project_TotalDeedArea, 
                  con.Project.StartConstructionDate AS Project_StartConstructionDate, con.Project.ProjectEngineer AS Project_ProjectEngineer, con.Project.Active AS Project_Active, con.Project.CreatedDate AS Project_CreatedDate, 
                  con.Project.CreatedBy AS Project_CreatedBy, con.Project.ModifiedDate AS Project_ModifiedDate, con.Project.ModifiedBy AS Project_ModifiedBy
FROM     dbo.WorkLocation LEFT OUTER JOIN
                  con.Unit ON dbo.WorkLocation.UnitId = con.Unit.Id LEFT OUTER JOIN
                  con.Project ON dbo.WorkLocation.FromProjectCode = con.Project.ProjectCode
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[35] 4[26] 2[20] 3) )"
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
         Begin Table = "WorkLocation"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 223
               Right = 259
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Unit (con)"
            Begin Extent = 
               Top = 7
               Left = 307
               Bottom = 424
               Right = 541
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Project (con)"
            Begin Extent = 
               Top = 262
               Left = 38
               Bottom = 425
               Right = 279
            End
            DisplayFlags = 280
            TopColumn = 1
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
         Column = 2220
         Alias = 1788
         Table = 3096
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
', 'SCHEMA', N'dbo', 'VIEW', N'WorkLocationView', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'WorkLocationView', NULL, NULL
GO
