SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[DeductionSurchargeWorker_UPDATE] @Id           INT, 
                                               @WorkerCode   VARCHAR(10), 
											   @ProjectCode  varchar(10),
                                               @TypeWage     INT, 
                                               @MonthNumber  INT, 
                                               @YearNumber   INT, 
                                               @Period       INT, 
                                               @NameWage     NVARCHAR(255), 
                                               @Price        DECIMAL(10, 2), 
                                               @ModifiedDate DATETIME, 
                                               @ModifiedBy   INT
AS
     UPDATE DeductionSurchargeWorker
       SET 
           WorkerCode = @WorkerCode, 
		   ProjectCode = @ProjectCode ,
           TypeWage = @TypeWage, 
           MonthNumber = @MonthNumber, 
           YearNumber = @YearNumber, 
           Period = @Period, 
           NameWage = @NameWage, 
           Price = @Price, 
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy
     WHERE Id = @Id;
GO
