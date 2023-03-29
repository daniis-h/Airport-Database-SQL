
	------------------------------------------Query 14-----------------------------------------------------------------
	
	select distinct o.OwnerName,o.Phonenumber from owner o join owns ow on ow.BuyerId=o.OwnerId
	join Hanger h on o.Hanger=h.Number
	where ow.OwnerShipStausForSeller='corporation' and h.Location='Lahore'


	--------------------------------------------------------------------------------------------------------------------


