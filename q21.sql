	------------------------------------------------------ Query 21 ------------------------------------------------------


	select AIRPLANE.OF_TYPE, SERVICEE.regnum , count(SERVICEE.regnum) noOfTimesServiceProvided
	from SERVICEE 
	join AIRPLANE on AIRPLANE.Reg# = SERVICEE.regnum
	group by SERVICEE.regnum , AIRPLANE.OF_TYPE
	order by noOfTimesServiceProvided DESC ;
	
	-----------------------------------------------------------------------------------------------------------------------
	