# Create a variable called 'name' that holds a string
name = input("What's the name? ")

# Create a variable called 'country' that holds a string
country = input("What's the country? ")

# Create a variable called 'age' that holds an integer
age = int(input("What's the age? "))

# Create a variable called 'hourly_wage' that holds an integer
hourly_wage = int(input("What's the hourly wage? "))

# Calculate the daily wage for the user
daily_wage = hourly_wage * 8

# Create a variable called 'satisfied' that holds a boolean
satisfied = str(input("Were you satisfied? "))
if satisfied.lower() == 'y' or 'yes':
    satisfied = True
else:
    satisfied = False

# Print out "Hello <name>!"
print(f"The name is {name}")

# Print out what country the user entered
print(f"The country is {country}")

# Print out the user's age
print(f"The age is {age}")

# With an f-string, print out the daily wage that was calculated
print(f"The daily wage is {daily_wage}")

# With an f-string, print out whether the users were satisfied
print(f"The user was satisfied: {satisfied}")
