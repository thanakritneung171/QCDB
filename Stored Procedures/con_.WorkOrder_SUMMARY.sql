SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrder_SUMMARY] @Status       INT           = NULL,
										  @ProjectCode  NVARCHAR(10)   = NULL 
AS
    BEGIN
        SELECT ProjectCode, 
               SUM(ISNULL(TotalPrice, (Price))) AS TotalPrice
        FROM [con].[WorkOrder]
        WHERE (STATUS >= 4 AND STATUS != 8 OR @Status != 4) AND (STATUS = @Status OR @Status = 4) AND @Status IS NOT NULL AND Active = 1 
		AND (ProjectCode = @ProjectCode OR @ProjectCode IS NULL)
        GROUP BY ProjectCode;
    END;


GO
