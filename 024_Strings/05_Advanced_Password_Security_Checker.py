'''
Advanced Password Security Checker

A cyber security company wants to verify whether employee passwords are highly secure before giving system access.

Conditions: Password must:

Start with an uppercase letter
End with a digit
Contain at least 2 digits
Contain at least 1 special character (@ # $ % & *)
Must not contain spaces
Length should be between 8 and 15 characters

Input: Enter password: Python@45

Output: Secure Password
'''

password=input("Enter password: ")
l=len(password)
supper=0
ldigit=0
digit=0
space=0
special=0
if l>=8 and l<=15:
    if password[0].isupper():
            supper=1
    if password[l-1].isdigit():
            ldigit=1        
    for ch in password:
        if ch.isdigit():
            digit+=1
        elif ch==" ":
            space=1
        elif ch=="@" or ch=="#" or ch=="$" or ch=="%" or ch=="&" or ch=="*":
            special=1
    if supper==1 and ldigit==1 and digit>=2  and special==1 and space==0:    print("Secure password")
    else:
        print("Password is not secure")
else:
    print("password is less than 8 characters")