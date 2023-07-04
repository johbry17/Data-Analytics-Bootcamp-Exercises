# Collects the user's input for the prompt "What is your name?"
name = input("What is your name? ")

# Collects the user's input for the prompt "How old are you?" and converts the string to an integer.
age = int(input("How old are you? "))

# Collects the user's input for the prompt "Is input truthy?" and converts it to a boolean. Note that non-zero,
#   non-empty objects are truth-y.
truthy = bool(input("Is input truthy? "))
# any input will return a value of true to the boolean

# Creates three print statements that to respond with the output.
print(f"The name is {name}")
print(f"The age is {age}")
print(truthy)