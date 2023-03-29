	----------------------------- Query 16 ----------------------------------------------------------------------

	select Person.pname , sum(SERVICEE.HoursTaken) as Hourstaken, owner.OwnerName as organization from Person inner join SERVICEE
	on SERVICEE.EmpID = Person.ssn
	join Owner on owner.Airplane_Reg_No=SERVICEE.regnum
	join owns on owns.BuyerId=owner.OwnerId 
	where owns.OwnerShipStausForBuyer='corporation'
	group by Person.pname,owner.OwnerName
	order by Hourstaken


	---------------------------------------------------------------------------------------------------------
