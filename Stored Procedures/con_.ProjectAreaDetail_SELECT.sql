SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectAreaDetail_SELECT] @ProjectCode          VARCHAR(10)    = NULL
AS
     SELECT *
     FROM [con].[ProjectAreaDetail]
     WHERE ProjectCode = @ProjectCode;
GO
