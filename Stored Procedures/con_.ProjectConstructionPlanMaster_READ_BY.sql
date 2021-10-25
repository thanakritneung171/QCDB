SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectConstructionPlanMaster_READ_BY] @Code VARCHAR(10) = NULL
AS
     SELECT *
     FROM [con].[ProjectConstructionPlanMaster] pcp
     WHERE Code = @Code;
GO
