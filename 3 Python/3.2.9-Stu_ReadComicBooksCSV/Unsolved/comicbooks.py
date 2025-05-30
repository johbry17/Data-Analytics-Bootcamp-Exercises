# Modules
import os
import csv
import sys

# Prompt user for title lookup
title = input("What title are you looking for? ")

# Set path for file
csvpath = os.path.join("..", "Resources", "comic_books.csv")

# Set variable to check if we found the video
found = False

# Open the CSV using the UTF-8 encoding
with open(csvpath, encoding='UTF-8') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")
        # Loop through looking for the video
    for row in csvreader:
        if title in row[0]:
            print(f"{row[0]} was published by {row[8]} in {row[9]}")
            # Set variable to confirm we have found the video
            found = True
            sys.exit()
    # If the book is never found, alert the user
    if found is False:
        print("Title not found")
