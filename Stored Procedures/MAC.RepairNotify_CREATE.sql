SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairNotify_CREATE] @RepairNotifyCode NVARCHAR(10)   = NULL, 
                                            @MachineCode      NVARCHAR(10)   = NULL, 
                                            @ProjectCode      NVARCHAR(10)   = NULL, 
                                            @BrokenDetail     NVARCHAR(MAX)  = NULL, 
                                            @BrokenStartDate  DATETIME       = NULL, 
                                            @RepairProgress   INT            = NULL, 
                                            @MachineStatus    INT            = NULL, 
                                            @RepairStatus     INT            = NULL, 
                                            @CreatedDate      DATETIME       = NULL, 
                                            @CreatedBy        INT            = NULL, 
                                            @BookMachineId    INT            = NULL
AS
     INSERT INTO [MAC].[RepairNotify]
     ([RepairNotifyCode], 
      [MachineCode], 
      [ProjectCode], 
      [BrokenDetail], 
      [BrokenStartDate], 
      [RepairProgress], 
      [MachineStatus], 
      [RepairStatus], 
      [CreatedDate], 
      [CreatedBy], 
      [BookMachineId]   
     )
     VALUES
     (@RepairNotifyCode, 
      @MachineCode, 
      @ProjectCode, 
      @BrokenDetail, 
      @BrokenStartDate, 
      @RepairProgress, 
      @MachineStatus, 
      @RepairStatus, 
      @CreatedDate, 
      @CreatedBy, 
      @BookMachineId  
     );
GO
