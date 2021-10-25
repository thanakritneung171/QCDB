SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[ElectronicType_UPDATE] @ElectronicTypeId   INT, 
                                              @ElectronicTypeCode NVARCHAR(10), 
                                              @ElectronicTypeName NVARCHAR(250), 
                                              @Note               NVARCHAR(MAX), 
                                              @Active             BIT, 
                                              @ModifiedDate       DATETIME, 
                                              @ModifiedBy         INT
AS
     UPDATE [MAC].[ElectronicType]
       SET 
           ElectronicTypeCode = @ElectronicTypeCode, 
           ElectronicTypeName = @ElectronicTypeName, 
           Note = @Note, 
           Active = @Active, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy
     WHERE ElectronicTypeId = @ElectronicTypeId;
GO
