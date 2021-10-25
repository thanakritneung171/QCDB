SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairManGroup_CREATE] @RepairManGroupName NVARCHAR(250) = NULL, 
                                               @Active             BIT           = NULL, 
                                               @RepairType         INT           = NULL, 
                                               @Note               NVARCHAR(MAX) = NULL, 
                                               @CreatedDate        DATETIME      = NULL, 
                                               @CreatedBy          INT           = NULL
AS
     INSERT INTO [MAC].[RepairManGroup]
     ([RepairManGroupName], 
      [Active], 
      [RepairType], 
      [Note], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@RepairManGroupName, 
      @Active, 
      @RepairType, 
      @Note, 
      @CreatedDate, 
      @CreatedBy
     );
GO
