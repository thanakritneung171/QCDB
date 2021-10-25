SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[QCForm_CREATE]
(
    @FormName NVARCHAR(500) = '',
    --@Active BIT = '',
    @CreatedBy INT = '',
    @ModifiedBy INT = ''
--,@PlanCode varchar(10) =''
)
AS
BEGIN
    DECLARE @FormId INT = '';
    SET @FormId =
    (
        SELECT MAX(FormId) + 1 FROM con.QCForm
    );

    INSERT con.QCForm
    (
        FormId,
        FormName,
        Active,
        CreatedDate,
        CreatedBy,
        ModifiedDate,
        ModifiedBy
    )
    VALUES
    (   @FormId,    -- FormId - int
        @FormName,  -- FormName - nvarchar(500)
        1,          -- Active - bit
        GETDATE(),  -- CreatedDate - datetime
        @CreatedBy, -- CreatedBy - int
        GETDATE(),  -- ModifiedDate - datetime
        @ModifiedBy -- ModifiedBy - int
        );

    --DECLARE @FormId_IDENTITY INT =
    --        (

    SELECT FormId,
           FormName,
           Active,
           ModifiedDate,
           ModifiedBy
    FROM con.QCForm
    WHERE FormId = @FormId;
--);


--INSERT con.QCFormPlan
--(
--    FormId,
--    PlanCode
--)
--VALUES
--(   @FormId_IDENTITY, -- FormId - int
--    @PlanCode -- PlanCode - varchar(10)
--    ) ,(   @FormId_IDENTITY, -- FormId - int
--    @PlanCode -- PlanCode - varchar(10)
--    ) 



END;
GO
