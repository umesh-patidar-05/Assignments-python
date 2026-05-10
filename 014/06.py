'''
Next Prime Cabin Number Generator

A luxury hotel gives only prime numbered cabins to VIP guests.

Manager enters the last allotted cabin number.
System must find the next available prime cabin number.

Write a program using loops.

Input:
24

Output:
Next Prime Cabin = 29
'''


n=int(input("Enter a number: "))

while True:
    n=n+1
    if n<=1:
        continue
    else:
        i=2
        x=0
        while i<=n//2:
            if n%i==0:
                x=1
            i=i+1
        if x==0:
            break
print("next prime cabin = ",n)
