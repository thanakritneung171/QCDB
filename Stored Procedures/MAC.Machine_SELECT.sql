SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MAC].[Machine_SELECT] @SearchMachine        NVARCHAR(MAX)  = NULL,
									   @ProjectCode NVARCHAR(50) = NULL,
									   @MachineTypeId INT	     = NULL, 
                                       @Active      BIT          = NULL,
									   @Status      INT          = NULL,
									   @MachineName NVARCHAR(250)  = NULL
AS
     SELECT * , m.MachineName  as MachineName , (SELECT TOP 1 _p.NameTH FROM KKN_Sale.dbo.T_Projects _p WHERE _p.PCode = m.ProjectCode ) as ProjectName, m.Model as Model
     FROM [MAC].[Machine] m
	 JOIN [MAC].[MachineType] t on m.MachineTypeId = t.MachineTypeId
     WHERE(m.ProjectCode = @ProjectCode OR @ProjectCode IS NULL OR @ProjectCode = '')
          AND (m.Active = @Active OR @Active IS NULL)
		  AND (m.MachineTypeId = @MachineTypeId OR @MachineTypeId IS NULL)
		  AND ((SELECT COUNT(*) FROM STRING_SPLIT(@SearchMachine,' ') ss WHERE m.MachineCode + ' ' + t.MachineTypeName + '-' + CAST(m.Number as NVARCHAR(10)) + ISNULL(' ' + m.Brand,'')  + ISNULL(' ' + m.Model,'') + ISNULL(' ' + m.Specification,'') LIKE N'%'+ ss.value +'%' ) > 0 OR @SearchMachine IS NULL)
		  AND (m.Status = @Status OR @Status IS NULL)
		  AND (m.MachineName = @MachineName OR @MachineName IS NULL)
GO
