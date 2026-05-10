'''
Spy Number Detector

A cybersecurity system flags special numeric codes.

A number is called a Spy Number if:
Sum of digits = Product of digits

Write a program to check whether the entered number is Spy Number or Not.

Input:
1124

Output:
Spy Number
'''


n=int(input("Enter the numer: "))
s=0
p=1
for i in str(n):
    s=s+int(i)
    p=p*int(i)

if s==p:
    print("Spy Number")
else:
    print("Not Spy Number")    