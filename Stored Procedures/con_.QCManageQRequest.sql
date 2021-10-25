SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[QCManageQRequest]
AS
BEGIN
    SELECT
        (
            SELECT MIN(qcr.RequestDate)
            FROM con.QCRequest qcr
                LEFT JOIN con.ProjectConstructionUnitProgress pcode
                    ON pcode.UnitId = qcr.UnitId
                LEFT JOIN con.Project pj
                    ON pj.ProjectCode = pcode.ProjectCode
            WHERE pj.ProjectCode = pjjj.ProjectCode
        ) AS MINDATE,
        pjjj.ProjectName,
        (
            SELECT COUNT(qcr.Id)
            FROM con.QCRequest qcr
                LEFT JOIN con.ProjectConstructionUnitProgress pcode
                    ON pcode.UnitId = qcr.UnitId
                LEFT JOIN con.Project pj
                    ON pj.ProjectCode = pcode.ProjectCode
            WHERE pj.ProjectCode = pjjj.ProjectCode
        ) AS COUNTRequest
    FROM con.Project pjjj
    WHERE
    (
        SELECT COUNT(qcr.Id)
        FROM con.QCRequest qcr
            LEFT JOIN con.ProjectConstructionUnitProgress pcode
                ON pcode.UnitId = qcr.UnitId
            LEFT JOIN con.Project pj
                ON pj.ProjectCode = pcode.ProjectCode
        WHERE pj.ProjectCode = pjjj.ProjectCode
    )   != 0;

END;
GO
