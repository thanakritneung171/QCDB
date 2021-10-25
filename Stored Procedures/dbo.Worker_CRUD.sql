SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Worker_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                    @WorkerCode           VARCHAR(10)   = NULL, 
                                    @Title                NVARCHAR(50)  = NULL, 
                                    @FirstName            NVARCHAR(50)  = NULL, 
                                    @LastName             NVARCHAR(50)  = NULL, 
                                    @IdentificationNo     NVARCHAR(13)  = NULL, 
                                    @PassportNo           NVARCHAR(10)  = NULL, 
                                    @Phone                NVARCHAR(10)  = NULL, 
                                    @Address              NVARCHAR(255) = NULL, 
                                    @ProjectId            INT           = NULL, 
                                    @WageId               INT           = NULL, 
                                    @WorkStatus           INT           = NULL, 
                                    @Remark               NVARCHAR(255) = NULL, 
                                    @Active               BIT           = NULL, 
                                    @RunningNo            INT           = NULL, 
                                    @CreatedDate          DATETIME      = NULL, 
                                    @CreatedBy            INT           = NULL, 
                                    @ApprovedDate         DATETIME      = NULL, 
                                    @ApprovedBy           INT           = NULL, 
                                    @ModifiedDate         DATETIME      = NULL, 
                                    @ModifiedBy           INT           = NULL, 
                                    @AliasName            NVARCHAR(50)  = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [Worker_CREATE] 
                     @WorkerCode, 
                     @Title, 
                     @FirstName, 
                     @LastName, 
                     @IdentificationNo, 
                     @PassportNo, 
                     @Phone, 
                     @Address, 
                     @ProjectId, 
                     @WageId, 
                     @WorkStatus, 
                     @Remark, 
                     @Active, 
                     @RunningNo, 
                     @CreatedDate, 
                     @CreatedBy, 
                     @ApprovedDate, 
                     @ApprovedBy, 
                     @AliasName;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [Worker_UPDATE] 
                     @WorkerCode, 
                     @Title, 
                     @FirstName, 
                     @LastName, 
                     @IdentificationNo, 
                     @PassportNo, 
                     @Phone, 
                     @Address, 
                     @ProjectId, 
                     @WageId, 
                     @WorkStatus, 
                     @Remark, 
                     @Active, 
                     @RunningNo, 
                     @ApprovedDate, 
                     @ApprovedBy, 
                     @ModifiedDate, 
                     @ModifiedBy, 
                     @AliasName;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [Worker_READ_BY] 
                     @WorkerCode;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [Worker_SELECT] 
                     @WorkerCode;
        END;
        IF @Control_Character_In = 'generateCode'
            BEGIN
                EXEC [Worker_GenerateCode] 
                     @RunningNo;
        END;
    END;
        SET ANSI_NULLS ON;
GO
