'''
Assignment 8: Data Storage Converter

Write a Python program that:

Accepts value in MB.
Converts into GB.

Input:
MB = 2048

Output:
GB = 2.0
----------------------------------------------------------------------
'''


mb = int(input("Enter values in MB "))
gb = (mb/1024)
gb=round(gb,3)
print("GB = ",gb)