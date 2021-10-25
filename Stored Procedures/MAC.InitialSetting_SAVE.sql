SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[InitialSetting_SAVE] @DayUpdateMachine      INT, 
                                            @FromDayUpdateMachine  INT, 
                                            @ToDayUpdateMachine    INT, 
                                            @DayMaxSaveBookMachine INT
AS
     IF EXISTS
     (
         SELECT *
         FROM InitialSetting
     )
         UPDATE InitialSetting
           SET 
               DayUpdateMachine = ISNULL(@DayUpdateMachine, DayUpdateMachine), 
               FromDayUpdateMachine = ISNULL(@FromDayUpdateMachine, FromDayUpdateMachine), 
               ToDayUpdateMachine = ISNULL(@ToDayUpdateMachine, ToDayUpdateMachine), 
               DayMaxSaveBookMachine = ISNULL(@DayMaxSaveBookMachine, DayMaxSaveBookMachine);
         ELSE
         INSERT INTO InitialSetting
         (DayUpdateMachine, 
          FromDayUpdateMachine, 
          ToDayUpdateMachine, 
          DayMaxSaveBookMachine
         )
         VALUES
         (@DayUpdateMachine, 
          @FromDayUpdateMachine, 
          @ToDayUpdateMachine, 
          @DayMaxSaveBookMachine
         );
GO
