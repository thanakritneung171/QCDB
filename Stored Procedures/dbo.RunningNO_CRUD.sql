SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		<James>
-- Create date: <07/12/2018>
-- Description:	<>
-- =============================================
CREATE PROCEDURE [dbo].[RunningNO_CRUD]
-- Add the parameters for the stored procedure here
@Control_Character_In NVARCHAR(100) = NULL,
@Type NVARCHAR(100) = NULL,
@MorePrefix NVARCHAR(100) = NULL

AS
     BEGIN
         -- SET NOCOUNT ON added to prevent extra result sets from
         -- interfering with SELECT statements.
         SET NOCOUNT ON;

         -- Insert statements for procedure here
         IF @Control_Character_In = 'generatecode'
             BEGIN
                 EXEC [dbo].[RunningNO_GenerateCode] 
					  @Type,
                      @MorePrefix;
             END;
           
     END;



GO
