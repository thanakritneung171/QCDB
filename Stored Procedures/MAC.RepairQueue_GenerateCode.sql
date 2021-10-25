SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairQueue_GenerateCode] @RepairManGroupId INT = NULL, 
                                                 @RunningNo        INT = NULL
AS
    BEGIN
        SET NOCOUNT ON;
        BEGIN
            SELECT 'Q' + CAST(@RepairManGroupId AS NVARCHAR(10)) + RIGHT('0000000000' + CONVERT(NVARCHAR(MAX), CAST(@RunningNo AS NVARCHAR)), 4) AS 'QueueCode';
        END;
    END;
GO
