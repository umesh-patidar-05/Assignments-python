'''
Adjacent Digit Difference Analyzer

A system analyzes differences between consecutive digits in a number.

Write a program to:

Find the difference between every pair of adjacent digits
Display all differences
Count how many differences are even
Find the largest difference
If all differences are same → print Uniform Difference
Else → print Non-Uniform Pattern

Input:
84261

Output:
Differences: 4 2 4 5
Even Differences Count = 3
Max Difference = 5
Non-Uniform Pattern
'''





n=int(input("Enter the number: "))
l=len(str(n))
d=""
df=""
count=0
max=0
while l>1:
    d1=n//10**(l-1)%10
    d2=n//10**(l-2)%10
    
    diff=abs(d1-d2)
    patt=diff
    d=d+str(diff)+" "
    df+=str(diff)
    
    if diff%2==0:
        count+=1
        
    if diff>max:
        max=diff  
    i=diff    
    l-=1
    
print("Differences:",d)
print("Even difference count =",count)
print("Max Difference =",max)
f=0
for i in df:
    if f>0:
        if i==j:
            continue
        else:
            print("Non-Uniform Pattern")
            break
    f=1        
    j=i
else:
    print("Uniform Difference")    