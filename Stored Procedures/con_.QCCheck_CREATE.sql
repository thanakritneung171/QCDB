SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[QCCheck_CREATE]
(
    @QCRequestId INT = NULL,
    @AssingTo VARCHAR(10) = NULL,
    @CheckTime SMALLINT = NULL,
    @Status TINYINT = NULL
)
AS
BEGIN

    DECLARE @ID INT = NULL;
    SELECT @ID = ISNULL(MAX(ID), 0) + 1
    FROM con.QCCheck;

    INSERT con.QCCheck
    (
        ID,
        QCRequestId,
        AssignDate,
        AssingTo,
        CheckTime,
        --CheckedDate,
        --Checked,
        --CheckedRemark,
        --Verified,
        --VerifiedRemark,
        --VerifiedDate,
        --VerifiedBy,
        Status
    )
    VALUES
    (   @ID,          -- ID - int
        @QCRequestId, -- QCRequestId - int
        GETDATE(),    -- AssignDate - datetime
        @AssingTo,    -- AssingTo - varchar(10)
        @CheckTime,   -- CheckTime - smallint
                      --GETDATE(), -- CheckedDate - datetime
                      --NULL,      -- Checked - bit
                      --N'',       -- CheckedRemark - nvarchar(500)
                      --NULL,      -- Verified - bit
                      --N'',       -- VerifiedRemark - nvarchar(500)
                      --GETDATE(), -- VerifiedDate - datetime
                      --0,         -- VerifiedBy - int
        @Status       -- Status - tinyint
        );
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
