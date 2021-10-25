SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkGroupMain_SELECT] @ProjectTypeId INT, 
                                              @Active        BIT
AS
     SELECT *
     FROM [con].[WorkGroupMain]
     WHERE ProjectTypeId = @ProjectTypeId
           AND (Active = @Active
                OR @Active IS NULL);





GO
