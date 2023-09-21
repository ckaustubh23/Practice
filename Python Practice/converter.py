def kilo_to_miles(kilo):
    return kilo * 0.62137119

def celcius_to_farhenhite(celcius):
    return celcius * 9/5 + 32 

def kg_to_pound(kg):
    return kg / 0.45359237

def main():
    print("Select any one -->")
    print("1. Distance")
    print("2. Temperature")
    print("3. Weight")

    a = int(input("Enter your choice (1/2/3): "))

    if a == 1:
        kilo = float(input("Enter the distance in kilometer: "))
        miles = kilo_to_miles(kilo)
        print("The distance in miles will be", miles)

    elif a == 2:
        celcius = float(input("Enter the temperature in celcius: "))
        farhenheit = celcius_to_farhenhite(celcius)
        print("The temperature in farhenheit will be", farhenheit)

    elif a == 3:
        kg = float(input("Enter the weight in kg: "))
        pound = kg_to_pound(kg)
        print("The weight in pound will be",pound)

    else:
        print("Enter a choice between 1/2/3!!")

if __name__=="__main__":
    main ()
