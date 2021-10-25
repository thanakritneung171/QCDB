SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[ApproveConfirmBookMachineDetail_CREATE] @ApproveConfirmBookMachineId INT, 
                                                               @BookMachineId               INT, 
                                                               @Status                      INT, 
                                                               @Code                        NVARCHAR(10), 
                                                               @CodeNumber                  INT, 
                                                               @MachineCode                 NVARCHAR(10), 
                                                               @MachineDescription          NVARCHAR(256), 
                                                               @ProjectCode                 NVARCHAR(10), 
                                                               @ModifiedDate                DATETIME      = NULL, 
                                                               @ModifiedBy                  INT           = NULL
AS
     INSERT INTO [MAC].[ApproveConfirmBookMachineDetail]
     ([ApproveConfirmBookMachineId], 
      [BookMachineId], 
      [Status], 
      [Code], 
      [CodeNumber], 
      [MachineCode], 
      [MachineDescription], 
      [ProjectCode], 
      [ModifiedDate], 
      [ModifiedBy]
     )
     VALUES
     (@ApproveConfirmBookMachineId, 
      @BookMachineId, 
      @Status, 
      @Code, 
      @CodeNumber, 
      @MachineCode, 
      @MachineDescription, 
      @ProjectCode, 
      @ModifiedDate, 
      @ModifiedBy
     );



/****** Object:  StoredProcedure [MAC].[ApproveConfirmBookMachineDetail_SELECT]    Script Date: 17/12/2563 8:25:25 ******/
SET ANSI_NULLS ON
GO
