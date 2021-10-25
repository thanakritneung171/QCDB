SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Unit_SELECTBY]  @ProjectCode NVARCHAR(50) ,
										@HouseId INT
AS
		SELECT u.UnitNumber , u.HId as HouseId  , p.PCode as ProjectCode
		FROM [KKN_Sale].[dbo].T_Units u
		JOIN [KKN_Sale].[dbo].T_HousesInProject hp on u.HId = hp.HouseId
		JOIN [KKN_Sale].[dbo].T_Projects p on p.Id = hp.ProjectId
		WHERE p.PCode = @ProjectCode AND u.HId = @HouseId
		ORDER BY CAST(UnitNumber as INT)
GO
