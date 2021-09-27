# import the csv and os modules
import csv
import os

# load the file to read survey data
inputFile = os.path.join("FlavorSurveyData.csv")

# output file location for the survey analysis
outputFile = os.path.join("FlavorSurveyAnalysis.txt")

# variables
totalVotes = 0  # variable that holds the total number of votes
flavors = []    # list that holds the flavors in the survey
flavorVotes = {} # dictionary that will hold the votes each flavor receives
winningCount = 0 # variable hold the winning count
winningFlavor = "" # variable to hold the winning flavor

# read the csv file
with open(inputFile) as surveyData:
    # create the csv reader
    csvreader = csv.reader(surveyData)

    # read the header
    header = next(csvreader)

    # rows will be lists
        # index 0 is the user id
        # index 1 is the user's choice of flavor

    # for each row
    for row in csvreader:
        # add on to the total votes
        totalVotes += 1 # same as totalVotes = totalVotes + 1

        # check to see if the flavor is in the list of flavors
        if row[1] not in flavors:
            # if the flavor is not in the list, add the flavor to the list of flavors
            flavors.append(row[1])

            # add the value to the dictionary as well
            # { "key": value }
            # start the count at 1 for the votes
            flavorVotes[row[1]] = 1

        else:
            # the flavor is in the list of flavors
            # add a vote to the flavor's count
            flavorVotes[row[1]] += 1

#print(flavorVotes)
voteOutput = ""

for flavor in flavorVotes:
    # get the vote count and the percentage of the votes
    votes = flavorVotes.get(flavor)
    votePct = (float(votes) / float(totalVotes)) * 100.00
    voteOutput += f"\t{flavor}: {votePct:.2f}% \n"

    # compare the votes to the winning count
    if votes > winningCount:
        # update the votes to be the new winning count
        winningCount = votes
        # update the winning flavor
        winningFlavor = flavor

winningFlavorOutput = f"\t\tWinner: {winningFlavor}\n-----------------------------------"


# create an output variable to hold the output
output = (
    f"\n\nSurvey Results\n"
    f"-----------------------------------\n"
    f"\tTotal Votes: {totalVotes:,} \n"
    f"-----------------------------------\n"
    f"{voteOutput}"
    f"-----------------------------------\n"
    f"{winningFlavorOutput}"
)

# displays the output to the console / terminal
print(output)

# print the results and export the data to a text file
with open(outputFile, "w") as textFile:
    # write the output to the text file
    textFile.write(output)