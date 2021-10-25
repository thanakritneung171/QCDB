SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkGroup_UPDATE] @Id              INT           = NULL, 
                                          @ProjectTypeId   INT           = NULL, 
                                          @WorkGroupMainId INT           = NULL, 
                                          @WorkGroupName   NVARCHAR(255) = NULL, 
                                          @Number          INT           = NULL, 
                                          @Status          INT           = NULL, 
                                          @Active          BIT           = NULL, 
                                          @ModifiedDate    DATETIME      = NULL, 
                                          @ModifiedBy      INT           = NULL
AS
     UPDATE [con].[WorkGroup]
       SET 
           ProjectTypeId = @ProjectTypeId, 
           WorkGroupMainId = @WorkGroupMainId, 
           WorkGroupName = @WorkGroupName, 
           Number = @Number, 
           STATUS = @Status, 
           Active = @Active, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy
     WHERE Id = @Id;





GO
