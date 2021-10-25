SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Worker_CHECK_NEW] 
-- Add the parameters for the stored procedure here
	@WorkerCode_In nvarchar(50)  = NULL,
	@FirstName_In nvarchar(50)  = NULL,
	@LastName_In nvarchar(50)  = NULL,
	@IdentificationNo_In nvarchar(13) = NULL,
	@PassportNo_In nvarchar(20)  = NULL

AS
BEGIN

		DECLARE @WorkerCode int;
		DECLARE @NameCount int;
		DECLARE @IdentificationNoCount bit;
		DECLARE @PassportNoCount int;
	

		if(len(@WorkerCode_In) > 0 )
	BEGIN
		set @WorkerCode= [dbo].[WorkerCodeCheck](@WorkerCode_In);
	if(@WorkerCode>0)
		BEGIN
				SELECT 400 as Code,N'มีเลขคนงานนี้แล้ว' as ResponseText;
				RETURN 0;
		END
	END


	if(len(@FirstName_In) > 0 AND len(@LastName_In) > 0)
	BEGIN
		set @NameCount= [dbo].[WorkerNameCheck](@FirstName_In,@LastName_In,@WorkerCode_In);
		if(@NameCount>0)
		BEGIN
				SELECT 400 as Code,N'มีชื่อ นามสกุลนี้แล้ว' as ResponseText;
				RETURN 0;
		END
	END

	if(len(@IdentificationNo_In) > 0)
	BEGIN
		set @IdentificationNoCount= [dbo].[IdentificationNoCheck](@IdentificationNo_In,@WorkerCode_In);
		if(@IdentificationNoCount > 0)
		BEGIN
				SELECT 400 as Code,N'มีเลขบัตรประชาชนนี้แล้ว' as ResponseText;
				RETURN 0;
		END
	END
	   
 	if(len(@PassportNo_In) > 0)
	BEGIN
		set @PassportNoCount= [dbo].[PassportNoCheck](@PassportNo_In,@WorkerCode_In);
			if(@PassportNoCount>0)
			BEGIN
					SELECT 400 as Code,N'มี Passport นี้แล้ว' as ResponseText;
					RETURN 0;
			END
	END





	SELECT 200 as Code,'' as ResponseText, 1 AS MessageStatus;
	
END
GO
