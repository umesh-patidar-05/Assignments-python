'''
Trimorphic Number Analyzer

A coding system checks cube-based patterns.

A Trimorphic Number:
Cube of number ends with the same number.

Example:
4³ = 64

Write a program to check Trimorphic Number.

Input:
4

Output:
Trimorphic Number
'''


n=int(input("Enter the number: "))
cube=n**3
nlast=n%10
cubelast=cube%10
if nlast==cubelast:
    print("Trimorphic Number")
else:
    print("Not Trimorphic Number")    

