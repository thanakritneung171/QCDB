SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ChangePriceMaster_UpdateStatusAll] @ProjectTypeId INT = NULL, 
                                                           @Status        INT = NULL, 
                                                           @SearchStatus  INT = NULL, 
                                                           @ApprovedBy    INT = NULL
AS
	IF(@Status = 2)
         BEGIN
			 --อนุมัติราคางาน
		     --แก้ไขให้เป็นงานที่ใช้งานปัจจุบัน
			 
			  UPDATE [con].[ProjectInHouse]
		      SET Status = 2
			  FROM [con].[House] h
			  JOIN [con].[ProjectInHouse] ph on ph.HouseId = h.Id
			  WHERE h.ProjectTypeId = 1

             UPDATE [con].[WorkPrice] 
               SET 			   
				   OldNetPrice = NetPrice,
			       OldPrice = Price,
                   Price = RESULT._Price,
				   ModifiedDate = GETDATE(),
				   ChangePriceId = RESULT.ChangePriceId,
				   Amount = RESULT._Amount,
				   TotalPrice = RESULT._TotalPrice,
				   NetPrice = RESULT._NetPrice,
				   WHT = RESULT.WHT,
				   VAT = RESULT.VAT,
				   VATType = RESULT.VATType
             FROM
             (
                 SELECT cpd.WorkPriceId AS WorkPriceId , ISNULL(cpm.Price , cpd.Price) as _Price, cpd.Amount as _Amount , cpm.Id ChangePriceId , ISNULL(cpm.NetPrice , cpd.NetPrice) as _NetPrice,
				        ISNULL(cpm.WHT , cpd.WHT) AS WHT , ISNULL(cpm.VAT , cpd.VAT) AS VAT , ISNULL(cpm.VATType , cpd.VATType) AS VATType , ISNULL(cpm.TotalPrice , cpd.TotalPrice)  as _TotalPrice
                 FROM [con].[ChangePriceMaster] cpm
				 JOIN [con].[ChangePriceDetail] cpd on cpd.ChangePriceMasterId = cpm.Id
                 WHERE cpm.STATUS = 1
                       AND ProjectTypeId = @ProjectTypeId
             ) RESULT
             WHERE [con].[WorkPrice].Id = RESULT.WorkPriceId;


			 UPDATE [con].[ChangePriceMaster]
			 SET 
				  ApprovedDate = GETDATE(),
				  ApprovedBy = @ApprovedBy
			 FROM [con].[ChangePriceMaster] cp
			 WHERE cp.ProjectTypeId = @ProjectTypeId
					   AND cp.STATUS = 1;

		 END


UPDATE [con].[ChangePriceMaster]
  SET 
      STATUS = @Status
FROM [con].[ChangePriceMaster] cp
WHERE cp.ProjectTypeId = @ProjectTypeId
           AND cp.STATUS = @SearchStatus;





GO
