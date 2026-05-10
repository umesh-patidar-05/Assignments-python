'''
Electricity Billing System
An electricity board calculates bills based on units consumed:
Up to 100 units → ₹5 per unit
101–300 units → ₹7 per unit
Above 300 units → ₹10 per unit
Write a program to compute total bill using inline if.
'''





unit=int(input("Enter Units: "))
bill= unit*5 if unit<=100 else unit*7 if unit<=300 else unit*10
print("Bil =",bill)