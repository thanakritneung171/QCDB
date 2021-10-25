SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ChangePriceMaster_DELETE] @Id INT = NULL
AS
     UPDATE [con].[WorkPrice]
       SET 
           Price = NULL, 
           OldPrice = NULL,
		   TotalPrice = NULL,
		   VATType = NULL,
		   VAT = NULL,
		   WHT = NULL,		   
		   OldNetPrice = NULL,
		   NetPrice = NULL
     FROM [con].[ChangePriceMaster] m
          JOIN [con].[WorkPrice] wp ON wp.HouseId = m.HouseId AND wp.ProjectCode = m.ProjectCode
     WHERE m.Id = @Id AND m.ProjectCode IS NOT NULL;

     DELETE [con].[ChangePriceDetail]
	 FROM [con].[ChangePriceMaster] m 
	 JOIN [con].[ChangePriceDetail] d ON d.ChangePriceMasterId = m.Id
     WHERE m.Id = @Id AND m.Status = 0;

     DELETE [con].[ChangePriceMaster]
     WHERE Id = @Id AND Status = 0;

GO
