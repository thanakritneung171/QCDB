SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairManGroup_UPDATE] @RepairManGroupId   INT           = NULL, 
                                               @RepairManGroupName NVARCHAR(250) = NULL, 
                                               @Active             BIT           = NULL, 
                                               @RepairType         INT           = NULL, 
                                               @Note               NVARCHAR(MAX) = NULL, 
                                               @ModifiedDate       DATETIME      = NULL, 
                                               @ModifiedBy         INT           = NULL
AS
     UPDATE [MAC].[RepairManGroup]
       SET 
           [RepairManGroupName] = @RepairManGroupName, 
           [Active] = @Active, 
           [RepairType] = @RepairType, 
           [Note] = @Note, 
           [ModifiedDate] = @ModifiedDate, 
           [ModifiedBy] = @ModifiedBy
     WHERE RepairManGroupId = @RepairManGroupId;
GO
