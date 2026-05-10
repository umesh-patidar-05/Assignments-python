'''
Check All Digits Are Even*
A machine only accepts numbers where every digit is even. If any digit is odd, the number is rejected.
Write a program to *check whether all digits of a number are even using loops*.

Input: 2468
Output: All Even

Input: 2456
Output: Not All Even
'''



'''
n = int(input("enter id "))
l = len(str(n))
count=0
while n>0:
    rem = n%10
    if rem%2==0:
        count=count+1
    n=n//10
if l==count:
    print("All Even")
elif n==0:
    print("All EVEN")
else:
    print("Not All Even")
'''


n=int(input("Enter the number: "))
for i in str(n):
    if int(i)%2==0:
        pass
    else:
        print("Not All Even")
        break
else:
    print("All Even")