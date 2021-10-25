SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairNotify_UPDATE] @RepairNotifyCode NVARCHAR(10)   = NULL, 
                                            @MachineCode      NVARCHAR(10)   = NULL, 
                                            @ProjectCode      NVARCHAR(10)   = NULL, 
                                            @BrokenDetail     NVARCHAR(MAX)  = NULL, 
                                            @BrokenStartDate  DATETIME       = NULL, 
                                            @RepairProgress   INT            = NULL, 
                                            @MachineStatus    INT            = NULL, 
                                            @RepairStatus     INT            = NULL, 
                                            @ModifiedDate     DATETIME       = NULL, 
                                            @ModifiedBy       INT            = NULL, 
                                            @RecvDate         DATETIME       = NULL, 
                                            @RecvBy           INT            = NULL, 
                                            @RepairScore      INT            = NULL, 
                                            @RepairScoreNote  NVARCHAR(MAX)  = NULL, 
                                            @RejectReason     NVARCHAR(MAX)  = NULL, 
                                            @ConfirmRateDate  DATETIME       = NULL, 
                                            @ConfirmRateBy    INT            = NULL, 
                                            @ConfirmRateNote  NVARCHAR(255)  = NULL, 
                                            @WorkingHour      INT            = NULL, 
                                            @WorkingMinute    INT            = NULL, 
                                            @WorkerPrice      DECIMAL(10, 2)  = NULL
AS
     UPDATE [MAC].[RepairNotify]
       SET 
           [RepairNotifyCode] = @RepairNotifyCode, 
           [MachineCode] = @MachineCode, 
           [ProjectCode] = @ProjectCode, 
           [BrokenDetail] = @BrokenDetail, 
           [BrokenStartDate] = @BrokenStartDate, 
           [RepairProgress] = @RepairProgress, 
           [MachineStatus] = @MachineStatus, 
           [RepairStatus] = @RepairStatus, 
           [ModifiedDate] = @ModifiedDate, 
           [ModifiedBy] = @ModifiedBy, 
           [RecvDate] = @RecvDate, 
           [RecvBy] = @RecvBy, 
           [RepairScore] = @RepairScore, 
           [RepairScoreNote] = @RepairScoreNote, 
           [RejectReason] = @RejectReason, 
           [ConfirmRateDate] = @ConfirmRateDate, 
           [ConfirmRateBy] = @ConfirmRateBy, 
           [ConfirmRateNote] = @ConfirmRateNote, 
           [WorkingHour] = @WorkingHour, 
           [WorkingMinute] = @WorkingMinute, 
           [WorkerPrice] = @WorkerPrice
     WHERE RepairNotifyCode = @RepairNotifyCode;
GO
