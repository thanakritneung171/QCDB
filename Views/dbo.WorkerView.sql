SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[WorkerView]
AS
SELECT        dbo.Worker.WorkerCode AS Worker_WorkerCode, dbo.Worker.Title AS Worker_Title, dbo.Worker.FirstName AS Worker_FirstName, dbo.Worker.LastName AS Worker_LastName, 
                         dbo.Worker.IdentificationNo AS Worker_IdentificationNo, dbo.Worker.PassportNo AS Worker_PassportNo, dbo.Worker.Phone AS Worker_Phone, dbo.Worker.Address AS Worker_Address, 
                         dbo.Worker.ProjectId AS Worker_ProjectId, dbo.Worker.WageId AS Worker_WageId, dbo.Worker.WorkStatus AS Worker_WorkStatus, dbo.Worker.Remark AS Worker_Remark, dbo.Worker.Active AS Worker_Active, 
                         dbo.Worker.RunningNo AS Worker_RunningNo, dbo.Worker.CreatedDate AS Worker_CreatedDate, dbo.Worker.CreatedBy AS Worker_CreatedBy, dbo.Worker.ApprovedDate AS Worker_ApprovedDate, 
                         dbo.Worker.ApprovedBy AS Worker_ApprovedBy, dbo.Worker.ModifiedDate AS Worker_ModifiedDate, dbo.Worker.ModifiedBy AS Worker_ModifiedBy, dbo.Worker.AliasName AS Worker_AliasName, 
                         dbo.Worker.AttachmentIdImage AS Worker_AttachmentIdImage, dbo.Worker.AttachmentIdDocApproved AS Worker_AttachmentIdDocApproved, AttachmentImageWorker.AttachmentId AS AttachmentImageWorker_AttachmentId, 
                         AttachmentImageWorker.AttachmentCode AS AttachmentImageWorker_AttachmentCode, AttachmentImageWorker.FileName AS AttachmentImageWorker_FileName, 
                         AttachmentImageWorker.FileSize AS AttachmentImageWorker_FileSize, AttachmentImageWorker.FileType AS AttachmentImageWorker_FileType, AttachmentImageWorker.IsActive AS AttachmentImageWorker_IsActive, 
                         AttachmentImageWorker.CreateBy AS AttachmentImageWorker_CreateBy, AttachmentImageWorker.CreateDate AS AttachmentImageWorker_CreateDate, 
                         AttachmentImageWorker.LastUpdateBy AS AttachmentImageWorker_LastUpdateBy, AttachmentImageWorker.LastUpdateDate AS AttachmentImageWorker_LastUpdateDate, 
                         AttachmentImageWorker.Path AS AttachmentImageWorker_Path, AttachmentDocApprove.AttachmentId AS AttachmentDocApprove_AttachmentId, 
                         AttachmentDocApprove.AttachmentCode AS AttachmentDocApprove_AttachmentCode, AttachmentDocApprove.FileName AS AttachmentDocApprove_FileName, AttachmentDocApprove.FileSize AS AttachmentDocApprove_FileSize, 
                         AttachmentDocApprove.FileType AS AttachmentDocApprove_FileType, AttachmentDocApprove.IsActive AS AttachmentDocApprove_IsActive, AttachmentDocApprove.CreateBy AS AttachmentDocApprove_CreateBy, 
                         AttachmentDocApprove.CreateDate AS AttachmentDocApprove_CreateDate, AttachmentDocApprove.LastUpdateBy AS AttachmentDocApprove_LastUpdateBy, 
                         AttachmentDocApprove.LastUpdateDate AS AttachmentDocApprove_LastUpdateDate, AttachmentDocApprove.Path AS AttachmentDocApprove_Path
FROM            dbo.Worker LEFT OUTER JOIN
                         dbo.Attachment AS AttachmentImageWorker ON dbo.Worker.AttachmentIdImage = AttachmentImageWorker.AttachmentId LEFT OUTER JOIN
                         dbo.Attachment AS AttachmentDocApprove ON dbo.Worker.AttachmentIdDocApproved = AttachmentDocApprove.AttachmentId
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[25] 2[24] 3) )"
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
         Begin Table = "Worker"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 332
               Right = 273
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "AttachmentImageWorker"
            Begin Extent = 
               Top = 6
               Left = 311
               Bottom = 136
               Right = 491
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "AttachmentDocApprove"
            Begin Extent = 
               Top = 6
               Left = 529
               Bottom = 136
               Right = 709
            End
            DisplayFlags = 280
            TopColumn = 7
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
         Column = 6285
         Alias = 4080
         Table = 4215
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
', 'SCHEMA', N'dbo', 'VIEW', N'WorkerView', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'WorkerView', NULL, NULL
GO
