SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[QCFormPlan_READ_BY_ID]
(@FormId INT = '')
AS
BEGIN
    --SELECT FormId,
    --       PlanCode
    --FROM con.QCFormPlan
    ----WHERE FormId = @FormId;

    SELECT qcformplan.FormId,
           qcformplan.PlanCode,
           p.PlanName
    FROM con.QCFormPlan qcformplan
        LEFT JOIN con.[Plan] p
            ON p.PlanCode = qcformplan.PlanCode
    WHERE FormId = @FormId;

END;
GO
