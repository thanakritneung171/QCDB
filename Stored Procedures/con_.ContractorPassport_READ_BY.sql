SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ContractorPassport_READ_BY] @Id         INT         = NULL, 
                                                   @PassportNo VARCHAR(20) = NULL
AS
     SELECT *
     FROM [con].[ContractorPassport]
     WHERE(Id = @Id
           OR @Id IS NULL)
          AND (PassportNo = @PassportNo
               OR @PassportNo IS NULL);
GO
