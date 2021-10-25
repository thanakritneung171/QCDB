SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[ApproveConfirmBookMachineDetail_CRUD] @Control_Character_In        NVARCHAR(100) = NULL, 
                                                             @ApproveConfirmBookMachineId INT, 
                                                             @BookMachineId               INT, 
                                                             @Status                      INT, 
                                                             @Code                        NVARCHAR(10), 
                                                             @CodeNumber                  INT, 
                                                             @MachineCode                 NVARCHAR(10), 
                                                             @MachineDescription          NVARCHAR(256), 
                                                             @ProjectCode                 NVARCHAR(10), 
                                                             @SearchStartDate             DATE          = NULL, 
                                                             @SearchEndDate               DATE          = NULL, 
                                                             @ModifiedDate                DATETIME      = NULL, 
                                                             @ModifiedBy                  INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[ApproveConfirmBookMachineDetail_Create] 
                     @ApproveConfirmBookMachineId, 
                     @BookMachineId, 
                     @Status, 
                     @Code, 
                     @CodeNumber, 
                     @MachineCode, 
                     @MachineDescription, 
                     @ProjectCode,
					 @ModifiedDate,
					 @ModifiedBy  
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[ApproveConfirmBookMachineDetail_UPDATE] 
                     @ApproveConfirmBookMachineId, 
                     @BookMachineId, 
                     @Code, 
                     @Status,
					 @ModifiedDate,
					 @ModifiedBy  
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[ApproveConfirmBookMachineDetail_SELECT] 
                     @ApproveConfirmBookMachineId, 
                     @Code, 
                     @MachineCode, 
                     @ProjectCode, 
                     @SearchStartDate, 
                     @SearchEndDate;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[ApproveConfirmBookMachineDetail_READ_BY] 
                     @BookMachineId;
        END;
        IF @Control_Character_In = 'delete'
            BEGIN
                EXEC [MAC].[ApproveConfirmBookMachineDetail_DELETE] 
                     @ApproveConfirmBookMachineId, 
                     @BookMachineId;
        END;
        IF @Control_Character_In = 'generateCode'
            BEGIN
                EXEC [MAC].[ApproveConfirmBookMachineDetail_GenerateCode];
        END;
    END;
        SET ANSI_NULLS ON;


/****** Object:  StoredProcedure [MAC].[ApproveConfirmBookMachineDetail_CREATE]    Script Date: 17/12/2563 8:25:16 ******/
SET ANSI_NULLS ON
GO
