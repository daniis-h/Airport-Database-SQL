	------------------------------------------------------ Query 20 ------------------------------------------------------   
    

	select PLANE_TYPE.Model , count(PLANE_TYPE.Model) as TotalPlanes
	from PLANE_TYPE
	join AIRPLANE on AIRPLANE.OF_TYPE = PLANE_TYPE.Model
	group by PLANE_TYPE.Model
	Order by TotalPlanes Desc ;




	----------------------------------------------------------------------------------------------------------------------
