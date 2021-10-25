SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ContractorPassport_CREATE] @ContractorCode VARCHAR(10)   = NULL, 
                                                   @PassportNo     VARCHAR(20)   = NULL, 
                                                   @PassportName   NVARCHAR(256) = NULL, 
                                                   @ExpireDate     DATE          = NULL, 
                                                   @CreatedDate    DATETIME      = NULL, 
                                                   @CreatedBy      INT           = NULL
AS
     INSERT INTO [con].[ContractorPassport]
     ([ContractorCode], 
      [PassportNo], 
      [PassportName], 
      [ExpireDate], 
      [CreatedDate], 
      [CreatedBy]
     )
     VALUES
     (@ContractorCode, 
      @PassportNo, 
      @PassportName, 
      @ExpireDate, 
      @CreatedDate, 
      @CreatedBy
     );
GO
