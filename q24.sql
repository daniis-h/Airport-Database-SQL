    ------------------------------------------Query 24-----------------------------------------------------------------
	
	select pr.pname,count(f.AirplaneRegNo) as Authorized_planes from FLIES f right join pilot p on p.p_ssn=f.Pilot_ssn
	join person pr on p.p_ssn=pr.ssn
	group by pr.pname 
	---------------------------------------------------------------------------------------------------------------------
