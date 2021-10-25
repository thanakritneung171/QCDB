SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[DescriptionWorkView]
AS
SELECT        DesId AS DescriptionWork_DesId, DescriptionName AS DescriptionWork_DescriptionName, WorkGroupId AS DescriptionWork_WorkGroupId, Active AS DescriptionWork_Active, CreatedDate AS DescriptionWork_CreatedDate, 
                         CreatedBy AS DescriptionWork_CreatedBy, ModifiedDate AS DescriptionWork_ModifiedDate, ModifiedBy AS DescriptionWork_ModifiedBy
FROM            dbo.DescriptionWork

GO
