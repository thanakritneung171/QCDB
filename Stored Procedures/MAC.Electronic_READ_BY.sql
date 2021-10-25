SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Electronic_READ_BY] @ElectronicCode NVARCHAR(10) = NULL
AS
     SELECT *, 
            t.ElectronicTypeName,
			dbo.GetElectronicDescriptionByCode(e.ElectronicCode) as Description,
			(SELECT COUNT(*) FROM RepairElectronicDetail d WHERE d.ElectronicCode = e.ElectronicCode AND (d.RepairDetail IS NOT NULL OR d.RepairCompleteDate IS NOT NULL OR d.RepairBy IS NOT NULL) AND (d.HasCantFix = 0)) as RepairingCount
     FROM [MAC].[Electronic] e
     JOIN [MAC].[ElectronicType] t ON e.ElectronicTypeId = t.ElectronicTypeId
     WHERE e.ElectronicCode = @ElectronicCode;

GO
