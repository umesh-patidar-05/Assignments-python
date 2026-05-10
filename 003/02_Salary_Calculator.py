'''
Assignment 2: Salary Calculator

Write a Python program that:

Accepts daily wage and number of days.
Calculates total salary.

Input:
Daily wage = 500
Days = 26

Output:
Salary = 13000
----------------------------------------------
'''


wage,days = map(int,input("Enter daily wage and number of days").split())
salary = wage*days
print("salary = ",salary)

