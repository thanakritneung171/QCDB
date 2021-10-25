SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Work_UPDATE] @Id                 INT           = NULL, 
                                     @WorkName           NVARCHAR(255) = NULL, 
                                     @Number             INT           = NULL, 
                                     @WorkUnit           INT           = NULL, 
                                     @QCPassBeforePay    BIT           = NULL, 
                                     @SetAmountBeforePay BIT           = NULL, 
                                     @IsNoPrice          BIT           = NULL, 
                                     @WorkAmountWeight   INT           = NULL, 
                                     @Note               NVARCHAR(255) = NULL, 
                                     @Active             BIT           = NULL, 
                                     @LastModifiedDate   DATETIME      = NULL, 
                                     @LastModifiedBy     INT           = NULL
AS
     UPDATE [con].[Work]
       SET 
           [WorkName] = @WorkName, 
           [Number] = @Number, 
           [WorkUnit] = @WorkUnit, 
           [QCPassBeforePay] = @QCPassBeforePay, 
           [SetAmountBeforePay] = @SetAmountBeforePay, 
		   [IsNoPrice] = @IsNoPrice,
           [WorkAmountWeight] = @WorkAmountWeight, 
           [Note] = @Note, 
           [Active] = @Active, 
           [LastModifiedDate] = @LastModifiedDate, 
           [LastModifiedBy] = @LastModifiedBy
     WHERE Id = @Id;


GO
