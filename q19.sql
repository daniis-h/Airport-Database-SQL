------------------------------------------Query 19-----------------------------------------------------------------
	
	SELECT Hanger.Number, COUNT(*) AS TotalPlanes
	FROM Hanger
	JOIN AIRPLANE ON Hanger.Number = AIRPLANE.STORED_IN
	GROUP BY Hanger.Number;

	---------------------------------------------------------------------------------------------------------------------
    