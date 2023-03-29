	---------------------------------------Query 11---------------------------------------------------------------

	select Owner.OwnerName , Owns.BuyerId , count(Owns.BuyerId) AS TOTALPLANESOWNED
	from Owns
	inner join Owner on Owner.OwnerId = Owns.BuyerId
	where Owns.OwnerShipStausForBuyer = 'corporation'
	group by Owns.BuyerId , Owner.OwnerName
	ORDER BY TOTALPLANESOWNED DESC;

	---------------------------------------------------------------------------------------------------------------
