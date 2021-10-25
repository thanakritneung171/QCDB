SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[InitialSetting_CRUD] @Control_Character_In  NVARCHAR(100) = NULL, 
                                            @DayUpdateMachine      INT, 
                                            @DayMaxSaveBookMachine INT, 
                                            @FromDayUpdateMachine  INT, 
                                            @ToDayUpdateMachine    INT
AS
    BEGIN
        IF @Control_Character_In = 'readBy'
            BEGIN
                EXEC [MAC].[InitialSetting_ReadBy];
        END;
        IF @Control_Character_In = 'save'
            BEGIN
                EXEC [MAC].[InitialSetting_SAVE] 
                     @DayUpdateMachine, 
                     @FromDayUpdateMachine, 
                     @ToDayUpdateMachine, 
                     @DayMaxSaveBookMachine;
        END;
    END;
        SET ANSI_NULLS ON;
GO
