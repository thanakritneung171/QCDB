SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[QCCheck_READ_BY]
(@ID INT = NULL)
AS
BEGIN
    SELECT ID,
           QCRequestId,
           AssignDate,
           AssingTo,
           CheckTime,
           CheckedDate,
           Checked,
           CheckedRemark,
           Verified,
           VerifiedRemark,
           VerifiedDate,
           VerifiedBy,
           Status
    FROM con.QCCheck
    WHERE ID = @ID;
END;
GO
