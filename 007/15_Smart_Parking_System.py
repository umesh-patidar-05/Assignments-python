'''
Smart Parking System

A smart parking system charges based on vehicle type and parking duration:

* Bike → ₹10/hour
* Car → ₹20/hour
* Bus → ₹50/hour
  If parking duration exceeds 5 hours, an additional ₹100 penalty is applied.

Write a Python program to calculate total parking fee.

Input:
Enter vehicle type: Car
Enter hours parked: 6

Output:
Total Parking Fee: ₹220
'''




vehicle = input("Enter Vehicle type(Bike/Car/Bus): ").lower()
hours = int(input("Enter hours parked: "))
if hours>5:
    if vehicle=="bike":
        print("Total Parking Fee: ₹",100 + hours*10)
    else:
        if vehicle=="car":
            print("Total Parking Fee: ₹",100 + hours*20)
        else:
            print("Total Parking Fee: ₹",100 + hours*50)
else:
    if vehicle=="bike":
        print("Total Parking Fee: ₹",hours*10)
    else:
        if vehicle=="car":
            print("Total Parking Fee: ₹",hours*20)
        else:
            print("Total Parking Fee: ₹",hours*50)







  
