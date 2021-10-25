SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrder_DELETE] @Id INT = NULL
AS
    BEGIN
	    DELETE con.SetToPayContractor
        WHERE WorkOrderId = @Id;

        DELETE con.WorkOrder
        WHERE Id = @Id;
    END;
GO
