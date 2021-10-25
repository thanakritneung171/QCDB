SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ContractorView]
AS
SELECT ContractorCode AS Contractor_ContractorCode, ContractorTitle AS Contractor_ContractorTitle, ContractorName AS Contractor_ContractorName, ContractorLastName AS Contractor_ContractorLastName, 
                  ContractorNameEN AS Contractor_ContractorNameEN, ContractorLastNameEN AS Contractor_ContractorLastNameEN, Identification AS Contractor_Identification, Refcode AS Contractor_Refcode, 
                  PassportNo AS Contractor_PassportNo, OldPassportNo AS Contractor_OldPassportNo, ContractorType AS Contractor_ContractorType, Address AS Contractor_Address, Phone AS Contractor_Phone, 
                  ProjectSent AS Contractor_ProjectSent, UserSent AS Contractor_UserSent, CreatedDate AS Contractor_CreatedDate, CreatedBy AS Contractor_CreatedBy, ModifiedDate AS Contractor_ModifiedDate, 
                  ModifiedBy AS Contractor_ModifiedBy, Active AS Contractor_Active, AccountNumber AS Contractor_AccountNumber, BalanceAmount AS Contractor_BalanceAmount, TaxNumber AS Contractor_TaxNumber, 
                  AliasName AS Contractor_AliasName, BankId AS Contractor_BankId, WorkPermitName AS Contractor_WorkPermitName, TaxPayerName AS Contractor_TaxPayerName
FROM     con.Contractor
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
         Begin Table = "Contractor (con)"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 424
               Right = 298
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
         Column = 1440
         Alias = 3084
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
', 'SCHEMA', N'dbo', 'VIEW', N'ContractorView', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'ContractorView', NULL, NULL
GO
