def main():

    variable1 = int(input("Enter variable 1: "))
    variable2 = int(input("Enter variable 2: "))

    print("Before swapping, Variable_1 is", variable1, "and Variable_2 is", variable2)

    temporary = variable1
    variable1 = variable2
    variable2 = temporary

    print("After swapping, Variable_1 is", variable1, "and Variable_2 is", variable2)

if __name__=="__main__":
    main()