
	------------------------------------------Query 8-----------------------------------------------------------------

	   select  OwnerName,Owns.pDate ,Phonenumber from Owner inner join Owns 
	   on  Owner.OwnerId = Owns.BuyerId where  DATEADD(month, -1, GETDATE())  < pdate


   ---------------------------------------------------------------------------------------------------------------------
