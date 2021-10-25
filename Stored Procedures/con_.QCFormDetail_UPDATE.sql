SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[QCFormDetail_UPDATE]
(
    @Id INT = '',
    @FormId INT = '',
    @Number INT = '',
    @WorkId INT = '',
    @QCName NVARCHAR(250) = '',
    @DESCRIPTION NVARCHAR(MAX) = '',
    @Review NVARCHAR(MAX) = '',
    @Progress DECIMAL(5, 2) = '',
    @SetNumber INT = '',
    @AttachedFile BIT = '',
    --@ACTIVE BIT = '',
    --@CreatedDate DATETIME = '',
    --@CreatedBy INT = '',
    --@ModifiedDate DATETIME = '',
    @ModifiedBy INT = ''
)
AS
BEGIN

    --SET @Id =
    --(
    --    SELECT MAX(Id) + 1 FROM con.QCFormDetail
    --);

    UPDATE con.QCFormDetail
    SET Number = @Number,
        WorkId = @WorkId,
        QCName = @QCName,
        Description = @DESCRIPTION,
        Review = @Review,
        Progress = @Progress,
        SetNumber = @SetNumber,
        AttachedFile = @AttachedFile,
        --, ACTIVE=
        ModifiedDate = GETDATE(),
        ModifiedBy = @ModifiedBy
    WHERE Id = @Id;

END;
GO
