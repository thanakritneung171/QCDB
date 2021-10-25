SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[QCRequestFile_READ]
(
    @ProjectCode VARCHAR(10) = NULL,
    @QCReqeustId INT = NULL
)
AS
BEGIN
    SELECT Id,
           Pathfile,
           FileName,
           FileType,
           FileNameOriginal,
           CreatedDate,
           CreatedBy,
           QCRequestId,
           ProjectCode
    FROM con.QCRequestFile
    WHERE (
              ProjectCode = @ProjectCode
              OR @ProjectCode IS NULL
          )
          AND
          (
              QCRequestId = @QCReqeustId
              OR @QCReqeustId IS NULL
          );
END;

GO
