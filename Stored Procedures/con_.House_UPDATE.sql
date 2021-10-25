SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[House_UPDATE] @Id            INT           = NULL, 
                                     @Name          NVARCHAR(50)  = NULL, 
                                     @ProjectTypeId INT           = NULL, 
                                     @Description   NVARCHAR(255) = NULL, 
                                     @Active        BIT           = NULL, 
                                     @PlanCode      VARCHAR(10)   = NULL, 
                                     @ModifiedDate  DATETIME      = NULL, 
                                     @ModifiedBy    INT           = NULL
AS
     UPDATE [con].[House]
       SET 
           [Name] = @Name, 
           [ProjectTypeId] = @ProjectTypeId, 
           [Description] = @Description, 
           [Active] = @Active, 
           [PlanCode] = @PlanCode, 
           [ModifiedDate] = @ModifiedDate, 
           [ModifiedBy] = @ModifiedBy
     WHERE Id = @Id;

GO
