SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[QCForm_READ_BY_ID]
(@FormId int = '')
AS
BEGIN
    SELECT FormId,
           FormName,
           Active,
           --CreatedDate,
           --CreatedBy,
           ModifiedDate,
           ModifiedBy
    FROM con.QCForm
    WHERE FormId = @FormId;
END;
GO
