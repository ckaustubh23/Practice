import cmath

a = float(input("Enter coefficient a: "))
b = float(input("Enter coefficient b: "))
c = float(input("Enter coefficient c: "))

discriminant = b**2 - 4*a*c

root1 = (-b + cmath.sqrt(discriminant)) / (2*a)
root2 = (-b - cmath.sqrt(discriminant)) / (2*a)

print("The roots are", root1, "and", root2)