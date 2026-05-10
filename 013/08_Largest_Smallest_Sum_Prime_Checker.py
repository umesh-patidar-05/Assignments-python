'''
Largest Smallest Sum Prime Checker

A number analyzer finds largest and smallest digit.

Write a program to:

- Find largest digit
- Find smallest digit
- Find sum of both
- Check whether sum is Prime or Not

Input:
57294

Output:
Largest = 9
Smallest = 2
Sum = 11
Prime
'''


n=int(input("Enter the number"))
lar=0
sma=9
x=0
j=2
for i in str(n):
    if int(i)>lar:
        lar=int(i)
    if int(i)<sma:
        sma=int(i)        
print("Largest =",lar)
print("Smallest =",sma)        
sum=lar + sma
print("Sum =",sum)
while j<=sum//2:
    if sum%j==0:
        x=1
        break
    j+=1
if x==0:
    print("Prime")
else:
    print("Not Prime")
   