SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairManGroup_SELECT] @Active     BIT = NULL, 
                                              @RepairType INT = NULL
AS
     SELECT *
     FROM [MAC].[RepairManGroup]
     WHERE(RepairType = @RepairType OR @RepairType IS NULL) AND (Active = @Active OR @Active IS NULL);
GO
