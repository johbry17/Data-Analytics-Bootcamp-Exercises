# Take input of you and your neighbor
your_name = input("What's your name? ")
neighbor_name = input("What's your neighbor's name? ")

# Take how long each of you have been coding
i = int(input(f"How many months has {your_name} been coding? "))
j = int(input(f"How many months has {neighbor_name} been coding? "))

# Add total month
total = i + j

# Print results
print(f"Y'all have coded for {total} months")