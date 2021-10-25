SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ApprovedMonthlyAttachmentView]
AS
SELECT        dbo.ApprovedMonthlyAttachment.Id AS ApprovedMonthlyAttachment_Id, dbo.ApprovedMonthlyAttachment.MonthlyCode AS ApprovedMonthlyAttachment_MonthlyCode, 
                         dbo.ApprovedMonthlyAttachment.AttachmentId AS ApprovedMonthlyAttachment_AttachmentId, dbo.ApprovedMonthlyAttachment.Remark AS ApprovedMonthlyAttachment_Remark, 
                         dbo.ApprovedMonthlyAttachment.Status AS ApprovedMonthlyAttachment_Status, dbo.ApprovedMonthlyAttachment.Round AS ApprovedMonthlyAttachment_Round, 
                         dbo.ApprovedMonthlyAttachment.IsActive AS ApprovedMonthlyAttachment_IsActive, dbo.ApprovedMonthlyAttachment.CreateBy AS ApprovedMonthlyAttachment_CreateBy, 
                         dbo.ApprovedMonthlyAttachment.CreateDate AS ApprovedMonthlyAttachment_CreateDate, dbo.ApprovedMonthlyAttachment.LastUpdateBy AS ApprovedMonthlyAttachment_LastUpdateBy, 
                         dbo.ApprovedMonthlyAttachment.LastUpdateDate AS ApprovedMonthlyAttachment_LastUpdateDate, dbo.Attachment.AttachmentId AS Attachment_AttachmentId, dbo.Attachment.AttachmentCode AS Attachment_AttachmentCode, 
                         dbo.Attachment.FileName AS Attachment_FileName, dbo.Attachment.FileSize AS Attachment_FileSize, dbo.Attachment.FileType AS Attachment_FileType, dbo.Attachment.IsActive AS Attachment_IsActive, 
                         dbo.Attachment.CreateBy AS Attachment_CreateBy, dbo.Attachment.CreateDate AS Attachment_CreateDate, dbo.Attachment.LastUpdateBy AS Attachment_LastUpdateBy, 
                         dbo.Attachment.LastUpdateDate AS Attachment_LastUpdateDate, dbo.Attachment.Path AS Attachment_Path
FROM            dbo.ApprovedMonthlyAttachment INNER JOIN
                         dbo.Attachment ON dbo.ApprovedMonthlyAttachment.AttachmentId = dbo.Attachment.AttachmentId
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
         Begin Table = "ApprovedMonthlyAttachment"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 281
               Right = 210
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Attachment"
            Begin Extent = 
               Top = 6
               Left = 248
               Bottom = 283
               Right = 428
            End
            DisplayFlags = 280
            TopColumn = 0
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
         Column = 2235
         Alias = 5985
         Table = 3960
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
', 'SCHEMA', N'dbo', 'VIEW', N'ApprovedMonthlyAttachmentView', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'ApprovedMonthlyAttachmentView', NULL, NULL
GO
