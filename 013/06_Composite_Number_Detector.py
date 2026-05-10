'''
Composite Number Detector – Risk Version

A product company marks composite numbers as risky.

User enters a number.
System must:

- Check Composite or Not
- Count total factors
- Print smallest factor other than 1

Input:
12

Output:
Composite Number
Factors Count = 6
Smallest Factor = 2
'''


n=int(input("Enter the number "))
if n<=1:
    print("Not composite")
else:
    x=0
    i=2    
    while i<n:
        if n%i==0:
            x=1
            small=i
            break
        i+=1
    if x==1:
        print("Composite Number") 
        j=1
        count=0
        while j<=n:
            if n%j==0:
                count+=1       
            j+=1
        print("Factors count =",count)   
    print("Smallest Factor =",small)        
   
    