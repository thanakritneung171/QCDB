SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Document_CREATE] @DocTypeId   INT           = NULL, 
                                        @ProjectCode VARCHAR(10)   = NULL, 
                                        @Note        NVARCHAR(256) = NULL, 
                                        @Active      BIT           = NULL, 
                                        @CreatedDate DATETIME      = NULL, 
                                        @CreatedBy   INT           = NULL
AS
     INSERT INTO [con].[Document]
     (DocTypeId, 
      ProjectCode, 
      Note, 
      Active, 
      CreatedDate, 
      CreatedBy
     )
     VALUES
     (@DocTypeId, 
      @ProjectCode, 
      @Note, 
      @Active, 
      @CreatedDate, 
      @CreatedBy
     );
     SELECT SCOPE_IDENTITY() AS DocId;
GO
