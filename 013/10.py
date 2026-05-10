'''
Zero Count Prime Scanner

A banking system checks account numbers.

Write a program to:

- Count zero digits
- Find sum of digits
- Add zero count and sum
- Multiply by smallest digit
- Check whether final result is Prime or Not

Input:
908406

Output:
Zero Count = 2
Sum = 27
Smallest Digit = 0
Final Result = 0
Not Prime
'''



n=int(input("Enter the number: "))
zc=0
sum=0
sdig=9
for i in str(n):
    if int(i)==0:
        zc+=1
    sum+=int(i)
    if int(i)<sdig:
        sdig=int(i)
print("Zero Count =",zc)
print("Sum =",sum)     
print("smallest Digit =",sdig)
fsum=zc+sum 
Final=fsum*sdig
print("Final Result =",Final)  

if Final<=1:
    print("Not Prime")
else:
    x=0
    i=2
    while i<=Final//2:
        if Final%i==0:
            x=1
            break
        i+=1
    if x==0:
        print("Prime")
    else:
        print("Not prime")    