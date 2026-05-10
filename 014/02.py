'''
Multi Stage Prime Lock System

A smart locker opens only if final derived number is prime.

Write a program to:

- Find sum of digits
- Find product of digits
- Find difference between product and sum
- Count digits in difference
- Add digit count to difference
- Check whether final result is Prime or Not

Input:
234

Output:
Sum = 9
Product = 24
Difference = 15
Digits = 2
Final Result = 17
Prime
'''


n=int(input("Enter the number "))

s=0
p=1
for i in str(n):
    s=s+int(i)
    p=p*int(i)
print("Sum =",s)
print("Product =",p)

diff=p-s
if diff>0:
    print("Difference = ",diff)
else:
    print("Difference = ",abs(diff))

count=0
for j in str(diff):
    count+=1
print("Digits = ",count)

final=count+diff
print("Final result = ",final)

if final<=1:
    print("Not prime")
else:
    for k in range(2,final//2):
        if final%k==0:
            print("Not Prime")
            break
    else:
        print("Prime")   