SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectType_UPDATE] @Id              INT          = NULL, 
                                            @ProjectTypeName NVARCHAR(50) = NULL, 
                                            @Active          BIT          = NULL,
											@Status			 INT		  = NULL, 
                                            @ModifiedDate    DATETIME     = NULL, 
                                            @ModifiedBy      INT          = NULL
AS
     UPDATE [con].[ProjectType]
       SET 
           [ProjectTypeName] = @ProjectTypeName, 
           [Active] = @Active, 
		   [Status] = @Status,
           [ModifiedDate] = @ModifiedDate, 
           [ModifiedBy] = @ModifiedBy
     WHERE Id = @Id;

GO
