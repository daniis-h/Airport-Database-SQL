   ------------------------------------------Query 13-----------------------------------------------------------------
	select distinct owner.OwnerName from Owner join SERVICEE s on s.regnum=owner.Airplane_Reg_No
	join  WORKS_ON w1 on w1.emp_ssn=s.EmpID
	where not(s.regnum=w1.AirplaneRegNo)
		
	
	-------------------------------------------------------------------------------------------------------------------

