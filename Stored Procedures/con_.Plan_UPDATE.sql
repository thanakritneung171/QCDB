SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[Plan_UPDATE] @PlanCode     VARCHAR(10)    = NULL, 
                                    @PlanName     NVARCHAR(256)  = NULL, 
                                    @PlanGroup    INT            = NULL, 
                                    @PlanType     INT            = NULL, 
                                    @Area         DECIMAL(10, 2)  = NULL, 
                                    @MinArea      DECIMAL(10, 2)  = NULL, 
                                    @Floor        INT            = NULL, 
                                    @BedRoom      INT            = NULL, 
                                    @BathRoom     INT            = NULL, 
                                    @Parking      INT            = NULL, 
                                    @AreaUnit     INT            = NULL, 
                                    @Description  NVARCHAR(MAX)  = NULL, 
									@Active	      BIT			 = NULL,
                                    @ModifiedDate DATETIME       = NULL, 
                                    @ModifiedBy   INT            = NULL
AS
     UPDATE [con].[Plan]
       SET 
           PlanName = @PlanName, 
           PlanGroup = @PlanGroup, 
           PlanType = @PlanType, 
           Area = @Area, 
           MinArea = @MinArea, 
           Floor = @Floor, 
           BedRoom = @BedRoom, 
           BathRoom = @BathRoom, 
           Parking = @Parking, 
		   AreaUnit   = @AreaUnit,   
		   Description= @Description,
		   Active = @Active,
           ModifiedDate = @ModifiedDate, 
           ModifiedBy = @ModifiedBy
     WHERE PlanCode = @PlanCode;
GO
