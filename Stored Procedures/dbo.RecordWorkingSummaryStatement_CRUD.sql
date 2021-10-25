SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[RecordWorkingSummaryStatement_CRUD] @Control_Character_In NVARCHAR(100) = NULL, 
                                                            @Id                   INT           = NULL, 
                                                            @RecordWorkingDate    DATE          = NULL, 
                                                            @CreatedDate          DATETIME      = NULL, 
                                                            @CreatedBy            INT           = NULL
AS
    BEGIN
        IF @Control_Character_In = 'create'
            BEGIN
                EXEC [RecordWorkingSummaryStatement_CREATE] 
                     @RecordWorkingDate, 
                     @CreatedDate, 
                     @CreatedBy;
        END;
        IF @Control_Character_In = 'select'
            BEGIN
                EXEC [RecordWorkingSummaryStatement_SELECT] 
                     @RecordWorkingDate;
        END;
    END;
        SET ANSI_NULLS ON;
GO
