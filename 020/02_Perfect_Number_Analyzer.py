'''
Perfect Number Analyzer

A mathematics research system analyzes special numbers within a given range.
The user enters a starting number and ending number.
The system checks every number in that range and displays all Perfect Numbers using nested loops.

(A Perfect Number is a number whose sum of proper divisors is equal to the number itself.)

Input:
Enter starting number: 1
Enter ending number: 1000
 
Output:
Perfect Numbers are:
6
28
496
'''



'''
n1=int(input("Enter starting number: "))
n2=int(input("Enter ending number: "))

for i in range(n1,n2+1):
    n=i
    s=0
    if n>1:
        j=1
        while j<n: 
            if n%j==0:
               s=s+j
            j+=1
        if s==n:       
           print(n)
'''





n1=int(input("Enter starting number: "))
n2=int(input("Enter ending number: "))

for i in range(n1,n2+1):
    
    s=0
    if i>1:
        j=1
        while j<i: 
            if i%j==0:
               s=s+j
            j+=1
        if s==i:       
           print(i)
