select * from cycledata;

select * from delaydata;

Select * from locationdata;

select * from equipment_master;

select * from equipment_type_master;

select * from location_master;

select * from location_type_master;

# Crating Master table
-- Creating Equipment Master Table
Create table Equipment_Master As 
select 
`Primary Machine Name`, `Primary Machine Class Name`, 
`Secondary Machine Name`,`Secondary Machine Class Name`,
 `Loading Count`,`iMine Load FCTR Truck`, `PREVIOUSSECONDARYMACHINE`,
 `PREVIOUSSINKDESTINATION`, `End Processor Name`, `iMine Engine Hours`,
 `iMine Operating Hours`, `OPERATINGTIME (CAT)`, `OPERHOURSSECONDS`,
 `Full Travel Duration`, `Empty Travel Duration`,`Idle Duration`, 
 `Loading Duration`, `WAITFORDUMPDURATION`, `Dumping Duration`,
 `Payload (kg)`, `Estimated Fuel Used`,	`Fuel Used`, `Loading Efficiency`,
 `OPERATINGBURNRATE`, `TMPH`,`Job Code Name`
 from cycledata ;
 
 -- Creating Equipment_Type_Master Table	
Create table Equipment_Type_Master As 
select 		
`Cycle Type`, `Primary Machine Category Name`, `Secondary Machine Category Name`,
`TC`,`AT Available Time (iMine)`,`Available SMU Time`,`Cycle Duration`,
`Cycle SMU Duration`, `Down Time`, `Completed Cycle Count`,
`iMine Availability`,`iMine Utilisation`,`Job Type`
from cycledata ;

-- Creating Location_Master Table	
Create table Location_Master As 
select 	
`Source Location Name`,`Destination Location Name`,`Queuing at Sink Duration`,
`Queuing at Source Duration`,`Queuing Duration`,`Cycle End Timestamp (GMT8)`,
`Cycle Start Timestamp (GMT8)`, `Source Loading Start Timestamp (GMT8)`,
`Source Loading End Timestamp (GMT8)`
from cycledata ;

-- Creating Location_Type_Master Table
Create table Location_Type_Master As 
select 
`Source Location Description`,`Destination Location Description`,
`Empty EFH Distance`,`Empty Slope Distance`,`Queuing at Sink Duration`,
`Queuing at Source Duration`,`Queuing Duration`,`Source Location is Active Flag`,
`Source Location is Source Flag`, `Destination Location is Active Flag`,
`Destination Location is Source Flag`
from cycledata ;
 
 ## Creating Stored Procedures
-- For Cycle Data 
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Cycle_Data`()
BEGIN
Select
`Primary Machine Name`, `Primary Machine Class Name`,
`Secondary Machine Name`,
`Secondary Machine Class Name`, 
`Loading Count`,`Cycle Type`, `TC`, 
`Cycle Duration`,`Cycle SMU Duration`,`iMine Engine Hours`, 
`iMine Operating Hours`, `OPERATINGTIME (CAT)`, `OPERHOURSSECONDS`, 
`Cycle Start Timestamp (GMT8)`,`Cycle End Timestamp (GMT8)`,
`Payload (kg)`,`Empty EFH Distance`,`Completed Cycle Count`,
`iMine Availability`,`iMine Utilisation`
from cycledata;
END$$
DELIMITER ;


-- For Movement Data
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Movement_data`()
BEGIN
select 
`Source Location Name`,`Destination Location Name`,`Source Loading Start Timestamp (GMT8)`,
`Source Loading End Timestamp (GMT8)`,`Source Location Description`,
`Destination Location Description`,`Empty EFH Distance`,`Empty Slope Distance`,
`Source Location is Active Flag`,`Source Location is Source Flag`, 
`Destination Location is Active Flag`,`Destination Location is Source Flag`,
`Full Travel Duration`, `Empty Travel Duration`,`Idle Duration`, 
`Loading Duration`, `WAITFORDUMPDURATION`, `Dumping Duration`
from cycledata;		
END$$
DELIMITER ;


-- For Delay Data
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Delay_Data`()
BEGIN
Select 
`Down Time`,
`Queuing at Source Duration`,`Queuing Duration`,`Queuing at Sink Duration`,
`Queuing at Source Duration`,`Queuing Duration`,
`Empty Travel Duration`,`Idle Duration`, `Loading Duration`, `WAITFORDUMPDURATION`,
`Dumping Duration`
from cycledata;
END$$
DELIMITER ;

# To do OEE Calcuation 

Create table OEE As 
select 
`AT Available Time (iMine)`,`Down Time`,`iMine Operating Hours`,`OPERATINGTIME (CAT)`,
`Idle Duration`, 
(((`AT Available Time (iMine)`-`Down Time`)/`AT Available Time (iMine)`)*100) as Availability,
(((`OPERATINGTIME (CAT)`-`Idle Duration`)/`OPERATINGTIME (CAT)`)*100) as Performance, 
(((`iMine Operating Hours`-`Down Time`)/(`Down Time`+ `Idle Duration`))*100) as Quailty
 from cycledata;

-- For OEE Calculation 
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `OEE_Calculations`()
BEGIN
select 
`AT Available Time (iMine)`,
  `Down Time`,
  `iMine Operating Hours`,
  `OPERATINGTIME (CAT)`,
  `Idle Duration`,
  `Availability`,
  `Performance`,
  `Quailty` ,
  (`Availability`*  `Performance`*  `Quailty` ) as OEE
from oee ;
END$$
DELIMITER ;
