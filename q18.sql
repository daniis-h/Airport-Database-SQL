	--------------------------------------- Query 18 ---------------------------------------------------------

	select o.OwnerName, o.ownerAddress from owner o
	join owns ow on ow.BuyerId=o.OwnerId
	join AIRPLANE a on a.Reg#=o.Airplane_Reg_No
	join PLANE_TYPE p on p.Model=a.OF_TYPE
	where ow.OwnerShipStausForSeller='corporation'
	and p.Model in 
			(Select AIRPLANE.OF_TYPE FROM AIRPLANE 
			 INNER JOIN Owner
			 ON OWNER.Airplane_Reg_No = Airplane.Reg#
			INNER JOIN Owns on Owner.OwnerId = Owns.BuyerId
			where Owner.OwnerId = ow.sellerId AND Owns.pDate >= DATEADD(month, -1, GETDATE()))

	----------------------------------------------------------------------------------------------------------------
