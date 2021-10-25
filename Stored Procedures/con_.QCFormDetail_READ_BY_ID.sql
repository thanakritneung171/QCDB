SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [con].[QCFormDetail_READ_BY_ID]
(@Id INT = '')
AS
BEGIN
    SELECT Id,
           FormId,
           Number,
           WorkId,
           QCName,
           Description,
           Review,
           Progress,
           SetNumber,
           AttachedFile,
		   WorkGroupMainId,
           Active,
           --,CreatedDate,
           --CreatedBy
           ModifiedDate,
           ModifiedBy
    FROM con.QCFormDetail
    WHERE Id = @Id;

END;
GO
