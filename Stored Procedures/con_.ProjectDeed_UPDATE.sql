SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectDeed_UPDATE] @Id           INT            = NULL, 
                                            @ProjectCode  VARCHAR(10)    = NULL, 
                                            @Province     NVARCHAR(50)   = NULL, 
                                            @Amphur       NVARCHAR(50)   = NULL, 
                                            @DeedTitle    INT            = NULL, 
                                            @Rai          INT            = NULL, 
                                            @Ngan         INT            = NULL, 
                                            @Wah          DECIMAL(10, 2)  = NULL, 
                                            @ModifiedDate DATETIME       = NULL, 
                                            @ModifiedBy   INT            = NULL
AS
     UPDATE [con].[ProjectDeed]
       SET 
           ProjectCode = @ProjectCode, 
           Province = @Province, 
           Amphur = @Amphur, 
           DeedTitle = @DeedTitle, 
           Rai = @Rai, 
           Ngan = @Ngan, 
           Wah = @Wah, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy
     WHERE Id = @Id;
GO
