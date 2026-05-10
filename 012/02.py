'''
Count Numbers Divisible by 7 Between Two Numbers

A company filters lucky coupon numbers divisible by 7.
Write a program using loops to count such numbers in range.

Input:
1 30

Output:
Count = 4
'''


'''
n1= int(input("Enter 1st number = "))
n2= int(input("Enter 2nd number = "))
count=0
if n1<n2:
    for i in range(n1,n2+1):
        if i%7==0:
            count+=1
else:
    for j in range(n1,n2-1,-1):
        if j%7==0:
            count+=1
        
print("Count = ",count)
'''




n1= int(input("Enter 1st number = "))
n2= int(input("Enter 2nd number = "))
count=0
if n1<n2:
    while n1<=n2:
        if n1%7==0:
            count+=1
        n1+=1    
else:
    while n2<=n1:
        if n2%7==0:
            count+=1
        n2+=1    
print("Count = ",count)            