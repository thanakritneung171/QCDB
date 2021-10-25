SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[STRING_SPLIT] ( @stringToSplit NVARCHAR(MAX) , @sign NVARCHAR(5))
RETURNS
 @returnList TABLE ([value] [nvarchar] (500))
AS
BEGIN

 DECLARE @value NVARCHAR(255)
 DECLARE @pos INT

 WHILE CHARINDEX(@sign, @stringToSplit) > 0
 BEGIN
  SELECT @pos  = CHARINDEX(@sign, @stringToSplit)  
  SELECT @value = SUBSTRING(@stringToSplit, 1, @pos-1)

  INSERT INTO @returnList 
  SELECT @value

  SELECT @stringToSplit = SUBSTRING(@stringToSplit, @pos+1, LEN(@stringToSplit)-@pos)
 END

 INSERT INTO @returnList
 SELECT @stringToSplit

 RETURN
END
GO
