SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[RecordWorkingDetailView]
AS
SELECT dbo.RecordWorkingDetail.DailyDetailId AS RecordWorkingDetail_DailyDetailId, dbo.RecordWorkingDetail.DailyCode AS RecordWorkingDetail_DailyCode, dbo.RecordWorkingDetail.WorkerCode AS RecordWorkingDetail_WorkerCode, 
                  dbo.RecordWorkingDetail.WorkType AS RecordWorkingDetail_WorkType, dbo.RecordWorkingDetail.WorkGroup AS RecordWorkingDetail_WorkGroup, dbo.RecordWorkingDetail.WorkTime AS RecordWorkingDetail_WorkTime, 
                  dbo.RecordWorkingDetail.Round AS RecordWorkingDetail_Round, dbo.RecordWorkingDetail.Description AS RecordWorkingDetail_Description, dbo.RecordWorkingDetail.Remark AS RecordWorkingDetail_Remark, 
                  dbo.RecordWorkingDetail.TotalOverTime AS RecordWorkingDetail_TotalOverTime, dbo.RecordWorkingDetail.Owner AS RecordWorkingDetail_Owner, 
                  dbo.RecordWorkingDetail.HasDefaultMonthly AS RecordWorkingDetail_HasDefaultMonthly, dbo.RecordWorkingDetail.Wage AS RecordWorkingDetail_Wage, dbo.RecordWorkingDetail.Amount AS RecordWorkingDetail_Amount, 
                  dbo.RecordWorkingDetail.Total AS RecordWorkingDetail_Total, dbo.RecordWorkingDetail.ContractorCode AS RecordWorkingDetail_ContractorCode, dbo.RecordWorkingDetail.IsContractor AS RecordWorkingDetail_IsContractor, 
                  dbo.RecordWorkingDetail.IsCover AS RecordWorkingDetail_IsCover, dbo.RecordWorkingDetail.TravelExpensesType AS RecordWorkingDetail_TravelExpensesType, 
                  dbo.RecordWorkingDetail.TravelExpenses AS RecordWorkingDetail_TravelExpenses, dbo.RecordWorkingDetail.Represent AS RecordWorkingDetail_Represent, dbo.RecordWorkingDetail.IsActive AS RecordWorkingDetail_IsActive, 
                  dbo.RecordWorkingDetail.ProjectCode AS RecordWorkingDetail_ProjectCode, con.Project.ProjectName AS RecordWorkingDetail_ProjectName, dbo.RecordWorkingDetail.IsExternal AS RecordWorkingDetail_IsExternal, 
                  dbo.RecordWorkingDetail.DescriptionWork AS RecordWorkingDetail_DescriptionWork, dbo.RecordWorkingDetail.Holiday AS RecordWorkingDetail_Holiday, dbo.Worker.WorkerCode AS Worker_WorkerCode, 
                  dbo.Worker.Title AS Worker_Title, dbo.Worker.FirstName AS Worker_FirstName, dbo.Worker.LastName AS Worker_LastName, dbo.Worker.IdentificationNo AS Worker_IdentificationNo, dbo.Worker.PassportNo AS Worker_PassportNo, 
                  dbo.Worker.Phone AS Worker_Phone, dbo.Worker.Address AS Worker_Address, dbo.Worker.ProjectId AS Worker_ProjectId, dbo.Worker.WageId AS Worker_WageId, dbo.Worker.WorkStatus AS Worker_WorkStatus, 
                  dbo.Worker.Remark AS Worker_Remark, dbo.Worker.Active AS Worker_Active, dbo.Worker.RunningNo AS Worker_RunningNo, dbo.Worker.CreatedDate AS Worker_CreatedDate, dbo.Worker.CreatedBy AS Worker_CreatedBy, 
                  dbo.Worker.ApprovedDate AS Worker_ApprovedDate, dbo.Worker.ApprovedBy AS Worker_ApprovedBy, dbo.Worker.ModifiedDate AS Worker_ModifiedDate, dbo.Worker.ModifiedBy AS Worker_ModifiedBy, 
                  dbo.Worker.AliasName AS Worker_AliasName, dbo.Worker.AttachmentIdImage AS Worker_AttachmentIdImage, dbo.Worker.AttachmentIdDocApproved AS Worker_AttachmentIdDocApproved, dbo.UserView.UserProfile_UserId, 
                  dbo.UserView.UserProfile_Name, dbo.UserView.Employee_FirstName, dbo.UserView.Employee_LastName, dbo.UserView.Employee_NickName, dbo.UserView.Employee_Title, dbo.UserView.Employee_UserName, 
                  dbo.WorkerWorkGroup.WorkGroupId AS WorkerWorkGroup_WorkGroupId, dbo.WorkerWorkGroup.WorkGroupName AS WorkerWorkGroup_WorkGroupName, dbo.WorkerWorkGroup.Active AS WorkerWorkGroup_Active, 
                  dbo.WorkerWorkGroup.CreatedDate AS WorkerWorkGroup_CreatedDate, dbo.WorkerWorkGroup.CreatedBy AS WorkerWorkGroup_CreatedBy, dbo.WorkerWorkGroup.ModifiedDate AS WorkerWorkGroup_ModifiedDate, 
                  dbo.WorkerWorkGroup.ModifiedBy AS WorkerWorkGroup_ModifiedBy, con.Contractor.ContractorCode AS Contractor_ContractorCode, con.Contractor.ContractorTitle AS Contractor_ContractorTitle, 
                  con.Contractor.ContractorName AS Contractor_ContractorName, con.Contractor.ContractorLastName AS Contractor_ContractorLastName, con.Contractor.ContractorNameEN AS Contractor_ContractorNameEN, 
                  con.Contractor.ContractorLastNameEN AS Contractor_ContractorLastNameEN, con.Contractor.Identification AS Contractor_Identification, con.Contractor.Refcode AS Contractor_Refcode, 
                  con.Contractor.PassportNo AS Contractor_PassportNo, con.Contractor.OldPassportNo AS Contractor_OldPassportNo, con.Contractor.ContractorType AS Contractor_ContractorType, con.Contractor.Address AS Contractor_Address, 
                  con.Contractor.Phone AS Contractor_Phone, con.Contractor.ProjectSent AS Contractor_ProjectSent, con.Contractor.UserSent AS Contractor_UserSent, con.Contractor.CreatedDate AS Contractor_CreatedDate, 
                  con.Contractor.CreatedBy AS Contractor_CreatedBy, con.Contractor.ModifiedDate AS Contractor_ModifiedDate, con.Contractor.ModifiedBy AS Contractor_ModifiedBy, con.Contractor.Active AS Contractor_Active, 
                  con.Contractor.AccountNumber AS Contractor_AccountNumber, con.Contractor.BalanceAmount AS Contractor_BalanceAmount, con.Contractor.TaxNumber AS Contractor_TaxNumber, 
                  con.Contractor.AliasName AS Contractor_AliasName, con.Contractor.BankId AS Contractor_BankId, con.Contractor.WorkPermitName AS Contractor_WorkPermitName, con.Contractor.TaxPayerName AS Contractor_TaxPayerName, 
                  dbo.WorkerWorkGroup.WorkTypeId AS WorkerWorkGroup_WorkTypeId, dbo.DescriptionWork.DesId AS DescriptionWork_DesId, dbo.DescriptionWork.DescriptionName AS DescriptionWork_DescriptionName, 
                  dbo.DescriptionWork.Active AS DescriptionWork_Active, dbo.DescriptionWork.CreatedDate AS DescriptionWork_CreatedDate, dbo.DescriptionWork.CreatedBy AS DescriptionWork_CreatedBy, 
                  dbo.DescriptionWork.ModifiedDate AS DescriptionWork_ModifiedDate, dbo.DescriptionWork.ModifiedBy AS DescriptionWork_ModifiedBy, dbo.DescriptionWork.WorkGroupId AS DescriptionWork_WorkGroupId
