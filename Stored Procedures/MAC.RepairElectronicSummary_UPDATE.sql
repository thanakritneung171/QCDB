SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairElectronicSummary_UPDATE] @Id                   INT, 
                                                        @RepairElectronicCode NVARCHAR(10), 
                                                        @TotalPrice           DECIMAL(10, 2), 
                                                        @Note                 NVARCHAR(MAX), 
                                                        @POCodeRef            NVARCHAR(10), 
                                                        @Active               BIT, 
                                                        @ModifiedDate         DATETIME, 
                                                        @ModifiedBy           INT
AS
     UPDATE [MAC].[RepairElectronicSummary]
       SET 
           RepairElectronicCode = @RepairElectronicCode, 
           TotalPrice = @TotalPrice, 
           Note = @Note, 
           POCodeRef = @POCodeRef, 
           Active = @Active, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy
     WHERE Id = @Id;
GO
