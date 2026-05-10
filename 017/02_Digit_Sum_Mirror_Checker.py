'''
Digit Sum Mirror Checker

A validation system checks symmetry in digit sums.

Write a program to:

Split number into two halves
Find sum of first half digits
Find sum of second half digits
Display both sums
If both sums are equal → print Balanced Number
Else → print Unbalanced Number

Input:
123321

Output:
First Half Sum = 6
Second Half Sum = 6
Balanced Number
'''







n=int(input("Enter The number: "))
l=len(str(n))
count=1
sumf=0
sums=0
for i in str(n):
    if count<=l//2:
        sumf+=int(i)
    else:
        sums+=int(i)
    count+=1    
print("First Half Sum = ",sumf)        
print("Second Half Sum = ",sums)
if sumf==sums:
    print("Balanced Number")
else:
    print("Unbalanced Number")