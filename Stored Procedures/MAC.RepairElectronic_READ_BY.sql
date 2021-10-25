SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronic_READ_BY] @RepairElectronicCode  NVARCHAR(10) = NULL
AS
     SELECT *
     FROM [MAC].[RepairElectronic] re
     WHERE RepairElectronicCode = @RepairElectronicCode;
GO
