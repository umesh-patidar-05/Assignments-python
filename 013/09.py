'''
Even Odd Difference Prime System

A smart scanner counts even and odd digits.

Write a program to:

- Count even digits
- Count odd digits
- Find difference
- Check whether difference is Prime or Not

Input:
123456

Output:
Even Count = 3
Odd Count = 3
Difference = 0
Not Prime
'''


n=int(input("Enter the number "))
ec=0
oc=0
x=0
j=2
for i in str(n):
    if int(i)%2==0:
        ec=ec+1
    else:
        oc=oc+1          
print("Even Count =",ec)
print("Odd Count",oc)
if ec>oc:
    diff=ec-oc
else:
    diff=oc-ec
print("Difference =",diff)
if diff<=1:
    print("Not Prime")
else:    
    while j<=diff//2:
        if diff%j==0:
            x=1
            break
        j+=1
    if x==0:
        print("Prime")
    else:
        print("Not Prime")
   