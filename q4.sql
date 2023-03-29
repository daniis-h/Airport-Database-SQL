	------------------------------------------Query 4-----------------------------------------------------------------
	

	select OwnerName , Owner.ownerAddress from Owner inner join Owns on Owner.OwnerId = Owns.BuyerId
	inner join AIRPLANE on Owner.Airplane_Reg_No = AIRPLANE.Reg#
	inner join PLANE_TYPE on AIRPLANE.OF_TYPE = PLANE_TYPE.Model Where Capacity > 200 AND Owns.OwnerShipStausForBuyer = 'corporation'

	
	
	--	Inner join applied on three tables
	------------------------------------------------------------------------------------------------------------------