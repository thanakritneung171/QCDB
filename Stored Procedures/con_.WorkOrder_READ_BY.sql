SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrder_READ_BY] @Id INT = NULL
AS
    BEGIN
        SELECT *
        FROM con.WorkOrder
        WHERE Id = @Id;
    END;

GO