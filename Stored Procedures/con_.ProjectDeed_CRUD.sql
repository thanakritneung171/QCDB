SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectDeed_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                         @Id                   INT            = NULL, 
                                         @ProjectCode          VARCHAR(10)    = NULL, 
                                         @Province             NVARCHAR(50)   = NULL, 
                                         @Amphur               NVARCHAR(50)   = NULL, 
                                         @DeedTitle            INT            = NULL, 
                                         @Rai                  INT            = NULL, 
                                         @Ngan                 INT            = NULL, 
                                         @Wah                  DECIMAL(10, 2)  = NULL, 
                                         @CreatedDate          DATETIME       = NULL, 
                                         @CreatedBy            INT            = NULL, 
                                         @ModifiedDate         DATETIME       = NULL, 
                                         @ModifiedBy           INT            = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[ProjectDeed_Create] 
                     @ProjectCode, 
                     @Province, 
                     @Amphur, 
                     @DeedTitle, 
                     @Rai, 
                     @Ngan, 
                     @Wah, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[ProjectDeed_UPDATE] 
                     @Id, 
                     @ProjectCode, 
                     @Province, 
                     @Amphur, 
                     @DeedTitle, 
                     @Rai, 
                     @Ngan, 
                     @Wah, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [con].[ProjectDeed_DELETE] 
                     @ProjectCode;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[ProjectDeed_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[ProjectDeed_SELECT] 
                     @ProjectCode;
        END;
    END;
        SET ANSI_NULLS ON;
GO
