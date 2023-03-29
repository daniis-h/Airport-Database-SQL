-------------------------------------Query 17 -----------------------------------------------------------
	
	select distinct a.reg#, a.OF_TYPE from AIRPLANE a join Owner o on o.Airplane_Reg_No=a.Reg# 
	join owns ow on ow.BuyerId=o.OwnerId 
	join SERVICEE s on s.regnum=a.Reg# join EMPLOYEE e on e.e_ssn=s.EmpID
	where (ow.OwnerShipStausForBuyer <>'corporation') or (e.shiftt='Night')

	----------------------------------------------------------------------------------------------------------
