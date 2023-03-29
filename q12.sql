	---------------------------------------- Query 12 -------------------------------------------------------------

   select p.Model, avg(s.HoursTaken) as Maintenance_hours
   from PLANE_TYPE p join airplane a on a.OF_TYPE=p.Model join servicee s on s.regnum=a.Reg#
   group by p.Model

   -----------------------------------------------------------------------------------------------------------------
