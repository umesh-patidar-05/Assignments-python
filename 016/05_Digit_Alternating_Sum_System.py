'''
Digit Alternating Sum System

A coding system calculates alternating sum of digits (add, subtract, add...).

Write a program to:

Traverse digits from left to right
Add first digit, subtract second, add third, and so on
Display final alternating sum
If result is positive → print Positive Pattern
Else → print Negative Pattern

Input:
1234

Output:
Result = -2
Negative Pattern

Input:
8642

Output:
Result = 8
Positive Pattern
'''



'''
n=int(input("Enter the number: "))
j=1
reso=0
rese=0
for i in str(n):
    if j%2!=0:
        reso= reso+int(i)
    else:
        rese=rese+int(i)
    j+=1    
resf=reso-rese        
print("Result =",resf)
if resf>0:
    print("Positive pattern")
else:
    print("Negative pattern")
'''




n=int(input("Enter the number: "))    
j=1    
res=0
for i in str(n):
    if j%2!=0:
        res= res+int(i)
    else:
        res=res-int(i)
    j+=1  
print("Result =",res)
if res>0:
    print("Positive pattern")
else:
    print("Negative pattern")    
    