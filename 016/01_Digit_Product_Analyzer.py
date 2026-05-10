'''
Digit Product Analyzer System

A data analytics company studies patterns in numeric transaction IDs to detect hidden behaviors.

For every entered number, the system analyzes relationships between its digits.

Write a program to:

Find the product of every pair of adjacent digits
Display all the products
Find the sum of all these products
Find the smallest product value
If the sum of products is divisible by the total number of digits, print Stable Number
Otherwise print Unstable Number

Use loops wherever required.

Input:
57294

Output:
Products: 35 14 18 36
Sum = 103
Smallest = 14
Unstable Number
'''


n=int(input("Enter the number: "))
l=len(str(n))
ll=l
p=1
pro=""
small=n
s=0

while l>1:
    d1=n//10**(l-1)%10
    d2=n//10**(l-2)%10
    p=d1*d2
    s=s+p
    if p<small:
        small=p
    else:
        small=small
    pro=pro+str(p)+" "       
    l-=1
print("Products:",pro)      
print("sum =",s)
print("Smallest:",small)
if s%ll==0:
    print("Stable Number")
else:
    print("Unstable Number")