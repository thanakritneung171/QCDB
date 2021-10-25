SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkStatement_UpdateStatusAll] @ProjectTypeId INT = NULL, 
                                                       @Status        INT = NULL, 
                                                       @SearchStatus  INT = NULL, 
                                                       @ApprovedBy    INT = NULL
AS
     IF(@Status = 2)
         BEGIN
             --อนุมัติ
             --ปรับแก้ให้งานตัวเก่าให้ไม่เป็นปัจจุบัน IsCCurent = 0
             UPDATE [con].[WorkStatement]
               SET 
                   IsCurrent = 0
             FROM
             (
                 SELECT MAX(WorkId) AS WorkId
                 FROM [con].[WorkStatement] t
                 WHERE t.STATUS = 1
                       AND ProjectTypeId = @ProjectTypeId
                 GROUP BY WorkId
             ) RESULT
             WHERE [con].[WorkStatement].WorkId = RESULT.WorkId;

			 --ปรับราคาล่าสุด งานที่อนุมัติทั้งหมด
			  UPDATE [con].[Work]
               SET 
                   WorkName = st.WorkName,
				   Number = st.Number,
				   WorkUnit = st.WorkUnit,
				   QCPassBeforePay = st.QCPassBeforePay,
				   SetAmountBeforePay = st.SetAmountBeforePay,
				   IsNoPrice = st.IsNoPrice,
				   WorkAmountWeight = st.WorkAmountWeight,
				   Note = st.Note,
				   Active = 1
             FROM
             (
                 SELECT MAX(Id) AS Id
                 FROM [con].[WorkStatement] t
                 WHERE t.STATUS = 1
                       AND ProjectTypeId = @ProjectTypeId
                 GROUP BY WorkId
             ) RESULT
			 JOIN [con].[WorkStatement] st on st.Id = RESULT.Id
			 WHERE [con].[Work].Id = st.WorkId


             --แก้ไขให้งานที่อนุมัติใช้งานเป็นปัจจุบัน
             UPDATE [con].[WorkStatement]
               SET 
                   IsCurrent = 1, 
                   ApprovedBy = @ApprovedBy, 
                   ApprovedDate = GETDATE()
             FROM
             (
                 SELECT MAX(Id) AS Id
                 FROM [con].[WorkStatement] t
                 WHERE t.STATUS = 1
                       AND ProjectTypeId = @ProjectTypeId
                 GROUP BY WorkId
             ) RESULT
             WHERE [con].[WorkStatement].Id = RESULT.Id;

     END;
     UPDATE [con].[WorkStatement]
       SET 
           STATUS = @Status
     FROM [con].[WorkStatement] t
     WHERE t.ProjectTypeId = @ProjectTypeId
           AND t.STATUS = @SearchStatus;





GO
