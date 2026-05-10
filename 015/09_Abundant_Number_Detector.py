'''
Abundant Number Detector

A financial system analyzes surplus numbers.

An Abundant Number:
Sum of proper factors > number

Write a program to check Abundant Number.

Input:
12

Output:
Abundant Number
'''


n=int(input("Enter the number: "))
s=0
for i in range(2,n//2+1):
    if n%i==0:
        s=s+i
if s>n:
    print("Abundant Number")
else:
    print("Not an Abundant Number")        