source sql/datasources.sql;
source uhaStructureCreation.sql;

LOAD DATA LOCAL INFILE 'BernCo_Traffic_Accident_Data_2010_to_2013.csv'
INTO TABLE uhaRecords
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
