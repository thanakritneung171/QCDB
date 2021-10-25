SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[ApproveConfirmBookMachineDetail_READ_BY] @BookMachineId INT          = NULL
AS
     SELECT ad.ApproveConfirmBookMachineId, ad.Status , ad.Code , ad.CodeNumber , ISNULL(ad.MachineCode,b.MachineCode) as MachineCode,ad.MachineDescription as  MachineDescription, ISNULL(ad.ProjectCode,b.ProjectCode) as DetailProjectCode , ad.ModifiedDate as DetailModifiedDate , ad.ModifiedBy as DetailModifiedBy, 
            b.*, 
            t.MachineTypeName AS MachineTypeName, 
            m.MachineName AS MachineName, 
            m.Brand AS Brand, 
            m.Model AS Model, 
            m.Specification AS Specification, 
			m.MachineSerial AS MachineSerial,
			bc.BookMachineGroupName as BookMachineGroupName,
			dri.DriverName
     FROM [MAC].ApproveConfirmBookMachineDetail ad
          JOIN [MAC].ApproveConfirmBookMachine a ON a.Id = ad.ApproveConfirmBookMachineId
          LEFT JOIN [MAC].BookMachine b ON b.BookMachineId = ad.BookMachineId
		  LEFT JOIN [MAC].BookMachineConfig bc ON b.BookMachineConfigId = bc.Id
          LEFT JOIN [MAC].[MachineType] t ON t.MachineTypeId = b.MachineTypeId
          LEFT JOIN [MAC].[Machine] m ON b.MachineCode = m.MachineCode
		  LEFT JOIN [MAC].[Driver] dri ON dri.DriverId = b.DriverId
     WHERE(ad.BookMachineId = @BookMachineId
           OR @BookMachineId IS NULL)
GO
