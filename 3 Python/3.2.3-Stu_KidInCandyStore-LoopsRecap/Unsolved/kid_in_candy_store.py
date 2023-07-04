# The list of candies to print to the screen
candy_list = [
    "Snickers",
    "Kit Kat",
    "Sour Patch Kids",
    "Juicy Fruit",
    "Swedish Fish",
    "Skittles",
    "Hershey Bar",
    "Starbursts",
    "M&Ms",
]

# The amount of candy the user will be allowed to choose
# allowance = int(input("How mamy candies would you like? "))


# The list used to store all of the candies selected inside of
candy_cart = []

# list of candy chosen
candy_count = [int(0) for _ in candy_list]

# Print out options
counter = int(0)
for candy in candy_list:
    print(f"[{counter}] {candy}")
    counter += 1

# adds candy to candy_cart and candy_count, asks user if they want more candy
_ = bool(True)
while _ == True:
    candy = candy_list[int(input("Which candy? "))]
    candy_cart.append(candy)
    candy_count[candy_list.index(candy)] += 1
    print("Would you like more candy? ", end="")
    add_more = input()
    if add_more.lower() == "y" or add_more.lower() == "yes":
        _ = True
    else:
        _ = False

# prints out entire list of candies, with total purchased
# print("------------------------")
# print("Total candies chosen, per item:")
# for candy in candy_list:
    # i = int(candy_list.index(candy))
    # print(f"[{candy_count[i]}] {candy_list[i]}")

# prints out list of candies purchased
print("------------------------")
print("You bought the following candies:")
for candy in candy_cart:
    print(candy)
