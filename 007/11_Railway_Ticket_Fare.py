'''
Railway Ticket Fare System


A railway system calculates ticket fare based on distance and travel class:

* Distance ≤100 km:
  Sleeper → ₹100, AC → ₹200
* Distance 101–500 km:
  Sleeper → ₹300, AC → ₹600
* Distance >500 km:
  Sleeper → ₹500, AC → ₹1000

Write a Python program to calculate ticket fare.

Input:
Enter distance: 350
Enter class: AC

Output:
Total Fare: ₹600
'''


distance = int(input("Enter distance: "))
tclass = input("Enter class(Sleeper/AC): ").lower()
if distance<=100:
    if tclass=="sleeper":
        print("Total Fare: ₹100")
    else:
        print("Total Fare: ₹200")
else:
    if distance<500:
        if tclass=="sleeper":
            print("Total Fare: ₹300")
        else:
            print("Total Fare: ₹600")
    else:
        if tclass=="sleeper":
            print("Total Fare: ₹500")
        else:
            print("Total Fare: ₹600")



