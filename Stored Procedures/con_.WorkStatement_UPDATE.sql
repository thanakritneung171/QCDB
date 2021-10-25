SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkStatement_UPDATE] @Id                 INT           = NULL, 
                                              @ProjectTypeId      INT           = NULL, 
                                              @WorkGroupMainId    INT           = NULL, 
                                              @WorkGroupId        INT           = NULL, 
                                              @WorkId             INT           = NULL, 
                                              @WorkName           NVARCHAR(255) = NULL, 
                                              @Number             INT           = NULL, 
                                              @WorkUnit           INT           = NULL, 
                                              @QCPassBeforePay    BIT           = NULL, 
                                              @SetAmountBeforePay BIT           = NULL,
											  @IsNoPrice            BIT           = NULL,  
                                              @WorkAmountWeight   INT           = NULL, 
                                              @Note               NVARCHAR(255) = NULL, 
                                              @Status             INT           = NULL, 
                                              @Active             BIT           = NULL, 
                                              @IsCurrent          BIT           = NULL, 
                                              @ModifiedDate       DATETIME      = NULL, 
                                              @ModifiedBy         INT           = NULL
AS
     UPDATE [con].[WorkStatement]
       SET 
           [ProjectTypeId] = @ProjectTypeId, 
           [WorkGroupMainId] = @WorkGroupMainId, 
           [WorkGroupId] = @WorkGroupId, 
           [WorkId] = @WorkId, 
           [WorkName] = @WorkName, 
           [Number] = @Number, 
           [WorkUnit] = @WorkUnit, 
           [QCPassBeforePay] = @QCPassBeforePay, 
           [SetAmountBeforePay] = @SetAmountBeforePay, 
		   [IsNoPrice] = @IsNoPrice,
           [WorkAmountWeight] = @WorkAmountWeight, 
           [Note] = @Note, 
           [Status] = @Status, 
           [Active] = @Active, 
           [IsCurrent] = @IsCurrent, 
           [ModifiedDate] = @ModifiedDate, 
           [ModifiedBy] = @ModifiedBy
     WHERE Id = @Id;





GO
