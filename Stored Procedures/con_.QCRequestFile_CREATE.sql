SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[QCRequestFile_CREATE]
(
    @Pathfile NVARCHAR(MAX) = '',
    @FileName NVARCHAR(MAX) = '',
    @FileType NVARCHAR(250) = '',
    @FileNameOriginal NVARCHAR(MAX) = '',
    @CreatedBy INT = '',
    @QCRequestId INT = '',
    @ProjectCode VARCHAR(10) = '',
    @UnitId INT = ''
)
AS
BEGIN

    DECLARE @Id INT = '';
    --SET @Id =
    --(
    SELECT @Id = ISNULL(MAX(Id), 0) + 1
    FROM con.QCRequest;
    --);

    INSERT con.QCRequestFile
    (
        Id,
        Pathfile,
        FileName,
        FileType,
        FileNameOriginal,
        CreatedDate,
        CreatedBy,
        QCRequestId,
        ProjectCode,
        UnitId
    )
    VALUES
    (   @Id,               -- Id - int
        @Pathfile,         -- Pathfile - nvarchar(max)
        @FileName,         -- FileName - nvarchar(max)
        @FileType,         -- FileType - nvarchar(250)
        @FileNameOriginal, -- FileNameOriginal - nvarchar(max)
        GETDATE(),         -- CreatedDate - datetime
        @CreatedBy,        -- CreatedBy - int
        @QCRequestId,      -- QCRequestId - int
        @ProjectCode, 
		@UnitId);

    SELECT Id,
           Pathfile,
           FileName,
           FileType,
           FileNameOriginal,
           CreatedDate,
           CreatedBy,
           QCRequestId,ProjectCode
    FROM con.QCRequestFile
    WHERE Id = @Id;
END;
GO
