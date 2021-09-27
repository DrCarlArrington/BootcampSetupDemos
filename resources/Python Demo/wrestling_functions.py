import os
import csv

# Path to collect data from the Resources folder
wrestling_csv = os.path.join("..", "Resources", "WWE-Data-2016.csv")

# Define the function and have it accept the 'wrestler_data' as its sole parameter
def print_percentages(wrestler_data):
    # Wrestler name is at index 0
    # Wins are at index 1
    # Losses are at index 2
    # Draws are at index 3

    name = wrestler_data[0]
    wins = int(wrestler_data[1])
    losses = int(wrestler_data[2])
    draws = int(wrestler_data[3])

    # Find the total number of matches wrestled = wins + losses + draws
    totalMatches = wins + losses + draws

    # Find the percentage of matches won
    winPct = (wins / totalMatches) * 100

    # Find the percentage of matches lost
    lossPct = (losses / totalMatches) * 100

    # Find the percentage of matches drawn
    drawPct = (draws / totalMatches) * 100

    # Print out the wrestler's name and their percentage stats
    print(f"\n{name}'s Stats: ")
    print("-----------------------------")
    print(f"\t Win Percent: {winPct:.1f}%")
    print(f"\t Loss Percent: {lossPct:.1f}%")
    print(f"\t Draw Percent: {drawPct:.1f}%")

    # print the wrestler's status
    if lossPct > 50:
        print(f"{name} is a Jobber")
    else:
        print(f"{name} is a Superstar")

# Read in the CSV file
with open(wrestling_csv, 'r') as csvfile:

    # Split the data on commas
    csvreader = csv.reader(csvfile, delimiter=',')

    # Prompt the user for what wrestler they would like to search for
    name_to_check = input("What wrestler do you want to look for? ")

    # Loop through the data
    for row in csvreader:

        # If the wrestler's name in a row is equal to that which the user input, run the 'print_percentages()' function
        if(name_to_check == row[0]):
            print_percentages(row)
