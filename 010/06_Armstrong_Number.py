'''
Armstrong Number (3-digit)
In coding competitions, certain numbers are considered unique. A 3-digit Armstrong number is one where the sum of the cubes of its digits equals the number itself.
Write a program to *check whether a number is an Armstrong number using loops*.

Input: 153
Output: Armstrong
'''



'''
n = int(input("enter the 3-digit number "))
temp=n
sum=0
while n>0:
    rem=n%10
    sum = sum+rem**3
    n=n//10
if sum==temp:
   print("armstrong")
else:
    print("Not armstrong")
'''


n=int(input("Enter the 3-digit number"))
sum=0
for i in str(n):
    sum=sum+ int(i)**3
if sum==n:
    print("Armstrong")
else:
    print("Not Armstrong")