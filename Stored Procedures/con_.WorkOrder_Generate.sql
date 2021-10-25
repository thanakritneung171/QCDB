SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [con].[WorkOrder_Generate] @ProjectCode VARCHAR(50) = NULL
AS
    BEGIN
		DELETE con.WorkOrder
		FROM con.WorkOrder wo
		LEFT JOIN con.House h on h.PlanCode = wo.PlanCode AND h.Active = 1
		LEFT JOIN con.ProjectInHouse pInH on pInH.HouseId = h.Id AND pInH.ProjectCode = wo.ProjectCode  AND pInH.Active = 1
		WHERE ISNULL(SetToPayType,0) != 3 AND  wo.Status <= 1 AND ISNULL(wo.IsComplete , 0) != 1  AND pInH.Id IS NULL AND (wo.QCPass IS NULL AND wo.Amount IS NULL)

	    --เพิ่ม WorkOrder (งาน และ แปลง ) ตาม WorkPrice
        INSERT INTO con.[WorkOrder]
        (ProjectCode, 
         PlanCode, 
         WorkId, 
         WorkPriceId, 
         UnitId, 
         UnitName, 
         WorkUnit, 
         Price, 
         Status, 
         Active,
		 WHT,
		 VATType,
		 VAT,
		 NetPrice		 
        )
               SELECT wp.ProjectCode AS ProjectCode, 
                      h.PlanCode AS PlanCode, 
                      wp.WorkId, 
                      wp.Id AS WorkPriceId, 
                      u.Id AS UnitId, 
                      u.UnitName, 
                      wu.WorkUnitName AS WorkUnit, 
                      wp.Price AS Price, 
                      1 AS Status, 
                      1 AS Active,
					  wp.WHT,
					  wp.VATType,
					  wp.VAT,
					  wp.NetPrice
               FROM con.WorkPrice wp
                    JOIN con.Work w ON wp.WorkId = w.Id
                    JOIN con.WorkUnit wu ON wu.Id = w.WorkUnit
                    JOIN con.ProjectInHouse pInH ON pInH.ProjectCode = wp.ProjectCode
                                                    AND pInH.HouseId = wp.HouseId
                    JOIN con.House h ON h.Id = pinh.HouseId
                    JOIN con.[Plan] pn ON h.PlanCode = pn.PlanCode
                    JOIN con.Unit u ON u.PlanCode = pn.PlanCode AND u.ProjectCode = wp.projectCode
                    LEFT JOIN con.WorkOrder wo ON wo.UnitId = u.Id
                                                  AND wo.WorkId = wp.WorkId
               WHERE wp.ProjectCode = @ProjectCode AND pInH.Active = 1 AND pInH.Status = 2
                     AND wo.Id IS NULL AND h.PlanCode IS NOT NULL
               ORDER BY RIGHT(REPLICATE(N' ', 256) + u.UnitName, 256), 
                        w.Id;


			-- สร้างรายการยูนิตที่มีการปรับแผนแล้ว แต่ยังไม่ได้ทำการสร้างราคามาตรฐาน
			  INSERT INTO con.[WorkOrder]
				(ProjectCode, 
				 PlanCode, 
				 WorkId, 
				 UnitId, 
				 UnitName, 
				 WorkUnit, 
				 Price, 
				 Status, 
				 Active,
				 IsComplete		 
				)
               SELECT @ProjectCode AS ProjectCode, 
                      h.PlanCode AS PlanCode, 
                      w.Id,  
                      u.Id AS UnitId, 
                      u.UnitName, 
                      wu.WorkUnitName AS WorkUnit, 
                      0 AS Price, 
                      1 AS Status, 
                      1 AS Active,
					  1 AS IsComplete
				FROM con.Unit u 	 
				JOIN con.ProjectInPlan pp on u.PlanCode = pp.PlanCode AND u.ProjectCode = pp.ProjectCode
				JOIN con.House h on h.PlanCode = pp.PlanCode
				JOIN con.Work w on w.ProjectTypeId = h.ProjectTypeId
				JOIN con.WorkUnit wu ON wu.Id = w.WorkUnit
				JOIN con.WorkGroupMain main on main.Id = w.WorkGroupMainId
				JOIN con.ProjectConstructionUnitProgress uprogress on uprogress.UnitId = u.Id
				LEFT JOIN con.WorkOrder wo ON wo.UnitId = u.Id AND wo.WorkId = w.Id		        
			    WHERE pp.ProjectCode = @ProjectCode AND h.Active = 1  
                     AND wo.Id IS NULL AND h.PlanCode IS NOT NULL
					 AND uprogress.Progress = 3 
					 AND (uprogress.Type = 1 AND main.ControlCode = 'PCT01' OR main.ControlCode = 'PCT02')
					 AND (uprogress.Type = 2 AND main.ControlCode = 'PCT02' OR main.ControlCode = 'PCT01')
					 ORDER BY u.UnitName , w.WorkGroupMainId


					 --อัพเดท workorder ที่แล้วเสร็จ
					 UPDATE con.WorkOrder 
					 SET IsComplete = 1
					 --SELECT wo.*
					 FROM con.WorkOrder wo
					 JOIN con.Unit u ON u.Id = wo.UnitId
					 JOIN con.ProjectConstructionUnitProgress uprogress on uprogress.UnitId = u.Id
					 JOIN con.Work w on w.Id = wo.WorkId
					 JOIN con.WorkGroupMain main on main.Id = w.WorkGroupMainId
					 WHERE wo.ProjectCode = @ProjectCode  
					 AND (uprogress.Type = 1 AND main.ControlCode = 'PCT01' OR main.ControlCode = 'PCT02')
					 AND (uprogress.Type = 2 AND main.ControlCode = 'PCT02' OR main.ControlCode = 'PCT01')
					 AND (wo.IsComplete = 0 OR wo.IsComplete IS NULL) AND wo.Active = 1 and wo.Status < 9 AND uprogress.Progress = 3




              --อัพเดทแบบควบคุมหากมีการเปลี่ยนแปลง
				UPDATE con.WorkOrder 
					 SET PlanCode = u.PlanCode
					 FROM con.WorkOrder wo
					 JOIN con.Unit u ON u.Id = wo.UnitId
					 WHERE wo.ProjectCode = @ProjectCode  AND wo.PlanCode != u.PlanCode

	            --อัพเดทราคาตมราคามารตรฐาน
				UPDATE con.WorkOrder 
				SET  Price = wp.Price,
				     TotalPrice = (CASE WHEN wp.TotalPrice IS NOT NULL THEN ISNULL(wo.Amount , 1) * wp.TotalPrice ELSE NULL END),
					 WHT = (CASE WHEN wp.WHT IS NOT NULL THEN ISNULL(wo.Amount , 1) * wp.WHT ELSE wp.WHT END),
					 VAT = (CASE WHEN wp.VAT IS NOT NULL THEN ISNULL(wo.Amount , 1) * wp.VAT ELSE wp.VAT END),
					 VATType = wp.VATType,
					 NetPrice = (CASE WHEN wp.NetPrice IS NOT NULL THEN ISNULL(wo.Amount , 1) * wp.NetPrice ELSE NULL END),
					 WorkPriceId = wp.Id
				FROM con.WorkOrder wo
				JOIN con.House h on h.PlanCode = wo.PlanCode
				JOIN con.ProjectInHouse pInH on pInH.HouseId = h.Id AND pInH.ProjectCode = wo.ProjectCode
				LEFT JOIN con.WorkPrice wp on wo.WorkId = wp.WorkId AND  wp.HouseId = pinh.HouseId AND wp.ProjectCode = wo.ProjectCode
				WHERE pInH.Status = 2 AND pinh.Active = 1 AND wo.ProjectCode = @ProjectCode AND wo.Status <= 1 
				AND (ISNULL(wo.Price,0) != ISNULL(wp.Price,0) OR ISNULL(wo.NetPrice,0) != ISNULL(wp.NetPrice,0) OR ISNULL(wo.VATType,0) != ISNULL(wp.VATType,0)) AND wo.IsComplete IS NULL

				--อัพเดทหน่วยของงาน
				UPDATE con.WorkOrder 
				SET  WorkUnit = wu.WorkUnitName
				FROM con.WorkOrder wo
				JOIN con.Work w on w.Id = wo.WorkId
				JOIN con.WorkUnit wu on wu.Id = w.WorkUnit
				WHERE wo.WorkUnit != wu.WorkUnitName 

				-- อัพเดทสถานะถ้าหากแก้ไขปริมาณและ QC ให้ไม่มีค่า
				UPDATE con.WorkOrder 
				SET  Status = 0
				FROM con.WorkOrder wo
				JOIN con.Work w ON wo.WorkId = w.Id
				WHERE ((w.QCPassBeforePay = 1 AND (wo.QCPass IS NULL OR wo.QCPass = 0)) OR (w.SetAmountBeforePay = 1 AND (wo.Amount IS NULL)))
				AND wo.Status = 1
				AND wo.ProjectCode = @ProjectCode

				-- อัพเดทสถานะถ้าหากแก้ไขปริมาณและ QC ครบแล้ว
				UPDATE con.WorkOrder 
				SET  Status = 1
				FROM con.WorkOrder wo
				JOIN con.Work w ON wo.WorkId = w.Id
				WHERE ((w.QCPassBeforePay = 0 OR (wo.QCPass = 1)) AND (w.SetAmountBeforePay = 0 OR (wo.Amount IS NOT NULL)))
				AND wo.Status = 0
				AND wo.ProjectCode = @ProjectCode



				-- งานอื่นๆ
				 --เพิ่ม WorkOrder (งาน และ แปลง ) ตาม WorkPrice
				INSERT INTO con.[WorkOrder]
				(ProjectCode, 
				 PlanCode, 
				 WorkId, 
				 WorkPriceId, 
				 UnitId, 
				 UnitName, 
				 WorkUnit, 
				 Price, 
				 Status, 
				 Active,
				 SetToPayType
				)
				SELECT @ProjectCode AS ProjectCode, 
					   pp.PlanCode AS PlanCode, 
					   w.Id, 
					   NULL AS WorkPriceId, 
					   u.Id AS UnitId, 
					   u.UnitName, 
					   NULL AS WorkUnit, 
					   NULL AS Price, 
					   1 AS Status, 
					   1 AS Active,
					   3 -- Other Type
				FROM con.Unit u 	 
				JOIN con.ProjectInPlan pp on u.PlanCode = pp.PlanCode AND u.ProjectCode = pp.ProjectCode
				JOIN con.House h on h.PlanCode = pp.PlanCode
				JOIN con.Work w on w.ProjectTypeId = h.ProjectTypeId
				LEFT JOIN con.WorkOrder wo ON wo.UnitId = u.Id
                                                  AND wo.WorkId = w.Id
				WHERE pp.ProjectCode = @ProjectCode AND h.Active = 1  AND w.IsOtherWork = 1
                     AND wo.Id IS NULL AND h.PlanCode IS NOT NULL
                ORDER BY RIGHT(REPLICATE(N' ', 256) + u.UnitName, 256),w.Id;




				--อัพเดทงานอื่นๆ
				UPDATE con.WorkOrder
				SET 
					  TotalPrice = t1.TotalPrice,
					  NetPrice = t1.NetPrice
				FROM con.WorkOrder t
					 INNER JOIN
				(
					SELECT wo.Id, 
					SUM(CASE WHEN wd.Active = 1 AND wd.Id IS NOT NULL THEN wd.TotalPrice ELSE 0 END) TotalPrice,
					SUM(CASE WHEN wd.Active = 1 AND wd.Id IS NOT NULL THEN wd.NetPrice ELSE 0 END) NetPrice
					FROM con.WorkOrder wo
						 LEFT JOIN con.WorkOrderOtherDetail wd ON wo.Id = wd.WorkOrderId
					WHERE wd.TotalPrice > 0 AND wo.ProjectCode = @ProjectCode AND wo.SetToPayType = 3
					GROUP BY wo.id
				) t1 ON t.Id = t1.Id;


			--------------
			
				UPDATE con.WorkOrder
				SET 
					WaitSetToPayTotalPrice = t1.TotalPrice
				FROM con.WorkOrder t
					 LEFT JOIN
				(
					SELECT wo.Id,
					SUM(CASE WHEN wd.Active = 1 AND wd.Id IS NOT NULL THEN wd.NetPrice ELSE 0 END) TotalPrice 
					FROM con.WorkOrder wo
						 LEFT JOIN con.WorkOrderOtherDetail wd ON wo.Id = wd.WorkOrderId
					WHERE wd.TotalPrice > 0 AND wo.ProjectCode = @ProjectCode AND wd.Status <= 3
					GROUP BY wo.id 
				) t1 ON t.Id = t1.Id
				WHERE SetToPayType = 3

				UPDATE con.WorkOrder
				SET 
					PayContractorTotalPrice = t1.TotalPrice
				FROM con.WorkOrder t
					 LEFT JOIN
				(
					SELECT wo.Id,
					SUM(CASE WHEN wd.Active = 1 AND wd.Id IS NOT NULL THEN wd.NetPrice  ELSE 0 END) TotalPrice 
					FROM con.WorkOrder wo
						 LEFT JOIN con.WorkOrderOtherDetail wd ON wo.Id = wd.WorkOrderId
					WHERE wd.TotalPrice > 0 AND wo.ProjectCode = @ProjectCode AND wd.Status >= 4 AND wd.Status != 8 AND wd.Status < 9
					GROUP BY wo.id 
				) t1 ON t.Id = t1.Id
				WHERE SetToPayType = 3 

				UPDATE con.WorkOrder
				SET 
					PaidTotalPrice = t1.TotalPrice
				FROM con.WorkOrder t
					 LEFT JOIN
				(
					SELECT wo.Id,
					SUM(CASE WHEN wd.Active = 1 AND wd.Id IS NOT NULL THEN wd.NetPrice ELSE 0 END) TotalPrice 
					FROM con.WorkOrder wo
						 LEFT JOIN con.WorkOrderOtherDetail wd ON wo.Id = wd.WorkOrderId
					WHERE wd.TotalPrice > 0 AND wo.ProjectCode = @ProjectCode AND wd.Status = 9
					GROUP BY wo.id 
				) t1 ON t.Id = t1.Id
				WHERE SetToPayType = 3 


				UPDATE con.WorkOrder
				SET Status = Q1.WorkOrderOtherDetailStatus
				FROM (SELECT MIN(wd.Status) as WorkOrderOtherDetailStatus, wo.Id as WorkOrderId
				FROM con.WorkOrder wo
				JOIN con.[WorkOrderOtherDetail] wd on wd.WorkOrderId = wo.Id
				WHERE wo.SetToPayType = 3  AND wo.ProjectCode = @ProjectCode
				GROUP BY wo.Id) Q1
				WHERE Id = Q1.WorkOrderId AND Status != Q1.WorkOrderOtherDetailStatus
 END;

GO
