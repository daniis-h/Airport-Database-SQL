
Create Table AIRPLANE(
Reg# Numeric(5) Primary key ,
OF_TYPE Varchar(20) foreign key References PLANE_TYPE(Model)  ,
STORED_IN Varchar(20) ,
);

--DROP TABLE PLANE_TYPE;

Create Table PLANE_TYPE(
Model Varchar(20) Primary key ,
Capacity Numeric(3),
Weight Numeric (5) ,
);

INSERT INTO AIRPLANE (Reg#,OF_TYPE,STORED_IN) VALUES
(11223, 'Boeing 774', 'Hangar A2'),
(24531, 'Airbus A30', 'Hangar B32'),
(35467, 'Embraer E0', 'Hangar C43'),
(48902, 'Boeing 747', 'Hangar D434'),
(53211, 'Airbus 380', 'Hangar A2'),
(62133, 'Boeing 637', 'Hangar B32'),
(74566, 'Embraer 17', 'Hangar C45'),
(81122, 'Airbus A0', 'Hangar D434'),
(93344, 'Boeing 787', 'Hangar A2'),
(10235, 'Airbus 319', 'Hangar B32'),
(11467, 'Embraer E5', 'Hangar C43'),
(12332, 'Boeing 767', 'Hangar D544'),
(13556, 'Airbus A1', 'Hangar A33'),
(14789, 'Boeing 72', 'Hangar B222'),
(15356, 'Embraer E4', 'Hangar C43'),
(16234, 'Airbus A01', 'Hangar D434'),
(17567, 'Boeing 717', 'Hangar A2'),
(18321, 'Airbus A21', 'Hangar B33'),
(19976, 'Embraer E9', 'Hangar C43') ,
(19956, 'Embraer E3', 'Hangar C943');
INSERT INTO AIRPLANE (Reg#,OF_TYPE,STORED_IN) VALUES (12256, 'Embraer E3', 'Hangar C943');
INSERT INTO AIRPLANE (Reg#,OF_TYPE,STORED_IN) VALUES (12269, 'Embraer E3', 'Hangar C943');

select AIRPLANE.Reg# from AIRPLANE 

--delete  from AIRPLANE where Reg# > 0 ;

--select * from AIRPLANE where OF_TYPE like '%Airbus%' ;

--select OF_TYPE from AIRPLANE  ;

--select Reg# , STORED_IN from AIRPLANE where OF_TYPE = 'Boeing 777' ;

--delete  from PLANE_TYPE where Weight > 0 ;


INSERT INTO PLANE_TYPE (Model, Capacity, Weight)
VALUES
  ('Boeing 774', 250, 12000),
  ('Airbus A30', 180, 9500),
  ('Embraer E0', 110, 4800),
  ('Boeing 747', 524, 44800),
  ('Airbus 380', 853, 57500),
  ('Boeing 637', 375, 34600),
  ('Embraer 17', 78, 3800),
  ('Airbus A0', 335, 24200),
  ('Boeing 787', 290, 22700),
  ('Airbus 319', 124, 6650),
  ('Embraer E5', 50, 1600),
  ('Boeing 767', 375, 34600),
  ('Airbus A1', 236, 17700),
  ('Boeing 72', 440, 35150),
  ('Embraer E4', 124, 5150),
  ('Airbus A01', 440, 26800),
  ('Boeing 717', 189, 11500),
  ('Airbus A21', 180, 9500),
  ('Embraer E9', 122, 5200),
  ('Embraer E3', 110, 4800);

  --select * from PLANE_TYPE ;
   DROP TABLE Hanger;

   --select Distinct stored_in from AIRPLANE ; 

   drop table Hanger ;

Create Table Hanger(
Number Varchar(20) Primary key,
capacity Numeric (2),
Location Varchar (20)
);


Insert into Hanger ( Number , Capacity , Location ) Values
		('Hangar A2', 5, 'Lahore') ,
		('Hangar A33', 8, 'Karachi'),
		('Hangar B222', 10, 'Islamabad'),
		('Hangar B32', 3, 'Peshawar'),
		('Hangar B33', 4, 'Quetta'),
		('Hangar C43', 6, 'Lahore'),
		('Hangar C45', 7, 'Faisalabad'),
		('Hangar C943', 2, 'Lahore'),
		('Hangar D434', 9, 'Gujranwala'),
		('Hangar D544', 1, 'Sialkot');


		Drop Table Owner ;

Create Table Owner(
Airplane_Reg_No Numeric(5) Foreign Key References Airplane(Reg#),
OwnerId Numeric(5) Primary key,
OwnerName VARCHAR(20) ,
ownerAddress varchar (50) ,
Phonenumber numeric (13),
Hanger Varchar(20) Foreign Key References Hanger(Number)
) ;


INSERT INTO Owner (Airplane_Reg_No, OwnerId, OwnerName, ownerAddress, Phonenumber,Hanger) VALUES
    (10235, 13214, 'Ali', 'aff road', 1243445654345, NULL),
    (11223, 1324, 'Ramis', 'agf road', 12434456544, NULL),
    (11467, 12232, 'Fatima', '322 road', 1765445543345, NULL),
    (12332, 36577, 'Aisha', '454 road', 1243765654345, NULL),
    (24531, 3212, 'Crescent Corporation', '1-A, Main Blvd, Lahore, Pakistan', 1234567012,'Hangar A2'),
    (35467, 13213, 'Pak Wheels', '22-B, DHA Phase 5, Karachi, Pakistan', 2345678903,NULL),
    (48902, 24314, 'Star Tech', '3-C, Canal View, Faisalabad, Pakistan', 3456789234,NULL),
    (53211, 46615, 'Blue Band', '5-E, Bahria Town, Islamabad, Pakistan', 5678923456,NULL),
    (62133, 54616, 'Amanat Inc.', '6-F, Clifton Block 9, Karachi, Pakistan', 6901234567,NULL),
    (74566, 77617, 'Alhuda Foundation', '4-D, Gulberg III, Lahore, Pakistan', 4589012345,'Hangar C43'),
    (81122, 65718, 'Softronix', 'House No. 1, Street No. 2, Gulshan-e-Iqbal', 1256789012,'Hangar C45'),
    (93344, 65719, 'Islamic Relief', 'House No. 12, Street No. 6, F-7/3, Pakistan', 4567012345,NULL),
    (13556, 23434, 'Hassan', '7-G, PIA Housing Society, Lahore, Pakistan', 7890123478,NULL),
    (14789, 42345, 'Farhan', '8-H, Satellite Town, Rawalpindi, Pakistan', 8901234789,'Hangar D434'),
    (15356, 34246, 'Musa', '9-I, Model Colony, Lahore, Pakistan', 9012345690,NULL),
    (16234, 32447, 'Haris', '10-J, Sialkot Cantt, Sialkot, Pakistan', 12345890123,NULL),
    (17567, 34438, 'Nabeel', '11-K, F-8, Islamabad, Pakistan', 23456789014,NULL),
    (18321, 35459, 'Junaid', '12-L, Cavalry Ground, Lahore, Pakistan', 56789012345,NULL),
    (19956, 34510, 'Aqib', 'Plot No. 7, Street No. 9, Bahria Town, Pakistan', 9012567890,NULL),
    (19976, 66511, 'Ahmed', '345334 road', 126543456345,NULL);

	INSERT INTO Owner (Airplane_Reg_No, OwnerId, OwnerName, ownerAddress, Phonenumber,Hanger) VALUES
    (12256, 65720, 'Softronix', 'House No. 1, Street No. 2, Gulshan-e-Iqbal', 1256789012,NULL);

	INSERT INTO Owner (Airplane_Reg_No, OwnerId, OwnerName, ownerAddress, Phonenumber,Hanger) VALUES
	(12269, 77517, 'Alhuda Foundation', '4-D, Gulberg III, Lahore, Pakistan', 4589012345,NULL);

	

	drop table Owns;
     
	 create table Owns(
	 BuyerId Numeric(5) Foreign Key References Owner(OwnerId),
	 sellerId Numeric(5) Foreign Key References Owner(OwnerId),
	 OwnerShipStausForBuyer VARCHAR(20) NOT NULL CHECK (OwnerShipStausForBuyer IN ('individual', 'corporation')), 
     pDate DATE ,
	 OwnerShipStausForSeller VARCHAR(20),
	);


	INSERT INTO Owns (BuyerId, OwnerShipStausForBuyer, pDate ,sellerId , OwnerShipStausForSeller )  VALUES 
	   (1324, 'individual', '2000-01-01' , Null, 'corporation'  ),
       (3212, 'corporation', '2022-12-01',77617, 'corporation'),
       (12232, 'individual', '2022-02-01',13214, 'individual'),
       (13213, 'corporation', '2023-01-01',32447, 'individual'),
       (13214, 'individual', '2022-01-01',24314, 'corporation'),
       (23434, 'individual', '2022-04-01',46615, 'corporation'),
       (24314, 'corporation', '2023-02-01',36577, 'individual'),
       (32447, 'individual', '2022-07-01',77617, 'corporation'),
       (34246, 'individual', '2022-06-01',34438, 'individual'),
       (34438, 'individual', '2022-08-01',46615, 'corporation'),
       (34510, 'individual', '2022-10-01',77617, 'corporation'),
       (35459, 'individual', '2022-09-01',36577, 'individual'),
       (36577, 'individual', '2022-03-01',77617, 'corporation'),
       (42345, 'individual', '2022-05-01',77617, 'corporation'),
       (46615, 'corporation', '2023-03-01',54616, 'corporation'),
       (54616, 'corporation', '2023-01-10',65719, 'corporation'),
       (65718, 'corporation', '2023-03-12',65719, 'corporation'),
       (65719, 'corporation', '2023-03-11',66511, 'individual'),
       (65720, 'corporation', '2023-03-22',77617, 'corporation'),
       (66511, 'individual', '2022-11-01',46615, 'corporation'),
       (77617, 'corporation', '2023-2-27',65720, 'corporation');
       INSERT INTO Owns (BuyerId, OwnerShipStausForBuyer, pDate ,sellerId , OwnerShipStausForSeller )  VALUES
	   (65720, 'corporation', '2021-7-27',77617, 'corporation');
       
  	   INSERT INTO Owns (BuyerId, OwnerShipStausForBuyer, pDate ,sellerId , OwnerShipStausForSeller )  VALUES 
	    (77617, 'corporation', '2023-3-25',77617, 'corporation');


	   
		create table Person(
		ssn numeric(5) primary key,
		pname VARCHAR(20) ,
		paddress varchar (50) ,
		phone numeric (13),
		);


	INSERT INTO Person (ssn, pname, paddress, phone)
	VALUES 
  (1213, 'Aisha', '123 Main St, Karachi, Pakistan', 923001234567),
  (4322, 'Fatima', '456 Elm St, Lahore, Pakistan', 923001234568),
  (3454, 'Muhammad', '789 Oak St, Islamabad, Pakistan', 923001234569),
  (5454, 'Zainab', '567 Pine St, Peshawar, Pakistan', 923001234570),
  (5455, 'Ali', '321 Cedar St, Quetta, Pakistan', 923001234571),
  (6345, 'Sara', '654 Maple St, Rawalpindi, Pakistan', 923001234572),
  (7645, 'Hassan', '987 Birch St, Lahore, Pakistan', 923001234573),
  (8432, 'Zahra', '345 Oak St, Islamabad, Pakistan', 923001234574),
  (9234, 'Ahmed', '678 Pine St, Karachi, Pakistan', 923001234575),
  (1024, 'Ayesha', '432 Cedar St, Peshawar, Pakistan', 923001234576),
  (1142, 'Faisal', '765 Maple St, Rawalpindi, Pakistan', 923001234577),
  (1234, 'Sadia', '987 Birch St, Quetta, Pakistan', 923001234578),
  (1332, 'Hamza', '654 Oak St, Lahore, Pakistan', 923001234579),
  (1432, 'Mariam', '321 Pine St, Karachi, Pakistan', 923001234580),
  (1531, 'Omar', '567 Cedar St, Islamabad, Pakistan', 923001234581),
  (1632, 'Nida', '789 Maple St, Peshawar, Pakistan', 923001234582),
  (1734, 'Usman', '456 Birch St, Rawalpindi, Pakistan', 923001234583),
  (1823, 'Asma', '234 Oak St, Lahore, Pakistan', 923001234584),
  (1921, 'Khalid', '876 Pine St, Karachi, Pakistan', 923001234585),
  (2033, 'Saima', '543 Cedar St, Islamabad, Pakistan', 923001234586);
  INSERT INTO Person (ssn, pname, paddress, phone)
	VALUES 
	(3033, 'Danish', 'Ali Road, Pakistan', 923001299986);

  select e_ssn from EMPLOYEE ;
  select Reg# from Airplane ;

  drop table pilot

  create table pilot(
  p_ssn numeric(5) Foreign Key References Person(ssn),
  Lic_num INT Primary key,
  Restrictions VARCHAR(50),
  );

  INSERT INTO pilot (p_ssn, Lic_num, Restrictions)
  VALUES
  (1024, 20057, 'Visual Flight Rules only'),
  (1142, 20058, 'Instrument rating required'),
  (1213, 20059, 'Daytime flying only'),
  (1234, 20060, 'Restricted to single-engine aircraft'),
  (1332, 20061, 'Nighttime flying prohibited'),
  (1432, 20062, 'Limited to flying within 50 miles of home airport'),
  (1531, 20063, 'Restricted to flying helicopters only'),
  (1632, 20064, 'Must fly with a co-pilot at all times');
  INSERT INTO pilot (p_ssn, Lic_num, Restrictions)
  VALUES
  (3033, 20065, 'Low Eye Sight')
  

  Drop TABLE EMPLOYEE ;

  CREATE TABLE EMPLOYEE (
  e_ssn numeric(5) Foreign Key References Person(ssn),
  shiftt VARCHAR(30) NOT NULL CHECK ( shiftt IN ('Day', 'Night')), 
  shiftt_Timming_Start Varchar(20),
  shiftt_Timming_End Varchar(20),
  salary numeric(7),
  );

  INSERT INTO EMPLOYEE (e_ssn, shiftt, shiftt_Timming_Start, shiftt_Timming_End, salary)
  VALUES
  (1734, 'Day', '08:00 AM', '06:00 PM', 15000),
  (1823, 'Day', '09:00 AM', '05:00 PM', 18000),
  (1921, 'Night', '10:00 PM', '06:00 AM', 20000),
  (2033, 'Night', '11:00 PM', '07:00 AM', 22000),
  (3454, 'Day', '07:00 AM', '03:00 PM', 12000),
  (4322, 'Day', '10:00 AM', '06:00 PM', 17000),
  (5454, 'Night', '08:00 PM', '04:00 AM', 25000),
  (5455, 'Night', '09:00 PM', '05:00 AM', 28000),
  (6345, 'Day', '06:00 AM', '04:00 PM', 14000),
  (7645, 'Night', '12:00 AM', '08:00 AM', 19000),
  (8432, 'Day', '08:00 AM', '05:00 PM', 16000),
  (9234, 'Night', '10:00 PM', '06:00 AM', 23000);


  


 
  CREATE TABLE FLIES (   
    Pilot_ssn numeric(5) foreign key References Person(ssn) ,
    AirplaneRegNo Numeric(5) foreign key References Airplane(Reg#) ,
);

INSERT INTO FLIES (Pilot_ssn, AirplaneRegNo) VALUES
       (1024, 10235), 
	   (1142, 11223),
       (1213, 11467), 
	   (1234, 12256),
	   (1332, 12332),
       (1432, 13556), 
	   (1531, 14789), 
	   (1632, 15356),
	   (1632, 16234),
	   (1332, 17567),
       (1234, 18321),
	   (1142, 19956), 
	   (1213, 19976), 
	   (1432, 24531),
	   (1531, 35467);

	   INSERT INTO FLIES (Pilot_ssn, AirplaneRegNo) VALUES
	   (3033 ,48902);









   CREATE TABLE WORKS_ON (
    emp_ssn Numeric(5) foreign key References Person(ssn) ,
    AirplaneRegNo Numeric(5) foreign key References Airplane(Reg#) ,

);

	INSERT INTO WORKS_ON (emp_ssn, AirplaneRegNo) VALUES
		(1734, 10235), 
		(1823, 11223),
		(1921, 11467), 
		(2033, 12256),
		(3454, 12332),
        (4322, 13556),
		(5454, 14789),
		(5455, 15356),
		(6345, 16234),
		(7645, 17567),
        (8432, 18321), 
		(9234, 19956), 
		(1734, 19976), 
		(1823, 24531),
		(1921, 35467),
        (2033, 48902),
	    (3454, 53211),
		(4322, 62133), 
		(5454, 74566), 
		(5455, 81122);

		drop table SERVICEE ;
	CREATE TABLE SERVICEE (
	regnum Numeric(5) foreign key References Airplane(Reg#) ,
    EmpID Numeric(5) foreign key References Person(ssn) ,
    ServiceDate DATE NOT NULL,
    HoursTaken INT NOT NULL,
    WorkCode VARCHAR(50) NOT NULL,
);

  select PLANE_TYPE.Model , AVG(HoursTaken) from SERVICEE
  inner join AIRPLANE on SERVICEE.regnum = AIRPLANE.Reg#
  inner join PLANE_TYPE on AIRPLANE.OF_TYPE = PLANE_TYPE.Model


   


	select AIRPLANE.Reg# from AIRPLANE 
	where AIRPLANE.OF_TYPE = 'Embraer E3'  
	
  INSERT INTO SERVICEE (regnum, EmpID, ServiceDate, HoursTaken, WorkCode) VALUES 
  (10235, 1823, '2023-03-25', 2, 'cleaning'),
  (11223, 1734, '2023-03-25', 3, 'maintenance'),
  (11467, 1921, '2023-03-26', 4, 'repair'),
  (12256, 2033, '2023-03-26', 2, 'cleaning'),
  (12332, 3454, '2023-03-27', 5, 'inspection'),
  (13556, 4322, '2023-03-27', 1, 'testing'),
  (14789, 5454, '2023-03-28', 3, 'maintenance'),
  (15356, 5455, '2023-03-28', 2, 'cleaning'),
  (16234, 6345, '2023-03-29', 4, 'repair'),
  (17567, 7645, '2023-03-30', 1, 'testing'),
  (18321, 8432, '2023-03-30', 2, 'cleaning'),
  (19956, 9234, '2023-03-31', 3, 'maintenance');
  INSERT INTO SERVICEE (regnum, EmpID, ServiceDate, HoursTaken, WorkCode) VALUES
  (19956, 8432, '2023-03-31', 3, 'maintenance');
  INSERT INTO SERVICEE (regnum, EmpID, ServiceDate, HoursTaken, WorkCode) VALUES
  (19956, 4322, '2023-03-31', 10, 'maintenance');

  INSERT INTO SERVICEE (regnum, EmpID, ServiceDate, HoursTaken, WorkCode) VALUES
  (48902, 2033, '2023-03-31', 12, 'maintenance');

  INSERT INTO SERVICEE (regnum, EmpID, ServiceDate, HoursTaken, WorkCode) VALUES
  (24531, 8432, '2023-03-31', 11, 'maintenance');

  INSERT INTO SERVICEE (regnum, EmpID, ServiceDate, HoursTaken, WorkCode) VALUES
  (93344, 9234, '2023-03-31', 5 , 'maintenance');

  INSERT INTO SERVICEE (regnum, EmpID, ServiceDate, HoursTaken, WorkCode) VALUES
  (93344, 9234, '2023-03-26', 5 , 'maintenance');

 