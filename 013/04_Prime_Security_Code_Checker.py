'''
Prime Security Code Checker – Advanced

A high-security lab accepts only prime numbered access codes.

When a user enters a number, the software must:

- Check whether number is prime
- If prime, print next immediate prime number
- If not prime, print previous immediate prime number

Write a program using loops only.

Input:
29

Output:
Prime Number
Next Prime = 31
'''


n=int(input("Enter the number "))
if n<=1:
    print("Not Prime number")
else:
    x=0
    i=2
    while i<=n//2:
        if n%i==0:
            x=1
            break
        i+=1
    if x==0:
        print("Prime number")
        while True:
            n=n+1
            if n<=1:
                continue
            else:
                j=2
                y=0
                while j<=n//2:
                    if n%j==0:
                        y=1
                    j=j+1
                if y==0:
                    break
        print("Next prime =",n)
    else:
        print("Not prime number")
        while True:
            n=n-1
            if n<=1:
                continue
            else:
                k=2
                z=0
                while k<=n//2:
                    if n%k==0:
                        z=1
                    k=k+1
                if z==0:
                    break
        print("previoue prime =",n)                