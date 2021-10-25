SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[QCFormPlan_CREATE]
(
    @FormId INT = '',
    @PlanCode varchar(10) = ''
)
AS
BEGIN
    INSERT con.QCFormPlan
    (
        FormId,
        PlanCode
    )
    VALUES
    (   @FormId,  -- FormId - int
        @PlanCode -- PlanCode - varchar(10)
        );
    SELECT qcformplan.FormId,
           qcformplan.PlanCode,
           p.PlanName
    FROM con.QCFormPlan qcformplan
        LEFT JOIN con.[Plan] p
            ON p.PlanCode = qcformplan.PlanCode
    WHERE qcformplan.FormId = @FormId
          AND qcformplan.PlanCode = @PlanCode;

END;
GO
