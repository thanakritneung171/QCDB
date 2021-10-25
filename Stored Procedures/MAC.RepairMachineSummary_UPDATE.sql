SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairMachineSummary_UPDATE] @Id               INT, 
                                                    @RepairNotifyCode NVARCHAR(10), 
                                                    @TotalPrice       DECIMAL(10, 2), 
                                                    @Note             NVARCHAR(MAX), 
                                                    @POCodeRef        VARCHAR(255), 
                                                    @Active           BIT, 
                                                    @ModifiedDate     DATETIME, 
                                                    @ModifiedBy       INT,
													@NoRepairCost     BIT
AS
     UPDATE [MAC].[RepairMachineSummary]
       SET 
           RepairNotifyCode = @RepairNotifyCode, 
           TotalPrice = @TotalPrice, 
           Note = @Note, 
           POCodeRef = @POCodeRef, 
           Active = @Active, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy,
		   NoRepairCost = @NoRepairCost
     WHERE Id = @Id;
GO
