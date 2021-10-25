SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Electronic_SEARCH] @SearchElectronic NVARCHAR(MAX) = NULL, 
                                          @ProjectCode      NVARCHAR(10)  = NULL
AS
     DECLARE @CountKeyword INT;
     SET @CountKeyword =
     (
         SELECT COUNT(*)
         FROM dbo.STRING_SPLIT(RTRIM(LTRIM(@SearchElectronic)), ' ') AS search
     );
    BEGIN
        SET NOCOUNT ON;
        SELECT RESULT.* ,dbo.GetElectronicDescriptionByCode(RESULT.ElectronicCode) as Description 	 ,(SELECT COUNT(*) FROM RepairElectronicDetail d WHERE d.ElectronicCode = RESULT.ElectronicCode AND (d.RepairDetail IS NOT NULL OR d.RepairCompleteDate IS NOT NULL OR d.RepairBy IS NOT NULL) AND (d.HasCantFix = 0)) as RepairingCount
        FROM
        (
            SELECT COUNT(*) AS Counts, 
                   e.ElectronicCode, 
                   MIN(e.ElectronicTypeId) as ElectronicTypeId , 
                   MIN(e.ProjectCode) as ProjectCode, 
                   MIN(e.Brand) as Brand, 
                   MIN(e.Model) as Model, 
                   MIN(e.Size) as Size, 
                   MIN(e.Color) as Color, 
                   MIN(e.Specification) as Specification, 
                   MIN(e.SerialNumber) as SerialNumber, 
                   MIN(convert(int, e.Active)) as Active, 
                   MIN(e.STATUS) as STATUS, 
                   MIN(e.RunningNo) as RunningNo, 
                   MIN(e.BuyDate) as BuyDate, 
                   MIN(e.Price) as Price, 
				   MIN(e.Amount) as Amount, 
                   MIN(e.EstimatedPrice) as EstimatedPrice, 
                   MIN(e.CreatedDate) as CreatedDate, 
                   MIN(e.CreatedBy) as CreatedBy , 
                   MIN(e.ModifiedDate) as ModifiedDate, 
                   MIN(e.ModifiedBy) as ModifiedBy,
				   MIN(t.ElectronicTypeName) as ElectronicTypeName
            FROM [MAC].[Electronic] e
                 JOIN [MAC].[ElectronicType] t ON e.ElectronicTypeId = t.ElectronicTypeId
                 JOIN dbo.STRING_SPLIT(RTRIM(LTRIM(@SearchElectronic)), ' ') AS search ON ISNULL(e.ElectronicCode + ' ', '') + ISNULL(t.ElectronicTypeName + ' ', '') + ISNULL(e.Brand + ' ', '') + ISNULL(e.Model + ' ', '') + ISNULL(e.Color + ' ', '') + ISNULL(e.Size + ' ', '') + ISNULL(e.Specification + ' ', '') + ISNULL(e.SerialNumber + ' ', '') LIKE N'%' + search.value + '%'
            WHERE(e.ProjectCode = @ProjectCode
                  OR @ProjectCode IS NULL
                  OR @ProjectCode = '')
            GROUP BY e.ElectronicCode
        ) AS RESULT
        WHERE RESULT.Counts >= @CountKeyword
        ORDER BY RESULT.ElectronicCode;
    END;

GO
