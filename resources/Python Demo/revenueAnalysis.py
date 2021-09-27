#import modules
import csv
import os

# source to read revenue data file 
fileLoad = os.path.join("revenueData.csv")

# file to hold the output of the revenue analysis
outputFile = os.path.join("revenueAnalysis.txt")

# variables
totalMonths = 0     # initialize the total months to 0
totalRevenue = 0    # initialize the total revenue to 0
monthlyChanges = [] # initialize the list of monthly net changes
months = []         # initialize the list of months

# read the csv file 
with open(fileLoad) as revenueData:
    #create a csv reader object
    csvreader = csv.reader(revenueData)

    # read the header row
    header = next(csvreader)
    # move to the first row
    firstRow = next(csvreader)

    # increment the count of the total months
    totalMonths += 1 # same as totalMonths = totalMonths + 1

    # add on to the total amount of revenue
        # revenue is in index 1
    totalRevenue += float(firstRow[1])

    # establish the previous revenue
        # revenue is in index 1
    previousRevenue = float(firstRow[1])

    for row in csvreader:
        # increment the count of the total months
        totalMonths += 1 # same as totalMonths = totalMonths + 1

        # add on to the total amount of revenue
            # revenue is in index 1
        totalRevenue += float(row[1])

        # calculate the net change
        netChange = float(row[1]) - previousRevenue
        # add on to the list of monthly changes
        monthlyChanges.append(netChange)

        # add the first month that a change occurred
            # month is in index 0
        months.append(row[0])

        # update the previous revenue
        previousRevenue = float(row[1])

# Calculate the average net change per month
averageChangePerMonth = sum(monthlyChanges) / len(monthlyChanges)

greatestIncrease = [months[0], monthlyChanges[0]] # holds the month and the value of the greatest increase  
greatestDecrease = [months[0], monthlyChanges[0]] # holds the month and the value of the greatest decrease

# use loop to calculate the index of the greatest and least monthly change
for m in range(len(monthlyChanges)):
    # calculate the greatest increase and decrease
    if(monthlyChanges[m] > greatestIncrease[1]):
        # if the value is greater than the greatest increase, that value becomes the new greatest increase
        greatestIncrease[1] = monthlyChanges[m]
        # update the month 
        greatestIncrease[0] = months[m]

    if(monthlyChanges[m] < greatestDecrease[1]):
        # if the value is less than the greatest decrease, that value becomes the new greatest decrease
        greatestDecrease[1] = monthlyChanges[m]
        # update the month 
        greatestDecrease[0] = months[m]

# start generating the output
output = (
    f"\nRevenue Data Analysis \n"
    f"----------------------------\n"
    f"\tTotal Months = {totalMonths} \n"
    f"\tTotal Revenue = ${totalRevenue:,.2f} \n"
    f"\tAverage Change Per Month = ${averageChangePerMonth:,.2f} \n"
    f"\tGreatest Increase = {greatestIncrease[0]} Amount ${greatestIncrease[1]:,.2f} \n"
    f"\tGreatest Decrease = {greatestDecrease[0]} Amount ${greatestDecrease[1]:,.2f} \n"
    )

# print the output to the console / terminal
print(output)

# export the output to the output text file
with open(outputFile, "w") as textFile:
    textFile.write(output)