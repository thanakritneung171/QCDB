SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Driver_UPDATE] @DriverId     INT, 
                                       @DriverName   NVARCHAR(255), 
                                       @DriverTel    NVARCHAR(255), 
                                       @Active       BIT, 
                                       @ModifiedDate DATETIME, 
                                       @ModifiedBy   INT
AS
     UPDATE Driver
       SET 
           [DriverName] = @DriverName, 
           [DriverTel] = @DriverTel, 
           [Active] = @Active, 
           [ModifiedDate] = @ModifiedDate, 
           [ModifiedBy] = @ModifiedBy
     WHERE DriverId = @DriverId;
GO
