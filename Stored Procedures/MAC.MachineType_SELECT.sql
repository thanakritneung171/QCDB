SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[MachineType_SELECT] @Active BIT = NULL
AS
     SELECT *
     FROM [MAC].[MachineType]
     WHERE (Active = @Active OR @Active IS NULL)
GO
