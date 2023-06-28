# Incorporate the random library
import random

# Print Title
print("Let's Play Rock Paper Scissors!")

# Specify the three options
options = ["r", "p", "s"]

# Computer Selection
computer_choice = random.choice(options)

# User Selection
user_choice = input("Make your Choice: (r)ock, (p)aper, (s)cissors? ")

# Run Conditionals
print(f"The computer chose {computer_choice}")
if user_choice == computer_choice:
    print("It's a tie") 
elif user_choice == 'r':
    if computer_choice == 'p':
        print("Computer Paper covers User Rock")
    else:
        print("User Rock smashes Computer Scissors")
elif user_choice == 'p':
    if computer_choice == 's':
        print("Computer Scissores cuts User Paper")
    else:
        print("User Paper covers Computer Rock")

elif user_choice == "s":
    if computer_choice == "r":
        print("Computer Rock smashes User Scissors")
    else:
        print("User Scissors cuts Computer paper")

