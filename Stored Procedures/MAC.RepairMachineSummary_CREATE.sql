SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairMachineSummary_CREATE] @RepairNotifyCode NVARCHAR(10), 
                                                    @TotalPrice       DECIMAL(10, 2), 
                                                    @Note             NVARCHAR(MAX), 
                                                    @POCodeRef        VARCHAR(255), 
                                                    @Active           BIT, 
                                                    @CreatedDate      DATETIME, 
                                                    @CreatedBy        INT,
													@NoRepairCost     BIT
AS
     INSERT INTO [MAC].[RepairMachineSummary]
     ([RepairNotifyCode], 
      [TotalPrice], 
      [Note], 
      [POCodeRef], 
      [Active], 
      [CreatedDate], 
      [CreatedBy],
	  [NoRepairCost]
     )
     VALUES
     (@RepairNotifyCode, 
      @TotalPrice, 
      @Note, 
      @POCodeRef, 
      @Active, 
      @CreatedDate, 
      @CreatedBy,
	  @NoRepairCost
     );
     SELECT SCOPE_IDENTITY() AS Id;
GO
