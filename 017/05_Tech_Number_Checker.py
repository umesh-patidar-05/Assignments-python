'''
Tech Number Checker

A number is called a Tech Number if:

It has even number of digits
Split it into two equal halves
Add both halves
Square the sum
If result equals original number → Tech Number

Write a program to:

Count digits
If digits are even, split the number
Find sum of both halves
Square the sum
Display intermediate values
Check and print result

Input:
2025

Output:
First Half = 20
Second Half = 25
Sum = 45
Square = 2025
Tech Number
'''



n=int(input("Enter the number: "))
l=len(str(n))
ls=1
f=""
s=""
if l%2==0:
    for i in str(n):
        if ls<=l//2:
            f+=i
        else:
            s+=i 
        ls+=1
    print("First Half =",f)
    print("second Half =",s)    
    sum=int(f)+int(s)
    print("Sum =",sum)
    square=sum*sum    
    print("Square =",square)
    if square==n:
        print("Tech Number")
    else:
        print("Non Tech Number") 
else:
    print("Digits are not even")    