SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectDeed_DELETE] @ProjectCode VARCHAR(10) = NULL
AS
     DELETE [con].[ProjectDeed]
     WHERE ProjectCode = @ProjectCode;
GO
