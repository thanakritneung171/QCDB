SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[QCRequest_READ]
--   (

--)
AS
BEGIN
    SELECT
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
        SiteEngApproveBy,
        SiteEngApproveDate,
        ProjectEngApprovedBy
    ,ProjectEngApprovedDate,
    CreatedDate,
    CreatedBy
    FROM con.QCRequest;
END;
GO
