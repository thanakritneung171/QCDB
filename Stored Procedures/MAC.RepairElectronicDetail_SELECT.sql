SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronicDetail_SELECT] @RepairElectronicCode NVARCHAR(10) = NULL
AS
     SELECT * , dbo.GetElectronicDescriptionByCode(re.ElectronicCode) as ElectronicDescription
     FROM [MAC].[RepairElectronicDetail] re 
     WHERE RepairElectronicCode = @RepairElectronicCode;
GO
