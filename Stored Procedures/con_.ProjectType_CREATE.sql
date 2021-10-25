SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectType_CREATE] @ProjectTypeName NVARCHAR(50) = NULL, 
                                            @Active          BIT          = NULL, 
											@Status			 INT		  = NULL,
                                            @CreatedDate     DATETIME     = NULL, 
                                            @CreatedBy       INT          = NULL
AS
     INSERT INTO [con].[ProjectType]
     ([ProjectTypeName], 
      [Active], 
	  [Status],
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@ProjectTypeName, 
      @Active,
	  @Status, 
      @CreatedDate, 
      @CreatedBy
     );
     SELECT SCOPE_IDENTITY() AS Id;





GO
