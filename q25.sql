	--------------------------------------------Query 25 ----------------------------------------------------------------

	--1) This query will give us the desired location of the hanger
	Select Hanger.Number FROM Hanger
	WHERE Hanger.Location = 'Lahore' 


	--2) find pilot who does not have good eyesight
	select Person.pname,pilot.p_ssn from pilot inner join Person
	on pilot.p_ssn = Person.ssn WHERE pilot.Restrictions='Daytime flying only'

	--3) As we dont have the Owners Residence city by this query we can extract a owners address for the owner who lives in any city
	select Owner.OwnerName , Owner.ownerAddress as OwnerCity  from Owner
	where Owner.ownerAddress like '%Rawalpindi%'

	--4)query to find seller name and Sell date of each plane bought from a corporation.
	select ow.Airplane_Reg_No,ow.OwnerName,o.pDate as Sell_date from owns o 
	join  owner ow on ow.OwnerId=o.sellerId
	where o.OwnerShipStausForSeller='corporation'

	--------------------------------------------------------------------------------------------------------------------
