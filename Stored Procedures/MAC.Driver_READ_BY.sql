SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Driver_READ_BY] @DriverId INT = NULL
AS
     SELECT *
     FROM [MAC].[Driver]
     WHERE DriverId = @DriverId;
GO
