a = float(input("Enter the year: "))

if a % 4 == 0 and a % 100 != 0:
    print("It is a leap year")

elif a % 400 == 0 and a % 100 == 0:
    print('It is a leap year')

else:
    print("It is not a leap year")