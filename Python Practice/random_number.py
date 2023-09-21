import random 


print("------Random Number Generator-------")
low = int(input("Enter the lower limit: "))
high = int(input("Enter the upper limit: "))

if low>= high:
    print("Please enter a number greater than lower limit!!")

random_generator = random.randint(low, high)
print("The random number between", low, "and", high, "is", random_generator)