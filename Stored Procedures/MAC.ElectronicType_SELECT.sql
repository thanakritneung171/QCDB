SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[ElectronicType_SELECT] @ElectronicTypeName NVARCHAR(250), 
                                          @Active         INT           = NULL
AS
     SELECT *
     FROM [MAC].[ElectronicType]
     WHERE(@Active = @Active OR @Active IS NULL)
		   AND (ElectronicTypeName = @ElectronicTypeName OR @ElectronicTypeName IS NULL)
GO
