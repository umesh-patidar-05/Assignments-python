'''
Triple Operation Prime Verification System

A cybersecurity company generates a security score from entered access code.

Write a program to:

- Find sum of digits of the number
- Reverse the number
- Find absolute difference between original number and reverse
- Add digit sum and difference
- Check whether final result is Prime or Not Prime

Input:
4215

Output:
Sum of Digits = 12
Reverse = 5124
Difference = 909
Final Result = 921
Not Prime
'''


n=int(input("Enter the number : "))
s=0
for i in str(n):
    s=s+int(i)
print("Sum of Digits =",s)

rev=""
for j in str(n):
    rev=j+rev
rev=int(rev)
print("Reverse =",rev) 
   
if n>rev:
    diff=n-rev
else:
    diff=rev-n
print("Difference =",diff)

final=s+diff
print("Final Result =",final)

if n<=1:
    print("Not prime")
else:
    for k in range(2,n//2):
        if n%k==0:
            print("Not Prime")
            break
    else:
        print("Prime")        

