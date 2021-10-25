SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairNotify_CRUD] @Control_Character_In   NVARCHAR(100)  = NULL, 
                                          @RepairNotifyCode       NVARCHAR(10)   = NULL, 
                                          @MachineCode            NVARCHAR(10)   = NULL, 
                                          @ProjectCode            NVARCHAR(10)   = NULL, 
                                          @BrokenDetail           NVARCHAR(MAX)  = NULL, 
                                          @BrokenStartDate        DATETIME       = NULL, 
                                          @RepairProgress         INT            = NULL, 
                                          @MachineStatus          INT            = NULL, 
                                          @RepairStatus           INT            = NULL, 
                                          @CreatedDate            DATETIME       = NULL, 
                                          @CreatedBy              INT            = NULL, 
                                          @ModifiedDate           DATETIME       = NULL, 
                                          @ModifiedBy             INT            = NULL, 
                                          @RecvDate               DATETIME       = NULL, 
                                          @RecvBy                 INT            = NULL, 
                                          @RepairScore            INT            = NULL, 
                                          @RepairScoreNote        NVARCHAR(MAX)  = NULL, 
                                          @SearchStartDate        DATETIME       = NULL, 
                                          @SearchToDate           DATETIME       = NULL, 
                                          @SearchMachineTypeId    INT            = NULL, 
                                          @SearchRepairManGroupId INT            = NULL, 
                                          @RejectReason           NVARCHAR(MAX)  = NULL, 
                                          @BookMachineId          INT            = NULL, 
                                          @ConfirmRateDate        DATETIME       = NULL, 
                                          @ConfirmRateBy          INT            = NULL, 
                                          @ConfirmRateNote        NVARCHAR(255)  = NULL, 
                                          @WorkingHour            INT            = NULL, 
                                          @WorkingMinute          INT            = NULL, 
                                          @WorkerPrice            DECIMAL(10, 2)  = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[RepairNotify_Create] 
                     @RepairNotifyCode, 
                     @MachineCode, 
                     @ProjectCode, 
                     @BrokenDetail, 
                     @BrokenStartDate, 
                     @RepairProgress, 
                     @MachineStatus, 
                     @RepairStatus, 
                     @CreatedDate, 
                     @CreatedBy, 
                     @BookMachineId;
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[RepairNotify_UPDATE] 
                     @RepairNotifyCode, 
                     @MachineCode, 
                     @ProjectCode, 
                     @BrokenDetail, 
                     @BrokenStartDate, 
                     @RepairProgress, 
                     @MachineStatus, 
                     @RepairStatus, 
                     @ModifiedDate, 
                     @ModifiedBy, 
                     @RecvDate, 
                     @RecvBy, 
                     @RepairScore, 
                     @RepairScoreNote, 
                     @RejectReason, 
                     @ConfirmRateDate, 
                     @ConfirmRateBy, 
                     @ConfirmRateNote, 
                     @WorkingHour, 
                     @WorkingMinute, 
                     @WorkerPrice;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[RepairNotify_READ_BY] 
                     @RepairNotifyCode;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[RepairNotify_SELECT] 
                     @RepairNotifyCode, 
                     @MachineCode, 
                     @ProjectCode, 
                     @RepairProgress, 
                     @SearchStartDate, 
                     @SearchToDate, 
                     @SearchMachineTypeId, 
                     @SearchRepairManGroupId, 
                     @BookMachineId;
        END;
        IF @Control_Character_In = 'selectrepairstartdate'
            BEGIN
                EXEC [MAC].[RepairNotify_SELECT_REPAIRSTARTDATE] 
                     @SearchStartDate, 
                     @SearchToDate, 
                     @SearchRepairManGroupId;
        END;
        IF @Control_Character_In = 'selectrepaircompletedate'
            BEGIN
                EXEC [MAC].[RepairNotify_SELECT_REPAIRCOMPLETEDATE] 
                     @RepairNotifyCode, 
                     @SearchStartDate, 
                     @SearchToDate, 
                     @ProjectCode, 
                     @SearchMachineTypeId;
        END;
        IF @Control_Character_In = 'waitsaveSummary'
            BEGIN
                EXEC [MAC].[RepairNotify_WAIT_SAVESUMMARY] 
                     @RepairNotifyCode, 
                     @MachineCode, 
                     @ProjectCode, 
                     @SearchMachineTypeId;
        END;
    END;
        SET ANSI_NULLS ON;
GO
