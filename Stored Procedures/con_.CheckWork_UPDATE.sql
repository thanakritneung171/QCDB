SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[CheckWork_UPDATE] @Id                     INT       = NULL, 
                                          @QCPass                 BIT       = NULL, 
                                          @Amount                 NCHAR(10) = NULL, 
                                          @LastModifiedQCPassDate DATETIME  = NULL, 
                                          @LastModifiedQCPassBy   INT       = NULL, 
                                          @LastModifiedAmountDate DATETIME  = NULL, 
                                          @LastModifiedAmountBy   INT       = NULL
AS
     UPDATE [con].[CheckWork]
       SET 
           QCPass = @QCPass, 
           Amount = @Amount, 
           LastModifiedQCPassDate = ISNULL(@LastModifiedQCPassDate, LastModifiedQCPassDate), 
           LastModifiedQCPassBy = ISNULL(@LastModifiedQCPassBy, LastModifiedQCPassBy), 
           LastModifiedAmountDate = ISNULL(@LastModifiedAmountDate, LastModifiedAmountDate), 
           LastModifiedAmountBy = ISNULL(@LastModifiedAmountBy, LastModifiedAmountBy)
     WHERE Id = @Id;

GO
