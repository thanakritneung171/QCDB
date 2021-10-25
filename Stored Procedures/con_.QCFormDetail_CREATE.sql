SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[QCFormDetail_CREATE]
(
    --@Id INT = '',
    @FormId INT = '',
    @Number INT = '',
    @WorkId INT = NULL,
    @QCName NVARCHAR(250) = '',
    @Description NVARCHAR(MAX) = '',
    @Review NVARCHAR(MAX) = '',
    @Progress DECIMAL(5, 2) = '',
    @SetNumber INT = '',
    @AttachedFile BIT = '',
	@WorkGroupMainId INT ='',
    @CreatedBy INT = '',
    @ModifiedBy INT = ''
    --@ACTIVE BIT = '',
    --@CreatedDate DATETIME = '',
    --@ModifiedDate DATETIME = '',
)
AS
BEGIN

    DECLARE @Id INT = '';
    SET @Id =
    (
        SELECT ISNULL(MAX(Id),0)  + 1 FROM con.QCFormDetail
    );
	
	IF   @WorkId IS NULL
	BEGIN
	    UPDATE con.QCFormDetail SET Number = Number+1 WHERE FormId = @FormId AND Number >= @Number 
	END

    INSERT con.QCFormDetail
    (
        Id,
        FormId,
        Number,
        WorkId,
        QCName,
        Description,
        Review,
        Progress,
        SetNumber,
        AttachedFile,
		WorkGroupMainId,
        Active,
        CreatedDate,
        CreatedBy,
        ModifiedDate,
        ModifiedBy
    )
    VALUES
    (   @Id,           -- Id - int
        @FormId,       -- FormId - int
        @Number,       -- Number - int
        @WorkId,       -- WorkId - int
        @QCName,       -- QCName - nvarchar(250)
        @Description,  -- DESCRIPTION - nvarchar(max)
        @Review,       -- Review - nvarchar(max)
        @Progress,     -- Progress - decimal(5, 2)
        @SetNumber,    -- SetNumber - int
        @AttachedFile, -- AttachedFile - bit
		@WorkGroupMainId,
        1,             -- ACTIVE - bit
        GETDATE(),     -- CreatedDate - datetime
        @CreatedBy,    -- CreatedBy - int
        GETDATE(),     -- ModifiedDate - datetime
        @ModifiedBy    -- ModifiedBy - int
        );

    SELECT Id,
           FormId,
           Number,
           WorkId,
           QCName,
           Description,
           Review,
           Progress,
           SetNumber,
           AttachedFile,
		   WorkGroupMainId,
           ModifiedDate,
           ModifiedBy
    FROM con.QCFormDetail
    WHERE Id = @Id;

END;

GO
