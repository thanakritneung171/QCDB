SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [con].[QCFormPlan_DELETE]
( @FormId INT =''
)
AS
BEGIN
    DELETE con.QCFormPlan WHERE FormId = @FormId

END
GO
