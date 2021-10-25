SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[RepairQueue_CREATE] @QueueCode        NVARCHAR(10) = NULL, 
                                           @RepairNotifyCode NVARCHAR(10) = NULL, 
                                           @RepairManGroupId INT          = NULL,
                                           @IsInstant        BIT          = NULL, 
                                           @RunningNo        INT          = NULL, 
                                           @CreatedBy        INT          = NULL, 
                                           @CreatedDate      DATETIME     = NULL,
										   @AssignWorkDay			 INT		  = NULL
AS
     INSERT INTO [MAC].[RepairQueue]
     ([QueueCode], 
      [RepairNotifyCode], 
      [RepairManGroupId], 
      [IsInstant], 
	  [RunningNo],
      [CreatedBy], 
      [CreatedDate],
	  [AssignWorkDay]
     )
     VALUES
     (@QueueCode, 
      @RepairNotifyCode, 
      @RepairManGroupId,
      @IsInstant, 
	  @RunningNo,
      @CreatedBy, 
      @CreatedDate,
	  @AssignWorkDay
     );


GO
