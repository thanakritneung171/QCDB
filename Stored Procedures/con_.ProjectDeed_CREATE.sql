SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectDeed_CREATE] @ProjectCode VARCHAR(10)    = NULL, 
                                            @Province    NVARCHAR(50)   = NULL, 
                                            @Amphur      NVARCHAR(50)   = NULL, 
                                            @DeedTitle   INT            = NULL, 
                                            @Rai         INT            = NULL, 
                                            @Ngan        INT            = NULL, 
                                            @Wah         DECIMAL(10, 2)  = NULL, 
                                            @CreatedDate DATETIME       = NULL, 
                                            @CreatedBy   INT            = NULL
AS
     INSERT INTO [con].[ProjectDeed]
     (ProjectCode, 
      Province, 
      Amphur, 
      DeedTitle, 
      Rai, 
      Ngan, 
      Wah, 
      CreatedDate, 
      CreatedBy
     )
     VALUES
     (@ProjectCode, 
      @Province, 
      @Amphur, 
      @DeedTitle, 
      @Rai, 
      @Ngan, 
      @Wah, 
      @CreatedDate, 
      @CreatedBy
     );
GO
