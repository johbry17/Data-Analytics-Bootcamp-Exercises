# Print Hello User!
print("Hello, User!")

# Take in User Input
name = input("What is your name? ")

# Respond Back with User Input
print(f"Hello, {name}")

# Take in the User Favorite Number
number = int(input(f"What's your favorite number? "))

my_number = 6

# Respond Back with a statement based on your favorite number
if number < my_number:
    print("Your favorite number is lower than mine")
elif number > my_number:
    print("Your favorite number is higher than mine")
else:
    print("Our favorite numbers are the same")