SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkStatement_SELECT] @ProjectTypeId   INT, 
                                              @WorkGroupMainId INT, 
                                              @WorkGroupId     INT, 
                                              @WorkId          INT, 
                                              @Active          BIT, 
                                              @IsCurrent       BIT, 
                                              @Status          INT
AS
     SELECT *
     FROM [con].[WorkStatement] t
	 JOIN [con].WorkGroupMain wm on t.WorkGroupMainId = wm.Id
     WHERE(t.ProjectTypeId = @ProjectTypeId
           OR @ProjectTypeId IS NULL)
          AND (t.WorkGroupMainId = @WorkGroupMainId
               OR @WorkGroupMainId IS NULL)
          AND (t.WorkGroupId = @WorkGroupId
               OR @WorkGroupId IS NULL)
          AND (t.WorkId = @WorkId
               OR @WorkId IS NULL)
          AND (t.Active = @Active
               OR @Active IS NULL)
          AND (t.IsCurrent = @IsCurrent
               OR @IsCurrent IS NULL)
          AND (t.Status = @Status
               OR @Status IS NULL)
		  AND wm.Active = 1





GO
