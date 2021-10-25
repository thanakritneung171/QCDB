SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronic_CREATE] @RepairElectronicCode NVARCHAR(10)  = NULL, 
                                                @ProjectCode          NVARCHAR(10)  = NULL, 
                                                @NotifyRepairBy       NVARCHAR(255) = NULL, 
                                                @NotifyRepairDate     DATE          = NULL, 
                                                @SendBy               NVARCHAR(255) = NULL, 
                                                @SendDate             DATE          = NULL, 
                                                @ReceiveBy            NVARCHAR(255) = NULL, 
                                                @ReceiveDate          DATE          = NULL, 
												@Active				BIT			  = NULL,												 
                                                @CreatedBy            INT           = NULL,
                                                @CreatedDate          DATETIME      = NULL
AS
     INSERT INTO [MAC].[RepairElectronic]
     ([RepairElectronicCode], 
      [ProjectCode], 
      [NotifyRepairBy], 
      [NotifyRepairDate], 
      [SendBy], 
      [SendDate], 
      [ReceiveBy], 
      [ReceiveDate],
	  [Active],  
      [CreatedBy],
      [CreatedDate]
     )
     VALUES
     (@RepairElectronicCode, 
      @ProjectCode, 
      @NotifyRepairBy, 
      @NotifyRepairDate, 
      @SendBy, 
      @SendDate, 
      @ReceiveBy, 
      @ReceiveDate,
	  @Active,  
      @CreatedBy,
      @CreatedDate
     );
GO
