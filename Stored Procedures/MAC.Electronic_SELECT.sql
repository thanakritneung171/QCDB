SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Electronic_SELECT] @ElectronicTypeId INT           = NULL, 
                                          @ProjectCode      NVARCHAR(10)  = NULL, 
                                          @SerialNumber     NVARCHAR(MAX) = NULL, 
                                          @Active           BIT           = NULL
AS
     SELECT * , t.ElectronicTypeName ,dbo.GetElectronicDescriptionByCode(e.ElectronicCode) as Description
	 ,(SELECT COUNT(*) FROM RepairElectronicDetail d WHERE d.ElectronicCode = e.ElectronicCode AND (d.RepairDetail IS NOT NULL OR d.RepairCompleteDate IS NOT NULL OR d.RepairBy IS NOT NULL) AND (d.HasCantFix = 0)) as RepairingCount
     FROM [MAC].[Electronic] e
	 JOIN [MAC].[ElectronicType] t on e.ElectronicTypeId = t.ElectronicTypeId 
     WHERE(e.ElectronicTypeId = @ElectronicTypeId
           OR @ElectronicTypeId IS NULL)
          AND (ProjectCode = @ProjectCode
              OR @ProjectCode IS NULL OR @ProjectCode = '')
          AND (SerialNumber = @SerialNumber
              OR @SerialNumber IS NULL OR @SerialNumber = '')
			  AND (e.Active = @Active OR @Active IS NULL)

GO
