import sys

# * Using a `while` loop, ask the user "How many numbers?", and then print out a chain of numbers in increasing order, from 0 to the user-input number.
number = int(input("How many numbers? "))

for _ in range(number + 1):
    print(_)

prev_num = number

# * After the results have been printed, ask the user if they would like to continue.
go_on = input("Would you like to continue? ")

#    * If "y" is entered, keep the chain running by inputting a new number and starting a new count from 0 to the new user-input number.
if go_on == "y":
    number = int(input("How many numbers? "))
    for _ in range(prev_num + 1, number + 1):
        print(_)

#    * If "n" is entered, exit the application.
if go_on != 'y':
    sys.exit("You FAILED!")

## Bonus

# Rather than just displaying numbers starting from 0, have the numbers begin at the end of the previous chain.
# solved, see lines 14-18