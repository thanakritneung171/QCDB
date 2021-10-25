SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[House_CREATE] @Name          NVARCHAR(50)  = NULL, 
                                     @ProjectTypeId INT           = NULL, 
                                     @Description   NVARCHAR(255) = NULL, 
                                     @Active        BIT           = NULL, 
                                     @PlanCode      VARCHAR(10)   = NULL, 
                                     @CreatedDate   DATETIME      = NULL, 
                                     @CreatedBy     INT           = NULL
AS
     INSERT INTO [con].[House]
     ([Name], 
      [ProjectTypeId], 
      [Description], 
      [Active], 
      [PlanCode], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@Name, 
      @ProjectTypeId, 
      @Description, 
      @Active, 
      @PlanCode, 
      @CreatedDate, 
      @CreatedBy
     );
     SELECT SCOPE_IDENTITY() AS Id;

GO
