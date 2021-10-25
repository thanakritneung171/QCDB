SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[ApproveConfirmBookMachineDetail_SELECT] @ApproveConfirmBookMachineId INT          = NULL, 
                                                               @Code                        NVARCHAR(10) = NULL, 
                                                               @MachineCode                 NVARCHAR(10), 
                                                               @ProjectCode                 NVARCHAR(10), 
                                                               @SearchStartDate             DATE         = NULL, 
                                                               @SearchEndDate               DATE         = NULL
AS
     SELECT ad.ApproveConfirmBookMachineId, ad.Status , ad.Code , ad.CodeNumber , ISNULL(ad.MachineCode,b.MachineCode) as MachineCode,ad.MachineDescription as  MachineDescription, ISNULL(ad.ProjectCode,b.ProjectCode) as DetailProjectCode , ad.ModifiedDate as DetailModifiedDate  , ad.ModifiedBy as DetailModifiedBy , 
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
     WHERE(ApproveConfirmBookMachineId = @ApproveConfirmBookMachineId
           OR @ApproveConfirmBookMachineId IS NULL)
          AND (b.MachineCode = @MachineCode
               OR @MachineCode IS NULL)
          AND (b.ProjectCode = @ProjectCode
               OR @ProjectCode IS NULL)
          AND (ad.Code LIKE '%' + @Code + '%'
               OR @Code IS NULL)
          AND ((CAST(b.StartDate as DATE) <= CAST(@SearchEndDate as DATE) OR  @SearchEndDate IS NULL) AND (CAST(@SearchStartDate as DATE) <= CAST(b.EndDate as DATE) OR @SearchStartDate IS NULL))


GO
