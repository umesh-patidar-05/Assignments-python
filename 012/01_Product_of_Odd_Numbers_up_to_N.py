'''
Product of Odd Numbers up to N

A puzzle game rewards players by multiplying odd numbers up to n.
Write a program using loops to find product of odd numbers.

Input:
5

Output:
15
'''



'''
n=int(input("Enter the number = "))
mul=1
for i in range(1,n+1,2):
    mul= mul*i
print(mul)
'''



n=int(input("Enter the number "))
mul=1
i=1
while i<=n:
    if i%2!=0:
        mul=mul*i
    i+=1
print(mul)    