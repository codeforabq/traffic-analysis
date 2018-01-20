#!/usr/bin/python

import pandas as pd
import pprint
import sys
import csv
import calendar

results = [] 

inHeaders = True
if __name__ == "__main__": 
    with open("../datasets/dataset2/primary-secondary-coal.csv") as inputFile:
        reader = csv.reader(inputFile, delimiter=',', quotechar='"')
        inHeaders = True 
        results = [] 
        headers = reader.next()
    
        for row in reader:
            if inHeaders:
                inHeaders = False
            else:
                currentRowDict = {} 
                count = 0 
                for header in headers:
                    currentRowDict[header] = row[count]
                    currentRowDict['SOURCEID'] = 2
                    count = count + 1
                year = currentRowDict['CRASH DATE'].split('-')[0]
                month = currentRowDict['CRASH DATE'].split('-')[1]
                day = currentRowDict['CRASH DATE'].split('-')[2]
                currentRowDict['DATE'] = month + "/" + day + "/" + year
                currentRowDict['YEAR']= year # This makes me feel like reformatting the first dataset into a non-retarded format. Why am I transforming everything into a dumbasss format, for consistency?
                currentRowDict['MONTH'] = calendar.month_name[int(month)]
               
                results.append(currentRowDict)


# Let's start mapping results to what it needs to be in uha.uhaRecords
# SOURCEID - 2
# OBJECTID / REPORT - not sure, OBJECTID looks unique, REPORT is not. 
# 


# Remove "CRASH REPORT NUMBER" since I don't care, and it doesn't exactly map to OBJECTID / REPORTID 
# AGENCY is a one-to-one mapping
# CRASH DATE = YYYY-MM-DD, and needs to map to YYYY->DATE, MM->MONTH, DATE (M/D/YYYY)

pp = pprint.PrettyPrinter(indent=4)
pp.pprint(results)
