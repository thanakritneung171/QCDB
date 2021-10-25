SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[SetToPayContractor_SELECT] @ContractorCode                    NVARCHAR(10)   = NULL, 
                                                  @WorkId                            INT            = NULL, 
                                                  @ProjectTypeId                     INT            = NULL, 
                                                  @ProjectCode                       NVARCHAR(10)   = NULL, 
                                                  @HouseId                           INT            = NULL, 
                                                  @UnitName                          NVARCHAR(256)  = NULL, 
                                                  @Price                             DECIMAL(10, 2)  = NULL, 
                                                  @Status                            INT            = NULL, 
                                                  @Active                            BIT            = NULL, 
                                                  @PayContractorCode                 VARCHAR(10)    = NULL, 
                                                  @SearchCreateDateForm              DATETIME       = NULL, 
                                                  @SearchCreateDateTo                DATETIME       = NULL, 
                                                  @SearchStatus                      INT            = NULL, 
                                                  @SearchCreatePayContractorDateForm DATE           = NULL, 
                                                  @SearchCreatePayContractorDateTo   DATE           = NULL, 
                                                  @SetToPayType                      INT            = NULL, 
                                                  @SearchGroupWorkMainId             INT            = NULL, 
                                                  @OtherDetailGroupWorkId            INT            = NULL
AS
     SELECT s.*, 
            c.ContractorName AS ContractorName, 
            ISNULL((CASE
                        WHEN ISNULL(w.IsOtherWork, 0) = 0
                        THEN w.WorkName
                        ELSE wd.WorkName
                    END), wd.WorkName) AS WorkName, 
            wo.SetToPayType, 
            w.WorkGroupMainId, 
            wd.OtherDetailGroupWorkId
     FROM [con].[SetToPayContractor] s
          JOIN [con].[WorkOrder] wo ON wo.Id = s.WorkOrderId
          JOIN [con].[Contractor] c ON c.ContractorCode = s.ContractorCode
          LEFT JOIN [con].[Work] w ON w.Id = s.WorkId
          LEFT JOIN [con].[PayContractor] pc ON pc.PayContractorCode = s.PayContractorCode
          LEFT JOIN [con].[WorkOrderOtherDetail] wd ON wd.Id = s.WorkOrderDetailId
     WHERE(s.ContractorCode = @ContractorCode
           OR @ContractorCode IS NULL)
          AND (s.WorkId = @WorkId
               OR @WorkId IS NULL)
          AND (s.ProjectTypeId = @ProjectTypeId
               OR @ProjectTypeId IS NULL)
          AND (s.ProjectCode = @ProjectCode
               OR @ProjectCode IS NULL)
          AND (s.HouseId = @HouseId
               OR @HouseId IS NULL)
          AND (s.UnitName = @UnitName
               OR @UnitName IS NULL)
          AND (s.STATUS = @Status
               OR @Status IS NULL)
          AND (s.Active = 1)
          AND (s.PayContractorCode = @PayContractorCode
               OR @PayContractorCode IS NULL)
          AND ((CAST(s.CreatedDate AS DATE) >= CAST(@SearchCreateDateForm AS DATE)
                OR @SearchCreateDateForm IS NULL)
               AND (CAST(s.CreatedDate AS DATE) <= CAST(@SearchCreateDateTo AS DATE)
                    OR @SearchCreateDateTo IS NULL))
          AND (((CAST(pc.CreatedDate AS DATE) >= CAST(@SearchCreatePayContractorDateForm AS DATE)
                 OR @SearchCreatePayContractorDateForm IS NULL)
                AND (CAST(pc.CreatedDate AS DATE) <= CAST(@SearchCreatePayContractorDateTo AS DATE)
                     OR @SearchCreatePayContractorDateTo IS NULL))
               OR pc.PayContractorCode IS NULL)
          AND (@SearchStatus != 1
               OR s.STATUS = 1
               OR @SearchStatus IS NULL)-- ค้นหาเฉพาะรายการที่รอตั้งเบิก
          AND (@SearchStatus != 2
               OR s.STATUS = 2
               OR @SearchStatus IS NULL)
          AND (ISNULL(wo.SetToPayType, 1) = @SetToPayType
               OR @SetToPayType IS NULL)
          AND (w.WorkGroupMainId = @SearchGroupWorkMainId
               OR @SearchGroupWorkMainId IS NULL)
          AND (wd.OtherDetailGroupWorkId = @OtherDetailGroupWorkId
               OR @OtherDetailGroupWorkId IS NULL)
          AND (s.Price = @Price
               OR @Price IS NULL);
GO
