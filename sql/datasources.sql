DROP TABLE IF EXISTS `dataSources`;
CREATE TABLE `dataSources` (
`ID` INT (11),
`FILENAME` TEXT NOT NULL,
  INDEX (ID)
);

INSERT INTO dataSources VALUES(1, "BernCo_Traffic_Accident_Data_2010_to_2013.csv");
INSERT INTO dataSources VALUES(2, "primary-secondary-coal.csv.csv");
INSERT INTO dataSources VALUES(3, "1994-2014.Primary.Secondary.Lead.csv");
INSERT INTO dataSources VALUES(4, "1997-2014.Lead.Coal.Updated.csv");
INSERT INTO dataSources VALUES(5, "Crashes_on_LeadCoal_EastWest.xlsx");
INSERT INTO dataSources VALUES(6, "DR782_Albuquerque-2012-2015.csv");