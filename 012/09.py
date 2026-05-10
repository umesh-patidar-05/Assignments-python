'''
Step Difference Number Analyzer

A mathematics research center studies hidden patterns inside numbers.
For every entered number, the system compares adjacent digits step by step.

Write a program to:

Find the absolute difference between every pair of adjacent digits
Display all step differences
Find the sum of all step differences
Find the largest step difference
If the sum of step differences is divisible by the number of digits, print Balanced Number
Otherwise print Unbalanced Number

Use loops wherever required.

Input:
57294
Output:
Step Differences: 2 5 7 5
Sum = 19
Largest = 7
Unbalanced Number
'''




'''
n=int(input("Enter the number = "))
l=len(str(n))
sum=0
st=""
big=0
print("Step Differences: ",end="")
while l>1:
    d1=n//10**(l-1)%10
    d2=n//10**(l-2)%10
    if d1>d2:
        diff = d1-d2         
    else:
        diff = d2-d1
    print(diff,end=" ")
    sum = sum+diff
    diff=str(diff)
    st=st+ str(diff)
    l-=1
print("\nsum",sum)
for i in st:
    if int(i)>big:
        big=int(i)
print("large = ",big)
if sum%l==0:
    print("Balanced number")
else:
    print("Unbalanced number")
'''	    
    
    
    
    
n=int(input("Enter the number = "))
nl=len(str(n))
l=0
sum=0
diff=""
big=0
for i in str(n):
    if l>0:
        count=abs(count-int(i))
        if count>big:
            big=count
        sum=sum+count    
        diff=diff+ str(count)+" "
        count=int(i)
    l=1
    count=int(i)    
    
print("Step Difference: ",diff)
print("sum =",sum)
print("large = ",big)
if sum%nl==0:
    print("Balanced number")
else:
    print("Unbalanced number")
    
