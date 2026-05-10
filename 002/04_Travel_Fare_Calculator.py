'''
========================================
Assignment 4: Travel Fare Calculator
========================================

A cab company charges ₹15 per kilometer.

Write a Python program that:
- Accepts the number of kilometers traveled.
- Calculates the total fare.
- Displays the result.

Example:
Distance = 20 km
Total fare = ₹300
'''


kilometers = int(input("Enter the number of kilometers traveled."))
total = kilometers*15
print("Distance = ",kilometers)
print("Total fare = ",total)
