SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[QCRequest_READ_BY]
(
    @ProjectCode VARCHAR(10) = NULL,
    @UnitId INT = NULL,
    @QCReqeustId INT = NULL
)
AS
BEGIN
    SELECT QCR.Id,
           RequestDate,
           QCR.UnitId,
           QCFormDetailId,
           QCR.QCName,
           ContractorCode,
           Foreman,
           SiteEng,
           ProjectEng,
           Remark,
           Status,
           SiteEngApproveBy,
           SiteEngApproveDate,
           ProjectEngApprovedBy,
           ProjectEngApprovedDate,
           QCR.CreatedDate,
           QCR.CreatedBy,
           PCUP.ProjectCode,
           PCUP.UnitNumber,
           QCFD.SetNumber,
           QCFD.WorkId,
           QCFD.Number
    FROM con.QCRequest QCR
        LEFT JOIN con.ProjectConstructionUnitProgress PCUP
            ON PCUP.UnitId = QCR.UnitId
        LEFT JOIN con.QCFormDetail QCFD
            ON QCFD.Id = QCR.QCFormDetailId
    WHERE (
              PCUP.ProjectCode = @ProjectCode
              OR @ProjectCode IS NULL
          )
          AND
          (
              QCR.UnitId = @UnitId
              OR @UnitId IS NULL
          )
          AND
          (
              QCR.Id = @QCReqeustId
              OR @QCReqeustId IS NULL
          )
    ORDER BY PCUP.UnitNumber ASC,
             QCFD.Number ASC;
END;


GO
