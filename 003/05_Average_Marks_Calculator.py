'''
Assignment 5: Average Marks Calculator

Write a Python program that:

Accepts marks of 3 subjects.
Calculates average.

Input:
Marks = 80, 90, 70

Output:
Average = 80.0
------------------------------------------------------------
'''

ms1,ms2,ms3 = map(int,input("Enter marks of 3 subjects").split())
average = (ms1 + ms2 + ms3)/3
print("Average = ",average)
