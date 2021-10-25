SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[QCForm_UPDATE]
(
    @FormId INT = '',
    @FormName NVARCHAR(500) = '',
    @ModifiedBy INT = ''
)
AS
BEGIN
    UPDATE con.QCForm
    SET FormName = @FormName,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = GETDATE()
    WHERE FormId = @FormId;

    SELECT FormId,
           FormName,
           Active,
           ModifiedDate,
           ModifiedBy
    FROM con.QCForm
    WHERE FormId = @FormId;

END;
GO
