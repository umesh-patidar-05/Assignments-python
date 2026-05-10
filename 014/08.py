'''
ATM Note Counter

A bank ATM dispenses ₹100 notes.

Write a program to:

- Read withdrawal amount
- Count how many ₹100 notes needed using loop

Input:
700

Output:
Notes = 7
'''


a=int(input("Enter withdrawal amount: "))
n=0
for i in range(100,a+1,100):
    if i%100==0:
        n=n+1
print("Notes = ",n)