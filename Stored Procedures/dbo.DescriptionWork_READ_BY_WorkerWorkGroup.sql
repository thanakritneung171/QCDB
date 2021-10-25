SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[DescriptionWork_READ_BY]    Script Date: 4/9/2564 14:17:33 ******/


CREATE PROCEDURE [dbo].[DescriptionWork_READ_BY_WorkerWorkGroup] 
	@WorkerWorkGroupId int = NULL
AS
     SELECT DV.*,WWG.*
     FROM DescriptionWorkView DV
	 LEFT JOIN WorkerWorkGroupView WWG on WWG.WorkerWorkGroup_WorkGroupId = DV.DescriptionWork_WorkGroupId
     WHERE DV.DescriptionWork_WorkGroupId = @WorkerWorkGroupId AND Dv.DescriptionWork_Active = 1


	 
GO
