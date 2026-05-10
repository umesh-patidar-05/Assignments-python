'''
Assignment 4: Area of Rectangle

Write a Python program that:

Accepts length and breadth.
Calculates area.

Input:
Length = 10
Breadth = 5

Output:
Area = 50
------------------------------------------------
'''


length,breadth = map(int,input("Enter length and breadth").split())
area = length*breadth
print("Area = ",area)
