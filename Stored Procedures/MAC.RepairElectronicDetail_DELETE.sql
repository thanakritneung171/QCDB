SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronicDetail_DELETE] @Id INT = NULL
AS
     DELETE [MAC].[RepairElectronicDetail]
     WHERE Id = @Id;
GO
