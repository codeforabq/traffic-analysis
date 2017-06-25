#!/usr/bin/python

import pandas as pd
import pprint
import sys
import csv

results = [] 

inHeaders = True
if __name__ == "__main__": 
    with open("../datasets/dataset2/primary-secondary-coal.csv") as inputFile:
        reader = csv.reader(inputFile, delimiter=',', quotechar='"')
        inHeaders = True 
        results = [] 
        for row in reader:
            if inHeaders:
                headers = row
                inHeaders = False
            else:
                currentRowDict = {} 
                count = 0 
                for header in headers:
                    currentRowDict[header] = row[count]
                    count = count + 1
                results.append(currentRowDict)

pp = pprint.PrettyPrinter(indent=4)
pp.pprint(results)
