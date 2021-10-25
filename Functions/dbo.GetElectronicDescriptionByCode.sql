SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[GetElectronicDescriptionByCode]
(
  @ElectronicCode NVARCHAR(10)
)
RETURNS NVARCHAR(MAX)
AS
BEGIN
  DECLARE @ElectronicName NVARCHAR(MAX)
  SELECT @ElectronicName = ISNULL(ElectronicCode + ' ','') + ISNULL(t.ElectronicTypeName + ' ','') +  ISNULL(Brand + ' ','') +  ISNULL(Model + ' ','') +  ISNULL(Color + ' ','') + +  ISNULL(Size + ' ','') +  ISNULL(Specification + ' ','')   +  ISNULL('(Serial ' + SerialNumber + ') ','')
  FROM [MAC].[Electronic] e 
  JOIN [MAC].[ElectronicType] t on e.ElectronicTypeId = t.ElectronicTypeId
  WHERE ElectronicCode = @ElectronicCode
  RETURN @ElectronicName
END

GO
