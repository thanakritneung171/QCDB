SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Plan_CREATE] @PlanCode    VARCHAR(10)    = NULL, 
                                    @PlanName    NVARCHAR(256)  = NULL, 
                                    @PlanGroup   INT            = NULL, 
                                    @PlanType    INT            = NULL, 
                                    @Area        DECIMAL(10, 2)  = NULL, 
                                    @MinArea     DECIMAL(10, 2)  = NULL, 
                                    @Floor       INT            = NULL, 
                                    @BedRoom     INT            = NULL, 
                                    @BathRoom    INT            = NULL, 
                                    @Parking     INT            = NULL, 
                                    @AreaUnit    INT            = NULL, 
                                    @Description NVARCHAR(MAX)  = NULL, 
                                    @CreatedDate DATETIME       = NULL, 
                                    @CreatedBy   INT            = NULL
AS
     DECLARE @LastNumber INT;
     SET @LastNumber = 0;
     IF(
     (
         SELECT COUNT(*)
         FROM [con].[Plan]
     ) > 0)
         BEGIN
             SET @LastNumber =
             (
                 SELECT TOP 1 Number
                 FROM [con].[Plan]
                 ORDER BY Number DESC
             );
     END;
     SET @PlanCode = 'PN' + RIGHT('000' + CAST(@LastNumber + 1 AS VARCHAR(3)), 3);

     INSERT INTO [con].[Plan]
     (PlanCode, 
      Number, 
      PlanName, 
      PlanGroup, 
      PlanType, 
      Area, 
      MinArea, 
      Floor, 
      BedRoom, 
      BathRoom, 
      Parking, 
      AreaUnit, 
      Description,
	  Active, 
      CreatedDate, 
      CreatedBy
     )
     VALUES
     (@PlanCode, 
      @LastNumber + 1, 
      @PlanName, 
      @PlanGroup, 
      @PlanType, 
      @Area, 
      @MinArea, 
      @Floor, 
      @BedRoom, 
      @BathRoom, 
      @Parking, 
      @AreaUnit, 
      @Description,
	  1, 
      @CreatedDate, 
      @CreatedBy
     );
GO
