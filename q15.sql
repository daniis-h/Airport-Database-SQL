  ------------------------------- Query 15 -----------------------------------------------------------------------

    Select  Person.pname, person.ssn from Person inner join FLIES on Person.ssn = flies.Pilot_ssn
	where FLIES.AirplaneRegNo in (  select regnum from SERVICEE where SERVICEE.ServiceDate = CAST(GETDATE() AS DATE) )


	---------------------------------------------------------------------------------------------------------------
