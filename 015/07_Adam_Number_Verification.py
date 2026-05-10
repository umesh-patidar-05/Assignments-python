'''
Adam Number Verification System – Question

A high-security digital system is designed to validate special mirrored numbers known as Adam Numbers before granting access to sensitive data.

When a user enters a numeric code, the system performs a dual verification process:

* It calculates the square of the entered number.
* It reverses the number and calculates the square of the reversed value.
* Finally, it checks whether both results are mirror images (reverses) of each other.

A number is called an Adam Number if:
The square of the number and the square of its reverse are reverses of each other.

Task:
Write a Python program to check whether a given number is an Adam Number or not.

Examples:

Input:
12
Output:
Adam Number

Input:
13
Output:
Not an Adam Number

Input:
11
Output:
Adam Number

Example:
12 → 12² = 144, reverse(12) = 21 → 21² = 441 → reverse of 144
'''



n=int(input("Enter the number: "))
sqn=n*n
revn=0
while n>0:
    remn=n%10
    revn=revn*10+remn
    n=n//10
sqr=revn*revn

revsr=0
while sqr>0:
    remr=sqr%10
    revsr=revsr*10+remr
    sqr=sqr//10
    
if sqn==revsr:
    print("Adam Number")
else:
    print("Not an Adam Number")
