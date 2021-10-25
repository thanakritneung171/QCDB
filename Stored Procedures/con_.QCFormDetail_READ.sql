SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[QCFormDetail_READ]
(@FormId INT = '')
AS
BEGIN
    SELECT Id,
           FormId,
           Number,
           WorkId,
           QCName,
           --DESCRIPTION,
           --Review,
           Progress,
           SetNumber,
           AttachedFile,
           WorkGroupMainId
    --,ACTIVE
    --,CreatedDate,
    --CreatedBy,
    --ModifiedDate,
    --ModifiedBy
    FROM con.QCFormDetail
    WHERE FormId = @FormId;

END;
GO
