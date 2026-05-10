'''
Digit Gap Analyzer

A system analyzes the gap between consecutive digits.

Write a program to:

Traverse digits from left to right
Find the absolute difference between current digit and next digit
Display each difference
Count how many differences are greater than 2
Find the maximum difference
If all differences ≤ 2 → print Smooth Number
Else → print Irregular Pattern

Input:
86421

Output:
Differences: 2 2 2 1
Count (>2) = 0
Max Difference = 2
Smooth Number
'''



n=int(input("Enter the number: "))
l=len(str(n))
d=""
count=0
max=0
while l>1:
    cd=n//10**(l-1)%10
    nd=n//10**(l-2)%10
    diff=abs(cd-nd)
    d+=str(diff)+" "
    if diff>2:
        count+=1
    if diff>max:
        max=diff    
    l-=1
print("Differences: ",d) 
print("Count (>2) =",count)
print("Max Difference =",max) 
if count==0:
    print("Smooth Number")
else:
    print("Irregular Pattern")    