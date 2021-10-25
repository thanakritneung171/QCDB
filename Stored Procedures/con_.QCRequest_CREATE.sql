SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[QCRequest_CREATE]
(
    @UnitId INT = '',
    @QCFormDetailId INT = '',
    @QCName NVARCHAR(250) = '',
    @ContractorCode VARCHAR(10) = '',
    @Foreman VARCHAR(10) = '',
    @SiteEng VARCHAR(10) = '',
    @ProjectEng VARCHAR(10) = '',
    @Remark NVARCHAR(500) = '',
    @Status SMALLINT = '',
    @CreatedBy INT = ''
)
AS
BEGIN

    DECLARE @Id INT = '';
    --SET @Id =
    --(
    SELECT @Id = ISNULL(MAX(Id), 0) + 1
    FROM con.QCRequest;
    --);

    INSERT con.QCRequest
    (
        Id,
        RequestDate,
        UnitId,
        QCFormDetailId,
        QCName,
        ContractorCode,
        Foreman,
        SiteEng,
        ProjectEng,
        Remark,
        Status,
        CreatedDate,
        CreatedBy
    )
    VALUES
    (   @Id,             -- Id - int
        GETDATE(),       -- RequestDate - datetime
        @UnitId,         -- UnitId - int
        @QCFormDetailId, -- QCFormDetailId - int
        @QCName,         -- QCName - nvarchar(250)
        @ContractorCode, -- ContractorCode - varchar(10)
        @Foreman,        -- Foreman - varchar(10)
        @SiteEng,        -- SiteEng - varchar(10)
        @ProjectEng,     -- ProjectEng - varchar(10)
        @Remark,         -- Remark - nvarchar(500)
        1,               -- Status - smallint
        GETDATE(),       -- CreatedDate - datetime
        @CreatedBy       -- CreatedBy - int
        );

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
    WHERE QCR.Id = @Id;
END;
GO
