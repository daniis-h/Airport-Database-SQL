	------------------------------------------Query 7-----------------------------------------------------------------
	select  a.Reg#,a.OF_TYPE, s.ServiceDate from AIRPLANE a inner join  SERVICEE s on s.regnum=a.Reg#
	 where  DATEADD(day, -1, GETDATE())  > s.ServiceDate 

	------------------------------------------------------------------------------------------------------------------
