'''
Composite Number Detector

A product testing company labels batch numbers as risky if they have more than two factors. Such numbers are known as composite numbers and indicate repeated grouping patterns.

The quality control officer enters a batch number, and the software checks whether it is Composite or Not.

Write a program to check whether a number is Composite or Not.

Input:
12

Output:
Composite Number
'''



n=int(input("Enter the number"))
if n<=1:
    print("Not composite")
else:
    x=0
    i=2    
    while i<n:
        if n%i==0:
            x=1
            break
        i+=1
    if x==1:
        print("Composite Number")    
    else:
        print("Not composite")    