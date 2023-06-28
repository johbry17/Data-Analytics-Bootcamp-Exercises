# lists containing pies and pie_count
pies = ["Pecan", "Apple Crisp", "Bean", "Banoffee", "Black Bun", "Blueberry", "Buko", "Burek", "Tamale", "Steak"]
pie_count = [int(0) for _ in pies]

output = '''
Welcome to the House of Pies! Here are our pies:

---------------------------------------------------------------------
(1) Pecan, (2) Apple Crisp, (3) Bean, (4) Banoffee,  (5) Black Bun, (6) Blueberry, (7) Buko, (8) Burek,  (9) Tamale, (10) Steak
'''

print(output)

# keep asking user which pie they want, storing the result in pie_count
_ = True
pies_ordered = 0
while _ == True:
    pie = int(input("Which pie would you like? ")) - 1
    pie_count[pies.index(pies[pie])] += 1
    print(f"Great! We'll have that {pies[pie]} right out for you")
    pies_ordered += 1
    print("Would you like another pie? ", end="")
    go_on = input()
    if go_on.lower() == "y" or go_on.lower() == "yes":
        _ = True
    else:
        _ = False

# prints out all pies, with updated order totals
print("---------------------")
print("You have ordered the following pies:")
for pie in pies:
    i = int(pies.index(pie))
    print(f"[{pie_count[i]}] {pies[i]}")


print("---------------------")
print(f"You have ordered {pies_ordered} pies")