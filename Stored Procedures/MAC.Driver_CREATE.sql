SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Driver_CREATE] @DriverName   NVARCHAR(255), 
                                      @DriverTel    NVARCHAR(255), 
                                      @Active       BIT, 
                                      @CreatedDate  DATETIME, 
                                      @CreatedBy    INT
AS
     INSERT INTO [MAC].[Driver]
     ([DriverName], 
      [DriverTel], 
      [Active], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@DriverName, 
      @DriverTel, 
      @Active, 
      @CreatedDate, 
      @CreatedBy
     );
     SELECT SCOPE_IDENTITY() AS DriverId;
GO
