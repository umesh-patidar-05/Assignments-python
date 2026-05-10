'''
Digit Neighbor Sum Analyzer

A system analyzes the relationship between a digit and its immediate neighbors.

Write a program to:

Traverse digits from left to right (ignore first and last digit)
For each digit, calculate sum of its adjacent digits
Check if current digit is equal to the sum of its neighbors
Display such digits
Count how many such digits exist
If none found → print No Matching Digit
Else → print Neighbor Sum Pattern Found

Input:
121314

Output:
Matching Digits: 2 3
Count = 2
Neighbor Sum Pattern Found
'''

n=int(input("Enter the number: "))
l=len(str(n))
count=0
dig=""
while l>2:
    n1=n//10**(l-1)%10
    d=n//10**(l-2)%10
    n2=n//10**(l-3)%10
    sum=n1+n2
    if d==sum:
        dig+= str(d)+" "
        count+=1    
    l-=1
    
if count==0:
    print("No Matching Digit")
else:
    print("Matching Digits: ",dig)
    print("Count = ",count)
    print("Neighbor Sum Pattern Found")    
    