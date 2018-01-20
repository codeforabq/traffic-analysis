#/bin/bash

ROOTPW="rateme12!" # put your password here 

mysql -u root -p$ROOTPW "uha" -e "source uhaRecordsStructure.sql"; 
mysql -u root -p$ROOTPW "uha" -e "source datasources.sql"; 
mysql -u root -p$ROOTPW "uha" -e "source fromUNMLoader.sql"; 


