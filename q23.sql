
	-------------------------------------------- Query 23 -----------------------------------------------------------------
	Select OwnerName , count(OwnerName) AS TotalPlanesOwned from Owner 
	group by OwnerName
	order by  TotalPlanesOwned Desc;

	-----------------------------------------------------------------------------------------------------------------------
