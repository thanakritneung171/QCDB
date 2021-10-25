SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProgressPercentSetting_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                                    @Id                   INT           = NULL, 
                                                    @ProgressPercent      INT           = NULL, 
                                                    @ProgressName         NVARCHAR(MAX) = NULL, 
                                                    @Type                 INT           = NULL, 
                                                    @CreatedDate          DATETIME      = NULL, 
                                                    @CreatedBy            INT           = NULL, 
                                                    @Active               BIT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[ProgressPercentSetting_SELECT] 
                     @Type;
        END;
    END;
        SET ANSI_NULLS ON;
GO
