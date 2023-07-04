import os
import csv


def main():
    # Path to collect data from the Resources folder
    graduation_csv = os.path.join("..", "Resources", "graduation_data.csv")

    # Read in the CSV file
    with open(graduation_csv, "r") as csvfile:
        # Split the data on commas
        csvreader = csv.reader(csvfile, delimiter=",")

        header = next(csvreader)

        # Prompt the user for what state they would like to search for
        state_to_check = input("What state do you want to look for? ")

        # Loop through the data
        for row in csvreader:
            # If the state's name in a row is equal to that which the user input, run the 'print_percentages()' function
            if state_to_check == row[0]:
                print_percentages(row)


# Define the function and have it accept the 'state_data' as its sole parameter
def print_percentages(state_data):
    # Find the total students, referencing the adjusted cohort for public, private nonprofit, and private for-profit
    total_students = int(state_data[1]) + int(state_data[3]) + int(state_data[5])

    # Find the total graduates, referencing the completers for public, private nonprofit, and private for-profit
    total_graduates = int(state_data[2]) + int(state_data[4]) + int(state_data[6])

    # Find the public school graduation rate
    public_grad_rate = float(int(state_data[2]) / int(state_data[1]) * 100)
    # format for percentage?

    # Remember that some states do not have nonprofit or forprofit private schools
    # Find the non-profit school graduation rate
    if int(state_data[3]) == 0:
        priv_nonprofit = 0
    else:
        priv_nonprofit = float(int(state_data[4]) / int(state_data[3]) * 100)

    # Find the for-profit school graduation rate
    if int(state_data[5]) == 0:
        priv_forprofit = 0
    else:
        priv_forprofit = float(int(state_data[6]) / int(state_data[5]) * 100)

    # Calculate the overall graduation rate
    overall_grad_rate = total_graduates / total_students * 100

    # Print out the state's name and its graduation rates
    print(
        f"""
          {state_data[0]} has a public shool graduation rate of {(public_grad_rate):.2f}%
          {state_data[0]} has a private nonprofit shool graduation rate of {(priv_nonprofit):.2f}%
          {state_data[0]} has a private forprofit shool graduation rate of {(priv_forprofit):.2f}%
          """
    )


main()
