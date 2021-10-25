SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[HistoryUpdateMachine_UPDATE] @Id            INT           = NULL, 
                                                    @Description   NVARCHAR(MAX) = NULL, 
                                                    @CreatedBy     INT           = NULL, 
                                                    @CreatedDate   DATETIME      = NULL, 
                                                    @MachineStatus INT           = NULL, 
                                                    @Progress      INT           = NULL, 
                                                    @VerifyNote    NVARCHAR(MAX) = NULL, 
                                                    @VerifiedDate  DATETIME      = NULL, 
                                                    @VerifiedBy    INT           = NULL, 
                                                    @AnalysisNote  NVARCHAR(MAX) = NULL, 
                                                    @AnalysisDate  DATETIME      = NULL, 
                                                    @AnalysisBy    INT           = NULL
AS
     UPDATE MAC.HistoryUpdateMachine
       SET 
           Description = @Description, 
           CreatedBy = @CreatedBy, 
           CreatedDate = @CreatedDate, 
           MachineStatus = @MachineStatus, 
           Progress = @Progress, 
           VerifyNote = @VerifyNote, 
           VerifiedDate = @VerifiedDate, 
           VerifiedBy = @VerifiedBy, 
           AnalysisNote = @AnalysisNote, 
           AnalysisDate = @AnalysisDate, 
           AnalysisBy = @AnalysisBy
     WHERE Id = @Id;
GO
