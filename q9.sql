  ------------------------------------------Query 9-----------------------------------------------------------------

	 
	SELECT Person.pname , Pilot_ssn , COUNT(Pilot_ssn) AS TotalPlanesAPilotCanFly
	FROM FLIES
	inner join Person on Person.ssn = Flies.Pilot_ssn
	GROUP BY FLIES.Pilot_ssn , Person.pname ;


	---------------------------------------------------------------------------------------------------------------------
    