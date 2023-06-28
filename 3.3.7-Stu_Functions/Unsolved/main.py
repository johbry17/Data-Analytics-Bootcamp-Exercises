# @TODO: Write a function that returns the arithmetic average for a list of numbers
def main():
    print(average([1, 5, 9]))
    print(average(range(11)))

def average(list):
    total = 0
    total = sum([number for number in list])
    #for number in list:
     #   total += number
    return (total / len(list))

# Test your function with the following:
# print(average([1, 5, 9]))
# print(average(range(11)))

main()