FROM     dbo.RecordWorkingDetail LEFT OUTER JOIN
                  dbo.Worker ON dbo.RecordWorkingDetail.WorkerCode = dbo.Worker.WorkerCode LEFT OUTER JOIN
                  dbo.UserView ON dbo.RecordWorkingDetail.Owner = dbo.UserView.Employee_UserName LEFT OUTER JOIN
                  dbo.WorkerWorkGroup ON dbo.RecordWorkingDetail.WorkGroup = dbo.WorkerWorkGroup.WorkGroupId LEFT OUTER JOIN
                  con.Contractor ON dbo.RecordWorkingDetail.ContractorCode = con.Contractor.ContractorCode LEFT OUTER JOIN
                  dbo.DescriptionWork ON dbo.RecordWorkingDetail.DescriptionWork = dbo.DescriptionWork.DesId LEFT OUTER JOIN
                  con.Project ON dbo.RecordWorkingDetail.ProjectCode = con.Project.ProjectCode
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[44] 4[28] 2[13] 3) )"
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
         Top = -480
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RecordWorkingDetail"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 634
               Right = 271
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Worker"
            Begin Extent = 
               Top = 7
               Left = 584
               Bottom = 456
               Right = 787
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "UserView"
            Begin Extent = 
               Top = 7
               Left = 835
               Bottom = 336
               Right = 1071
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WorkerWorkGroup"
            Begin Extent = 
               Top = 7
               Left = 319
               Bottom = 250
               Right = 530
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Contractor (con)"
            Begin Extent = 
               Top = 127
               Left = 1119
               Bottom = 618
               Right = 1369
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DescriptionWork"
            Begin Extent = 
               Top = 501
               Left = 580
               Bottom = 664
               Right = 791
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "Project (con)"
            Begin Extent = 
               Top = 711
               Left = 392
               Bottom = 921
               Right = 633
', 'SCHEMA', N'dbo', 'VIEW', N'RecordWorkingDetailView', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'            End
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
         Column = 2592
         Alias = 4392
         Table = 2580
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
', 'SCHEMA', N'dbo', 'VIEW', N'RecordWorkingDetailView', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'RecordWorkingDetailView', NULL, NULL
GO
