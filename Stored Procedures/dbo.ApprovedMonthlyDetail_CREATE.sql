SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ApprovedMonthlyDetail_CREATE] 
	-- Add the parameters for the stored procedure here
	@MonthlyCode	varchar(20)			,
	@WorkerCode	varchar(10)			,
	@WorkType    int			,
	@WorkGroup	int						,
	@Description  nvarchar(255),
	@Owner		nvarchar(50),
	@Holiday  nvarchar(50),
	@Wage decimal(10,2),
	@Remark  nvarchar(255)	
	AS
	INSERT INTO ApprovedMonthlyDetail(
	MonthlyCode,
	WorkerCode,
	WorkType,
	WorkGroup,
	Description,
	Owner,
	Holiday,
	Wage,
	Remark
	)
	VALUES(@MonthlyCode,
	@WorkerCode			,
	@WorkType		,
	@WorkGroup			,
	@Description	,
	@Owner		,
	@Holiday	,
	@Wage		,
	@Remark						
	);
	     SELECT SCOPE_IDENTITY() AS MonthlyDetailId;
GO
