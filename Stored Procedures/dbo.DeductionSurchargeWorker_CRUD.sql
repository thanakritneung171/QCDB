SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[DeductionSurchargeWorker_CRUD] @Control_Character_In NVARCHAR(100)  = NULL, 
                                                      @Id                   INT, 
                                                      @WorkerCode           VARCHAR(10), 
													  @ProjectCode         varchar(10),
                                                      @TypeWage             INT, 
                                                      @MonthNumber          INT, 
                                                      @YearNumber           INT, 
                                                      @Period               INT, 
                                                      @NameWage             NVARCHAR(255), 
                                                      @Price                DECIMAL(10, 2), 
													  @CreatedDate			DATETIME,
													  @CreatedBy			INT,
                                                      @ModifiedDate         DATETIME, 
                                                      @ModifiedBy           INT
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [DeductionSurchargeWorker_CREATE] 
                     @WorkerCode   ,
					 @ProjectCode,
					 @TypeWage     ,
					 @MonthNumber  ,
					 @YearNumber   ,
					 @Period       ,
					 @NameWage     ,
					 @Price        ,
					 @CreatedDate	,
					 @CreatedBy	

        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [DeductionSurchargeWorker_UPDATE] 
                     @Id			,
					 @WorkerCode  	,
					 @ProjectCode,
					 @TypeWage    	,
					 @MonthNumber 	,
					 @YearNumber  	,
					 @Period      	,
					 @NameWage    	,
					 @Price  		,
					 @ModifiedDate	,
					 @ModifiedBy  
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [DeductionSurchargeWorker_READ_BY] 
                     @Id;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [DeductionSurchargeWorker_SELECT] 
                     @Id;
        END;
		 IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [DeductionSurchargeWorker_DELETE] 
                     @Id;
        END;
    END;
        SET ANSI_NULLS ON;
GO
