DROP TABLE IF EXISTS `dataSources`;
CREATE TABLE `dataSources` (
`ID` INT (11),
`FILENAME` TEXT NOT NULL,
  INDEX (ID)
);

INSERT INTO dataSources VALUES(1, "BernCo_Traffic_Accident_Data_2010_to_2013.csv");