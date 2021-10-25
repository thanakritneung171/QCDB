SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProgressPercentSetting_SELECT] @Type          INT          = NULL
AS
     SELECT *
     FROM [con].[ProgressPercentSetting] 
     WHERE (Type = @Type OR @Type IS NULL) AND Active = 1
GO
