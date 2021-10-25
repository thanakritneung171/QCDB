SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronic_SELECT] @RepairElectronicCode NVARCHAR(10) = NULL, 
                                                @ProjectCode          NVARCHAR(10) = NULL, 
                                                @ElectronicCodeSearch NVARCHAR(10) = NULL, 
                                                @SearchStartDate      DATETIME     = NULL, 
                                                @SearchToDate         DATETIME     = NULL
AS
     SELECT DISTINCT 
            re.*
     FROM [MAC].[RepairElectronic] re
          LEFT JOIN [MAC].[RepairElectronicDetail] detail ON re.RepairElectronicCode = detail.RepairElectronicCode
     WHERE(re.RepairElectronicCode LIKE '%' + @RepairElectronicCode + '%'
           OR @RepairElectronicCode IS NULL)
          AND (ProjectCode = @ProjectCode
               OR @ProjectCode IS NULL
               OR @ProjectCode = ''
               --OR (@ElectronicCodeSearch != '' AND @ElectronicCodeSearch IS NOT NULL)
			   OR (@RepairElectronicCode != '' AND @RepairElectronicCode IS NOT NULL))
          AND (detail.ElectronicCode = @ElectronicCodeSearch
               OR @ElectronicCodeSearch IS NULL
               OR @ElectronicCodeSearch = ''
               OR (@RepairElectronicCode != '' AND @RepairElectronicCode IS NOT NULL))
          AND (CAST(re.NotifyRepairDate AS DATE) >= CAST(@SearchStartDate AS DATE)
               OR @SearchStartDate IS NULL)
          AND (CAST(re.NotifyRepairDate AS DATE) <= CAST(@SearchToDate AS DATE)
               OR @SearchToDate IS NULL);
GO
