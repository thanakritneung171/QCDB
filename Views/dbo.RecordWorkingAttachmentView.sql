SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[RecordWorkingAttachmentView]
AS
SELECT dbo.RecordWorkingAttachment.Id AS RecordWorkingAttachment_Id, dbo.RecordWorkingAttachment.DailyCode AS RecordWorkingAttachment_DailyCode, 
                  dbo.RecordWorkingAttachment.AttachmentId AS RecordWorkingAttachment_AttachmentId, dbo.RecordWorkingAttachment.Remark AS RecordWorkingAttachment_Remark, 
                  dbo.RecordWorkingAttachment.Status AS RecordWorkingAttachment_Status, dbo.RecordWorkingAttachment.Round AS RecordWorkingAttachment_Round, 
                  dbo.RecordWorkingAttachment.IsActive AS RecordWorkingAttachment_IsActive, dbo.RecordWorkingAttachment.CreateBy AS RecordWorkingAttachment_CreateBy, 
                  dbo.RecordWorkingAttachment.CreateDate AS RecordWorkingAttachment_CreateDate, dbo.RecordWorkingAttachment.LastUpdateBy AS RecordWorkingAttachment_LastUpdateBy, 
                  dbo.RecordWorkingAttachment.LastUpdateDate AS RecordWorkingAttachment_LastUpdateDate, dbo.Attachment.AttachmentId AS Attachment_AttachmentId, dbo.Attachment.AttachmentCode AS Attachment_AttachmentCode, 
                  dbo.Attachment.FileName AS Attachment_FileName, dbo.Attachment.FileSize AS Attachment_FileSize, dbo.Attachment.FileType AS Attachment_FileType, dbo.Attachment.IsActive AS Attachment_IsActive, 
                  dbo.Attachment.CreateBy AS Attachment_CreateBy, dbo.Attachment.CreateDate AS Attachment_CreateDate, dbo.Attachment.LastUpdateBy AS Attachment_LastUpdateBy, 
                  dbo.Attachment.LastUpdateDate AS Attachment_LastUpdateDate, dbo.Attachment.Path AS Attachment_Path
FROM     dbo.RecordWorkingAttachment INNER JOIN
                  dbo.Attachment ON dbo.RecordWorkingAttachment.AttachmentId = dbo.Attachment.AttachmentId
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[35] 4[27] 2[20] 3) )"
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
         Begin Table = "RecordWorkingAttachment"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 302
               Right = 259
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Attachment"
            Begin Extent = 
               Top = 7
               Left = 307
               Bottom = 294
               Right = 514
            End
            DisplayFlags = 280
            TopColumn = 2
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
         Alias = 3780
         Table = 3516
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'RecordWorkingAttachmentView', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'RecordWorkingAttachmentView', NULL, NULL
GO
