Project Details:
This is a database assignment for a corporation that sells and maintains airplanes. The project
contains a SQL script that creates a database and tables, and populates them with sample data. 
It also includes several SQL queries that can be used to retrieve information from the database.


Get started with the project:
First create all the tables and insert data in them provided in q2.sql, then run quries present in
sql files. Use MS sql  for this project.


ERD explination:
Basically, this ERD diagram represents a schema of a Small Private Airport Database. In this ERD
we have created the following Entities and Relationships:
-Owner
-PLANE_TYPE
-Owns (Relationship)
-Person
-Pilot
-Employee
-Works On (Relationship)
-Airplane
-Flies (Relationship)
-Service
-Hanger
-Plane Type

Data Base is based on the ERD provided linked by primary and foreign key where necessary.
All the relations (one to many ; one to one etc.,) between the entities are well placed and have 
confident reasons why they are there. In Owner Entity and Relationship instead of creating a generalized
class for both owner (Individual or Co-corporation) we have created a NOT NULL Attribute which tell us
whether the owner is Individual or Co-corporation in this regard.


Quries:
3)Registration numbers of airplanes that have never undergone maintenance. 
   -this is a query nested query, selecting common regnum from AIRPLANE and SERVICEE table.

4)Find the names and addresses of corporations that own airplanes with capacity greater than 200.
  -This query joins 4 tables (AIRPLANE, PLANE_TYPE, Owner, Owns) for name and address owner & owns
   tables are used and to determine capacity ariplane & plane_type tables are used.

5)Average salary of employees who work the night shift (between 10 PM and 6 AM)
  -This query uses EMPLOYEE table and provides necessary information

6)Top 5 employees with the highest total number of maintenance hours worked
  -Select employes from SERVICE table on basis on workhours

7)Names and registration numbers of airplanes that have undergone maintenance in the past week. 
  -Joins AIRPLANE and SERVICEE table and fetch data according to dynamic date

8)Names and phone numbers of all owners who have purchased a plane in the past month. 
  -Joins Owner and Owns table and fetch data according to dynamic date.

9)Number of airplanes each pilot is authorized to fly.
  -Joins Flies and Person table and fetch data on pilot ssn and regnum of authorized plane.

10)location and capacity of the hangar with the most available space. 
  -Fetch data from hanger table by sorting data and selecting top value.

11)Number of planes owned by each corporation, sorted in descending order by number of planes.
  -Joins Owner and Owns table then count number of plane (grouped by) buyerID.

12)Average number of maintenance hours per plane, broken down by plane type.
  -Joins airplane and plane_type table and find avg of worktime group by each plane type

13) Names of owners who have purchased a plane that requires maintenance work from an
 employee who is not qualified to work on that type of plane
  -Joins 3 table (owner, service and works_on) and and fetch data of airplane whoes service
  planes and plane authorized to work does not matches.

14)Names and phone numbers of owners who have purchased a plane from a corporation that 
   has a hangar in the same location as the owner. 
  -Some cooperation may owns membership of some hangers. This query joins 3 table (owner, owns, hanger)
  and disply data on basis of previous owner if hanger location matches.

15)Names of pilots who are qualified to fly a plane that is currently undergoing maintenance. 
  -Joins Person and Flies table, then fetch data by nesting another query to find planes which are undergoing
  maintance. Then lists the pilots who are eligble to fly those planes.

16)Names of employees who have worked on planes owned by a particular corporation, sorted by the total
 number of maintenance hours worked
  -Join 4 tables (person, service, owner, owns) and find the sum of worked hours of plane owned by corporation
  grouped by emplyees

17)Names and registration numbers of airplanes that have never been owned by a corporation or undergone 
  maintenance work from an employee who works the day shift. 
  - join owner, owns and servicee table, then fetch data of those planes which are not owned by coporation
  or never been maintained by employes whose shiftt equal to 'night'

18)Names and addresses of owners who have purchased a plane from a corporation that has also purchased a 
plane of the same type in the past month. 
  -Joins 4 tables(owner, owns, airplane, plane_type) and sees if the seller status is coporation then nest another
  query which again joins owner, own and airplane table to dynamicaly find the plane which is bought in last moth by same 
  coporation.

19)Total number of planes stored in each hangar.
  -Joins airplane and hanger table and count planes grouped by hangers.

20)Total number of planes of each plane type. 
  -Joins airplane and plane_type table and count planes of same type grouped by plane_type.

21)Total number of services performed on each plane.
  -Joins servicee and airpalne table and count services on each plane group by plane regnum.

22)Average salary of employees in each shift.
  -Fatch avg salary from employee grouped by shiftt

23)Total number of planes each owner owns
  -Count owners in OWNER table group by owner names.

24)Number of planes each pilot is authorized to fly. 
  -Includes flies right join pilot to list all pilot, and count planes grouped by distinct owners

25) 4 Queries 
1. give us the desired location of the hanger
-This query will find location of any hanger present at a certain location. This query fetches data from hanger table.

2.pilot who does not have good eyesight.
-This query will find the pilots who have some weekpoints, like low eyesight. Query fetches data from pilot table
which is subclass of person.

3.owners address for the owner who lives in any city
-This query displays owner names who belongs to specific city from Owner table.

4.seller name and Sell date of each plane
- This query will find organization which have sold planes. It joins 2 tables i.e
owner and owns and then find data on seller status.



Contribution:
-Danish Javaid	21i-2474
-Abdullah bin Zahid	21i-1388