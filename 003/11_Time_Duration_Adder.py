'''
Assignment 11: Time Duration Adder

Write a Python program that:

Accepts hours, minutes, seconds.
Converts into total seconds.

Input:
Hours = 1
Minutes = 2
Seconds = 30

Output:
Total Seconds = 3750
'''



hours = int(input("Enter hours = "))
minutes = int(input("Enter minutes = "))
seconds = int(input("Enter seconds = "))
totalSeconds = hours*60*60 + minutes*60 + seconds
print("Total Seconds = ",totalSeconds)