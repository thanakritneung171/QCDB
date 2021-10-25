SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[MachineType_CREATE] @MachineTypeCode NVARCHAR(10)  = NULL, 
                                            @MachineTypeName NVARCHAR(250) = NULL, 
                                            @Active          BIT           = NULL, 
                                            @CreatedDate     DATETIME      = NULL, 
                                            @CreatedBy       INT           = NULL
AS
     INSERT INTO [MAC].[MachineType]
     ([MachineTypeCode], 
      [MachineTypeName], 
      [Active], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@MachineTypeCode, 
      @MachineTypeName, 
      @Active, 
      @CreatedDate, 
      @CreatedBy
     );
     SELECT SCOPE_IDENTITY() AS MachineTypeId;
GO
