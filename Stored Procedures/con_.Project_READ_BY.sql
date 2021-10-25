SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Project_READ_BY] @ProjectCode            VARCHAR(10)   = NULL
AS
     SELECT *
     FROM [con].[Project]
     WHERE ProjectCode = @ProjectCode;
GO
