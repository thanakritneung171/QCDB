SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[PayContractor_GET_CURRENT_NUMBER] @ProjectCode VARCHAR(10) = NULL, 
                                                         @CreatedDate DATETIME    = NULL
AS
  --      SELECT TOP 1 pcNumber AS Number
		--FROM (SELECT TOP 1 ABS(DAY(@CreatedDate) - pc.Day) as AbsDay , pc.Number AS pcNumber 
		--FROM [con].[PayContractorPeriod] pc 
		--WHERE pc.Day <= DAY(GETDATE())
		--ORDER BY AbsDay) RESULT

	    DECLARE @FirstDate DATE = (SELECT DATEADD(month, DATEDIFF(month, 0, GETDATE()), 0) AS StartOfMonth)
		DECLARE @LastDate DATE = DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE()), -1)

		DECLARE @DateInMonthTemp TABLE(
				DateTime DATE NOT NULL,
				DayName varchar(30) NOT NULL,
				Number INT 
		);

	   ;WITH DateInMonth(datetime) --ช่วงวันทำงานปกติ // ดูตามช่วงวันที่ต้องการดู
	   AS (SELECT convert(date,@FirstDate)
	   UNION ALL
	   SELECT DATEADD(day, 1, datetime)
	   FROM DateInMonth
	   WHERE datetime < convert(date,@LastDate))

	   INSERT INTO @DateInMonthTemp (DateTime , DayName , Number)
	   SELECT w.datetime as DateTime ,DATENAME(WEEKDAY , w.datetime) as DayName, ROW_NUMBER() OVER(ORDER BY w.datetime ASC) AS Number
	   FROM DateInMonth w
	   JOIN con.PayContractorPeriodDay ppd on ppd.Day = DATENAME(WEEKDAY , DATEADD(DAY , -1 , w.datetime))
	   WHERE ppd.Active = 1

	   SELECT TOP 1 temp.Number , temp.DateTime as StartRoundDate ,DATEADD(DAY , 6 , temp.DateTime) as EndRoundDate
	   FROM @DateInMonthTemp temp
	   WHERE temp.DateTime <= CAST(GETDATE() as DATE)
	   ORDER BY DateTime DESC
GO
