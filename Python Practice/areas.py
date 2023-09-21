def triangle_area(base, height):
    return 1/2 * base * height

def rectangle_area(length, breadth):
    return length * breadth

def square_area(side):
    return side * side

def main():

    print ("Select a shape:")
    print("1. Triangle")
    print("2. Rectangle")
    print("3. Square")

    a = int(input("Enter your choice (1/2/3): "))

    if a == 1:
        base = float(input("Enter the base: "))
        height = float(input("Enter the height: "))
        area = triangle_area(base, height)
        print("The area is", area)
    
    elif a == 2:
        length = float(input("Enter the value of lenght: "))
        breadth = float(input("Enter the value of breadth: "))
        area = rectangle_area(length, breadth)
        print("The area of rectangle is", area)
    
    elif a ==3:
        side = float(input("Enter the side length of the square: "))
        area = square_area(side)
        print("The area of the square is:", area)

    else:
        print("Invalid choice. Please select 1, 2, or 3.")


if __name__ == "__main__":
    main()