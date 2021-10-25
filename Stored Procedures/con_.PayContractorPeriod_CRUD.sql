SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[PayContractorPeriod_CRUD] @Control_Character_In NVARCHAR(100) = NULL
AS
    BEGIN
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[PayContractorPeriod_SELECT];
        END;
    END;
        SET ANSI_NULLS ON;
GO
