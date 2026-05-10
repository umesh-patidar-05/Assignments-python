'''
Assignment 5: Salary Breakdown

An employee wants to calculate salary per day and per hour.

Input:
Monthly salary = 36000
Working days = 24
Working hours per day = 8

Expected Output:
Salary per day = 1500.0
Salary per hour = 187.5
'''



monthly = int(input("Monthty salary = "))
workingdays = int(input("Working days = "))
workinghours = int(input("Working hours = "))
day = monthly/workingdays
hour = day/workinghours
print("Salary per day = ", day)
print("Salary per hour = ",hour)