SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectAreaDetail_DELETE] @ProjectCode          VARCHAR(10)    = NULL
AS
     DELETE [con].[ProjectAreaDetail]
     WHERE ProjectCode = @ProjectCode;
GO
