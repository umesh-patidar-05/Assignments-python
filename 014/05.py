'''
Number Stability Analyzer

A science lab studies whether digits are in increasing order.

Write a program using for-else loop:

- If every next digit is greater than previous print Stable Number
- Else Unstable Number

Input:
12359

Output:
Stable Number
'''



n=input("number = ")
i1=str(0)
for i in n:
    if i>i1:
        i1=i
    else:
        print("Unstable")
        break
else:
    print("Stable number")
