SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[HistoryUpdateMachine_CRUD] @Control_Character_In  NVARCHAR(100) = NULL, 
                                                  @Id                    INT           = NULL, 
                                                  @UpdateMachineMasterId INT           = NULL, 
                                                  @MachineCode           NVARCHAR(10)  = NULL, 
                                                  @ProjectCode           NVARCHAR(10)  = NULL, 
                                                  @Description           NVARCHAR(MAX) = NULL, 
                                                  @CreatedBy             INT           = NULL, 
                                                  @CreatedDate           DATETIME      = NULL, 
                                                  @MachineStatus         INT           = NULL, 
                                                  @Progress              INT           = NULL, 
                                                  @VerifyNote            NVARCHAR(MAX) = NULL, 
                                                  @VerifiedDate          DATETIME      = NULL, 
                                                  @VerifiedBy            INT           = NULL, 
                                                  @AnalysisNote          NVARCHAR(MAX) = NULL, 
                                                  @AnalysisDate          DATETIME      = NULL, 
                                                  @AnalysisBy            INT           = NULL, 
                                                  @Month                 INT           = NULL, 
                                                  @Year                  INT           = NULL, 
                                                  @MachineTypeId         INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [MAC].[HistoryUpdateMachine_CREATE];
        END;
        IF @Control_Character_In = 'update'
            BEGIN
                EXEC [MAC].[HistoryUpdateMachine_UPDATE] 
                     @Id, 
                     @Description, 
                     @CreatedBy, 
                     @CreatedDate, 
                     @MachineStatus, 
                     @Progress, 
                     @VerifyNote, 
                     @VerifiedDate, 
                     @VerifiedBy, 
                     @AnalysisNote, 
                     @AnalysisDate, 
                     @AnalysisBy;
        END;
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[HistoryUpdateMachine_READ_BY] 
                     @Id, 
                     @MachineCode, 
                     @Month, 
                     @Year;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [MAC].[HistoryUpdateMachine_SELECT] 
                     @MachineCode, 
                     @MachineTypeId, 
                     @ProjectCode, 
                     @MachineStatus, 
                     @Progress, 
                     @Month, 
                     @Year;
        END;
    END;
        SET ANSI_NULLS ON;
GO
