a = float(input('Enter the first number: '))
b = float(input('Enter the second number: '))
c = float(input('Enter the third number: '))

if a > b and a > c:
    print(a, "is the greatest among all!")

elif b > a and b > c:
    print(b, 'is the greatest among all')

else:
    print(c, 'is the greatest among all')