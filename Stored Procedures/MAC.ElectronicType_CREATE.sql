SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[ElectronicType_CREATE] @ElectronicTypeCode NVARCHAR(10), 
                                              @ElectronicTypeName NVARCHAR(250), 
                                              @Note               NVARCHAR(MAX), 
                                              @Active             BIT, 
                                              @CreatedDate        DATETIME, 
                                              @CreatedBy          INT
AS
     INSERT INTO [MAC].[ElectronicType]
     ([ElectronicTypeCode], 
      [ElectronicTypeName], 
      [Note], 
      [Active], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@ElectronicTypeCode, 
      @ElectronicTypeName, 
      @Note, 
      @Active, 
      @CreatedDate, 
      @CreatedBy
     );
GO
