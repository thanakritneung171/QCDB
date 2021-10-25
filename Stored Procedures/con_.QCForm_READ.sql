SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [con].[QCForm_READ]

AS
BEGIN
    SELECT FormId,
           FormName,
           Active,
           --CreatedDate,
           --CreatedBy,
           ModifiedDate,
           ModifiedBy FROM  con.QCForm
END
GO
