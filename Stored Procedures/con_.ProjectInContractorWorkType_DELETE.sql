SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[ProjectInContractorWorkType_DELETE] @ProjectInContractorId INT = NULL
AS
     DELETE [con].[ProjectInContractorWorkType]
     WHERE ProjectInContractorId = @ProjectInContractorId;
GO
