DROP TABLE IF EXISTS `uhaRecords`;

CREATE TABLE `uhaRecords`(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SOURCEID` int(11) NOT NULL,
  `OBJECTID` int(11) DEFAULT NULL,
  `REPORT` int(11) DEFAULT NULL,
  `DATE` text,
  `YEAR` int(11) DEFAULT NULL,
  `Day` text,
  `MONTH` text,
  `TIME` text,
  `HOUR` int(11) DEFAULT NULL,
  `AGENCY` text,
  `COUNTY` text,
  `CITY` text,
  `ASTREET` text,
  `BSTREET` text,
  `ROUTE` text,
  `MILE` int(11) DEFAULT NULL,
  `NVEH` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `KILLED` int(11) DEFAULT NULL,
  `CLASSA` int(11) DEFAULT NULL,
  `CLASSB` int(11) DEFAULT NULL,
  `CLASSC` int(11) DEFAULT NULL,
  `UNHURT` int(11) DEFAULT NULL,
  `SEVERITY` text,
  `CLASS` text,
  `ANALYSIS` text,
  `TOPCFACC` text,
  `WEATHER` text,
  `LIGHTING` text,
  `ALCINV` text,
  `DRUGINV` text,
  `PEDINV` text,
  `MCINV` text,
  `PECINV` text,
  `TRKINV` text,
  `HZINV` text,
  `HITRUN` text,
  `SYSTEM` text,
  `ROADREL` text,
  `CHARACTER` text,
  `GRADE` text,
  `DIRECT` text,
  `UTM_X` double DEFAULT NULL,
  `UTM_Y` double DEFAULT NULL,
  `GIS_LAT` double DEFAULT NULL,
  `GIS_LONG` double DEFAULT NULL,
  FOREIGN KEY (SOURCEID) REFERENCES dataSources(ID),
  PRIMARY KEY(ID) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1


