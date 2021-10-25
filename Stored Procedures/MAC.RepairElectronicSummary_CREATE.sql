SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronicSummary_CREATE] @RepairElectronicCode NVARCHAR(10), 
                                                        @TotalPrice           DECIMAL(10, 2), 
                                                        @Note                 NVARCHAR(MAX), 
                                                        @POCodeRef            NVARCHAR(10), 
                                                        @Active               BIT, 
                                                        @CreatedDate          DATETIME, 
                                                        @CreatedBy            INT
AS
     INSERT INTO [MAC].[RepairElectronicSummary]
     ([RepairElectronicCode], 
      [TotalPrice], 
      [Note], 
      [POCodeRef], 
      [Active], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@RepairElectronicCode, 
      @TotalPrice, 
      @Note, 
      @POCodeRef, 
      @Active, 
      @CreatedDate, 
      @CreatedBy
     );
     SELECT SCOPE_IDENTITY() AS Id;
GO
