SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ContractorPassport_UPDATE] @Id             INT           = NULL, 
                                                   @ContractorCode VARCHAR(10)   = NULL, 
                                                   @PassportNo     VARCHAR(20)   = NULL, 
                                                   @PassportName   NVARCHAR(256) = NULL, 
                                                   @ExpireDate     DATE          = NULL, 
                                                   @ModifiedDate   DATETIME      = NULL, 
                                                   @ModifiedBy     INT           = NULL
AS
     UPDATE [con].[ContractorPassport]
       SET 
           [ContractorCode] = @ContractorCode, 
           [PassportNo] = @PassportNo, 
           [PassportName] = @PassportName, 
           [ExpireDate] = @ExpireDate, 
           [ModifiedDate] = @ModifiedDate, 
           [ModifiedBy] = @ModifiedBy
     WHERE Id = @Id;
GO
