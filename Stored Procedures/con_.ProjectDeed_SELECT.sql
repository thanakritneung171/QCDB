SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectDeed_SELECT] @ProjectCode VARCHAR(10) = NULL
AS
     SELECT *
     FROM [con].[ProjectDeed]
     WHERE ProjectCode = @ProjectCode;
GO
