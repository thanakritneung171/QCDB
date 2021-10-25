SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronicDetail_READ_BY] @Id  INT = NULL
AS
     SELECT *, dbo.GetElectronicDescriptionByCode(re.ElectronicCode) as ElectronicDescription
     FROM [MAC].[RepairElectronicDetail] re
     WHERE Id = @Id;
GO
