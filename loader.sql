LOAD DATA LOCAL INFILE '~/Documents/bootcamp/university-heights-association/BernCo Traffic Accident Data 2010 to 2013.csv'
INTO TABLE uhaRecords
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;