'''
Strong Number Checker

A digital lock opens only for strong numbers.

A strong number is a number whose sum of factorial of digits equals the number.

Example:
145 = 1! + 4! + 5!

Write a program using loops to check strong number.

Input:
145

Output:
Strong Number
'''



'''
n=int(input("Enter the number = "))
sum=0
fact=1
for i in str(n):
    i=int(i)
    while i>0:
        fact=fact*i
        i-=1
    sum=sum+fact
    fact=1
print(sum)
if sum==n:
    print("Strong Number")
else:
    print("Not Strong Number")
'''




n=int(input("Enter the number = "))
nc=n
sum=0
fact=1
while n>0:
    rem=n%10
    for i in range(1,rem+1):
        fact=fact*i
    sum=sum+fact  
    fact=1    
    n=n//10
print(sum)
if sum==nc:
    print("Strong Number")
else:
    print("Not Strong Number")    