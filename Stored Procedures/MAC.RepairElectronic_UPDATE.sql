SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronic_UPDATE] @RepairElectronicCode NVARCHAR(10)  = NULL, 
                                                @ProjectCode          NVARCHAR(10)  = NULL, 
                                                @NotifyRepairBy       NVARCHAR(255) = NULL, 
                                                @NotifyRepairDate     DATE          = NULL, 
                                                @SendBy               NVARCHAR(255) = NULL, 
                                                @SendDate             DATE          = NULL, 
                                                @ReceiveBy            NVARCHAR(255) = NULL, 
                                                @ReceiveDate          DATE          = NULL, 
												@Active				  BIT		    = NULL, 
                                                @ModifiedBy           INT           = NULL, 
                                                @ModifiedDate         DATETIME      = NULL
AS
     UPDATE [MAC].[RepairElectronic]
       SET 
           ProjectCode = @ProjectCode, 
           NotifyRepairBy = @NotifyRepairBy, 
           NotifyRepairDate = @NotifyRepairDate, 
           SendBy = @SendBy, 
           SendDate = @SendDate, 
           ReceiveBy = @ReceiveBy, 
           ReceiveDate = @ReceiveDate,  
		   Active = @Active,
           ModifiedBy = @ModifiedBy,
           ModifiedDate = @ModifiedDate
     WHERE RepairElectronicCode = @RepairElectronicCode;
GO
