SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectConstructionPlanMaster_CREATE] @Code               VARCHAR(10)   = NULL, 
                                                             @ProjectCode        VARCHAR(10)   = NULL, 
                                                             @Status             INT           = NULL, 
                                                             @Type               INT           = NULL, 
                                                             @Active             BIT           = NULL, 
                                                             @CreatedDate        DATETIME      = NULL, 
                                                             @CreatedBy          INT           = NULL, 
                                                             @ModifiedDate       DATETIME      = NULL, 
                                                             @ModifiedBy         INT           = NULL, 
                                                             @RequestApproveDate DATETIME      = NULL, 
                                                             @RequestApproveBy   INT           = NULL, 
                                                             @ApprovedDate       DATETIME      = NULL, 
                                                             @ApprovedBy         INT           = NULL, 
                                                             @Note               NVARCHAR(256) = NULL, 
                                                             @IsUpdateProgress   BIT           = NULL
AS
	DECLARE @TypeRunningNo NVARCHAR(50) = N'ProjectConstructionPlanMaster'
	UPDATE dbo.RunningNO 
		SET RunningNO.Count = RunningNO.Count + 1
		WHERE RunningNO.Type = @TypeRunningNo
	SET @Code = 
			(SELECT (r.Prefix  + RIGHT('0000000000'+CONVERT(NVARCHAR(MAX), CAST(r.Count AS NVARCHAR)),r.LengthNumber))
			FROM dbo.RunningNO as r
			WHERE r.Type = @TypeRunningNo)
	WHILE((SELECT COUNT(*) FROM con.ProjectConstructionPlanMaster WHERE Code = @Code) > 0)
	BEGIN
		UPDATE dbo.RunningNO 
		SET RunningNO.Count = RunningNO.Count + 1
		WHERE RunningNO.Type = @TypeRunningNo

		SET @Code = 
			(SELECT (r.Prefix  + RIGHT('0000000000'+CONVERT(NVARCHAR(MAX), CAST(r.Count AS NVARCHAR)),r.LengthNumber))
			FROM dbo.RunningNO as r
			WHERE r.Type = @TypeRunningNo)
	END

     INSERT INTO [con].[ProjectConstructionPlanMaster]
     (Code, 
      ProjectCode, 
      STATUS, 
      Type, 
      Active, 
      CreatedDate, 
      CreatedBy, 
      ModifiedDate, 
      ModifiedBy, 
      RequestApproveDate, 
      RequestApproveBy, 
      ApprovedDate, 
      ApprovedBy, 
      Note,
	  IsUpdateProgress
     )
     VALUES
     (@Code, 
      @ProjectCode, 
      @Status, 
      @Type, 
      @Active, 
      @CreatedDate, 
      @CreatedBy, 
      @ModifiedDate, 
      @ModifiedBy, 
      @RequestApproveDate, 
      @RequestApproveBy, 
      @ApprovedDate, 
      @ApprovedBy, 
      @Note,
	  @IsUpdateProgress
     );
     SELECT @Code AS Code;
GO
