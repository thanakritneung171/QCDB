SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ContractorPassport_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                                 @Id                   INT           = NULL, 
                                                 @ContractorCode       VARCHAR(10)   = NULL, 
                                                 @PassportNo           VARCHAR(20)   = NULL, 
                                                 @PassportName         NVARCHAR(256) = NULL, 
                                                 @ExpireDate           DATE          = NULL, 
                                                 @CreatedDate          DATETIME      = NULL, 
                                                 @CreatedBy            INT           = NULL, 
                                                 @ModifiedDate         DATETIME      = NULL, 
                                                 @ModifiedBy           INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [con].[ContractorPassport_Create] 
                     @ContractorCode, 
                     @PassportNo, 
                     @PassportName, 
                     @ExpireDate, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [con].[ContractorPassport_UPDATE] 
                     @Id, 
                     @ContractorCode, 
                     @PassportNo, 
                     @PassportName, 
                     @ExpireDate, 
                     @ModifiedDate, 
                     @ModifiedBy;
        END;
		IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [con].[ContractorPassport_DELETE] 
                     @Id, 
                     @ContractorCode
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [con].[ContractorPassport_READ_BY] 
                     @Id,
					 @PassportNo
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [con].[ContractorPassport_SELECT] 
                     @ContractorCode;
        END;
    END;
        SET ANSI_NULLS ON;
GO
