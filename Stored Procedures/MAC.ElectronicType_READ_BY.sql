SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[ElectronicType_READ_BY] @ElectronicTypeId INT = NULL
AS
     SELECT *
     FROM [MAC].[ElectronicType]
     WHERE ElectronicTypeId = @ElectronicTypeId;
GO
